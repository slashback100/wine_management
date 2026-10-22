import logging
import hashlib
import hmac

from werkzeug.security import check_password_hash
from flask import Flask, render_template, request, jsonify, session, redirect, url_for
from flask_cors import CORS
import os
from datetime import datetime

from models import db, Wine, WineCepage, Buy, OutRecord, PositionCave, CasierCapacity, Millesime, StockAll, StockAllAgregated
from models import Country, Region, Apellation, Color, Category, Cepage, Size, ToKeep
from models import User
from sqlalchemy.orm import aliased
from decimal import Decimal
import unicodedata

from services.wineapi import WineApiClient, WineApiError

logger = logging.getLogger(__name__)

def convert(obj):
    if isinstance(obj, Decimal):
        return float(obj)
    if isinstance(obj, dict):
        return {k: convert(v) for k, v in obj.items()}
    if isinstance(obj, list):
        return [convert(v) for v in obj]
    return obj

def create_app():
    app = Flask(__name__)
    app.config.from_object('config.Config')
    
    db.init_app(app)
    
    CORS(app, resources={r"/wine/*": {"origins": "*"}})
    
    def serialize_model(obj, **kwargs):
        if hasattr(obj, "to_dict"):
            return obj.to_dict(**kwargs)
        return obj
    
    def is_logged_in():
        if 'logged' in session:
            return True
        if request.remote_addr in app.config.get('ALLOWED_IPS', []):
            return True
        return False
    
    def check_auth():
        if not is_logged_in():
            if request.is_json or request.headers.get('Accept') == 'application/json':
                return jsonify({"success": False, "error": "Non autorisé"}), 401
            return redirect('/wine/login')
        return None
    
    def wine_net_stock(wine_id, size_id=None):
        from sqlalchemy import func
        bought = db.session.query(func.coalesce(func.sum(Buy.quantity), 0)).filter(
            Buy.wine_id == wine_id, Buy.size_id == size_id).scalar() or 0
        consumed = db.session.query(func.coalesce(func.sum(OutRecord.quantity), 0)).filter(
            OutRecord.wine_id == wine_id, OutRecord.size_id == size_id).scalar() or 0
        return int(bought) - int(consumed)

    def normalize_label(value):
        if not value:
            return ''
        text = unicodedata.normalize('NFKD', str(value))
        text = ''.join(c for c in text if not unicodedata.combining(c))
        return ' '.join(text.lower().replace('-', ' ').split())

    def match_or_lookup(model, label, create=False, **extra):
        """Retrouve une entrée par label (insensible casse/accents).
        Si create=True, crée l'entrée manquante. Retourne (id, label, created)."""
        if not label:
            return None, None, False
        target = normalize_label(label)
        for row in model.query.all():
            if normalize_label(row.label) == target:
                return row.id, row.label, False
        if not create:
            return None, None, False
        row = model(label=label, **extra)
        db.session.add(row)
        db.session.flush()
        return row.id, row.label, True

    def resolve_country(name, create=False):
        return match_or_lookup(Country, name, create=create)

    def resolve_region(name, country_id, create=False):
        if not name:
            return None, None, False
        target = normalize_label(name)
        for row in Region.query.filter_by(country_id=country_id).all():
            if normalize_label(row.label) == target:
                return row.id, row.label, False
        if not create:
            return None, None, False
        row = Region(label=name, country_id=country_id)
        db.session.add(row)
        db.session.flush()
        return row.id, row.label, True

    def resolve_apellation(name, region_id, create=False):
        if not name:
            return None, None, False
        target = normalize_label(name)
        query = Apellation.query
        if region_id:
            query = query.filter_by(region_id=region_id)
        for row in query.all():
            if normalize_label(row.label) == target:
                return row.id, row.label, False
        if not create:
            return None, None, False
        row = Apellation(label=name, region_id=region_id)
        db.session.add(row)
        db.session.flush()
        return row.id, row.label, True

    def resolve_color(name, create=False):
        return match_or_lookup(Color, name, create=create)

    def resolve_cepage(name, create=False):
        return match_or_lookup(Cepage, name, create=create)

    COLOR_FR = {
        'red': 'Rouge',
        'white': 'Blanc',
        'rosé': 'Rosé',
        'rose': 'Rosé',
        'sparkling': 'Bulles',
        'champagne': 'Bulles',
        'dessert': 'Liquoreux',
        'fortified': 'Fortifié',
        'orange': 'Orange',
    }

    def external_wine_to_fields(external, create_lookups=False, create_only=None):
        """Transforme une fiche wineapi.io en champs locaux (ids résolus)."""
        selected = set(create_only) if create_only is not None else None

        def can_create(key):
            return bool(create_lookups and (selected is None or key in selected))

        country_name = None
        region_name = None
        if external.get('region') and isinstance(external.get('region'), dict):
            country_name = external['region'].get('country')
            region_name = external['region'].get('name')
        elif external.get('country'):
            country_name = external.get('country')
            region_name = external.get('region')

        country_create = can_create('country') or can_create('region') or can_create('apellation')
        country_id, country_label, _ = resolve_country(country_name, create=country_create)
        region_id, region_label, _ = resolve_region(region_name, country_id, create=can_create('region'))
        apellation_id, apellation_label, _ = resolve_apellation(
            external.get('appellation'), region_id, create=can_create('apellation'))

        color_label = COLOR_FR.get((external.get('type') or '').lower())
        color_id = None
        if color_label:
            color_id, color_label, _ = resolve_color(color_label, create=can_create('color'))

        cepages = []
        for grape in external.get('grapes') or []:
            name = grape.get('name') if isinstance(grape, dict) else grape
            gid, glabel, gcreated = resolve_cepage(name, create=can_create('cepages'))
            cepages.append({"cepage_id": gid, "cepage": glabel or name, "created": gcreated})

        meal = None
        pairings = external.get('pairings') or []
        if pairings:
            meal = ', '.join(
                p.get('food') for p in pairings if isinstance(p, dict) and p.get('food')
            ) or None

        note = external.get('averageRating')
        note_fr = round(float(note) * 4, 1) if note else None

        winery = external.get('winery')
        winery_name = winery.get('name') if isinstance(winery, dict) else winery

        return {
            "name_climat": external.get('name'),
            "year": external.get('vintage'),
            "propriete": winery_name,
            "producer": winery_name,
            "country_id": country_id,
            "country": country_label or country_name,
            "region_id": region_id,
            "region": region_label or region_name,
            "apellation_id": apellation_id,
            "apellation": apellation_label or external.get('appellation'),
            "color_id": color_id,
            "color": color_label,
            "cepages": cepages,
            "meal": meal,
            "my_note": note_fr,
            "comment": external.get('description'),
            "classification": external.get('classification'),
            "alcohol": external.get('alcoholContent'),
            "types": external.get('type'),
        }

    def wine_stored_quantity(wine_id, exclude_position_id=None, size_id=None):
        from sqlalchemy import func
        query = db.session.query(func.coalesce(func.sum(PositionCave.quantity), 0)).filter(
            PositionCave.wine_id == wine_id, PositionCave.size_id == size_id)
        if exclude_position_id:
            query = query.filter(PositionCave.id != exclude_position_id)
        return int(query.scalar() or 0)
    
    @app.route('/wine/')
    def index():
        if not is_logged_in():
            return redirect('/wine/login')
        return render_template('index.html')
    
    @app.route('/wine/login', methods=['GET', 'POST'])
    def login():
        if request.method == 'POST':
            username = request.form.get('username', '')
            password = request.form.get('password', '')

            user = User.query.filter_by(username=username).first()
            authenticated = False
            if user:
                stored_hash = user.password_hash
                if stored_hash.startswith(('$2a$', '$2b$', '$2y$', '$argon2')):
                    authenticated = check_password_hash(stored_hash, password)
                else:
                    authenticated = hmac.compare_digest(stored_hash, hashlib.md5(password.encode()).hexdigest())

            if authenticated:
                session['logged'] = True
                session['user'] = username
                return redirect('/wine/')

            return render_template('login.html', error='Identifiants invalides')
        
        return render_template('login.html')
    
    @app.route('/wine/logout')
    def logout():
        session.clear()
        return redirect('/wine/login')
    
    @app.route('/wine/api/countries')
    def get_countries():
        countries = Country.query.order_by(Country.label).all()
        return jsonify([serialize_model(c) for c in countries])
    
    @app.route('/wine/api/countries', methods=['POST'])
    def create_country():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        data = request.get_json()
        country = Country(label=data.get('label'))
        db.session.add(country)
        db.session.commit()
        return jsonify({"success": True, "data": country.to_dict()}), 201
    
    @app.route('/wine/api/regions')
    def get_regions():
        country_id = request.args.get('country_id', type=int)
        query = Region.query
        if country_id:
            query = query.filter_by(country_id=country_id)
        regions = query.order_by(Region.label).all()
        return jsonify([serialize_model(r) for r in regions])
    
    @app.route('/wine/api/regions', methods=['POST'])
    def create_region():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        data = request.get_json()
        region = Region(
            label=data.get('label'),
            country_id=data.get('country_id')
        )
        db.session.add(region)
        db.session.commit()
        return jsonify({"success": True, "data": region.to_dict()}), 201
    
    @app.route('/wine/api/appellations')
    def get_appellations():
        region_id = request.args.get('region_id', type=int)
        query = Apellation.query
        if region_id:
            query = query.filter_by(region_id=region_id)
        appellations = query.order_by(Apellation.label).all()
        return jsonify([serialize_model(a) for a in appellations])
    
    @app.route('/wine/api/appellations', methods=['POST'])
    def create_apellation():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        data = request.get_json()
        apellation = Apellation(
            label=data.get('label'),
            region_id=data.get('region_id')
        )
        db.session.add(apellation)
        db.session.commit()
        return jsonify({"success": True, "data": apellation.to_dict()}), 201
    
    @app.route('/wine/api/colors')
    def get_colors():
        colors = Color.query.order_by(Color.label).all()
        return jsonify([serialize_model(c) for c in colors])
    
    @app.route('/wine/api/categories')
    def get_categories():
        categories = Category.query.order_by(Category.label).all()
        return jsonify([serialize_model(c) for c in categories])
    
    @app.route('/wine/api/cepages')
    def get_cepages():
        cepages = Cepage.query.order_by(Cepage.label).all()
        return jsonify([serialize_model(c) for c in cepages])
    
    @app.route('/wine/api/cepages', methods=['POST'])
    def create_cepage():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        data = request.get_json()
        cepage = Cepage(label=data.get('label'))
        db.session.add(cepage)
        db.session.commit()
        return jsonify({"success": True, "data": cepage.to_dict()}), 201
    
    @app.route('/wine/api/sizes')
    def get_sizes():
        sizes = Size.query.order_by(Size.volume).all()
        return jsonify([serialize_model(s) for s in sizes])
    
    @app.route('/wine/api/to_keep')
    def get_to_keep():
        to_keep = ToKeep.query.order_by(ToKeep.label).all()
        return jsonify([serialize_model(t) for t in to_keep])
    
    @app.route('/wine/api/years')
    def get_years():
        years = db.session.query(Wine.year).distinct().filter(Wine.year.isnot(None)).order_by(Wine.year.desc()).all()
        return jsonify([{"id": y[0], "label": str(y[0])} for y in years])
    
    @app.route('/wine/api/wines')
    def get_wines():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        query = Wine.query
        
        search = request.args.get('search', '').strip()
        if search:
            search_term = '%{}%'.format(search)
            query = query.filter(
                db.or_(
                    Wine.name_climat.ilike(search_term),
                    Wine.propriete.ilike(search_term),
                    Wine.producer.ilike(search_term)
                )
            )
        
        country_id = request.args.get('country_id', type=int)
        if country_id:
            query = query.filter_by(country_id=country_id)
        
        apellation_id = request.args.get('apellation_id', type=int)
        if apellation_id:
            query = query.filter_by(apellation_id=apellation_id)
        
        region_id = request.args.get('region_id', type=int)
        if region_id:
            query = query.filter_by(region_id=region_id)
        
        color_id = request.args.get('color_id', type=int)
        if color_id:
            query = query.filter_by(color_id=color_id)
        
        category_id = request.args.get('category_id', type=int)
        if category_id:
            query = query.filter_by(category_id=category_id)
        
        year = request.args.get('year', type=int)
        if year:
            query = query.filter_by(year=year)
        
        to_keep_id = request.args.get('to_keep_id', type=int)
        if to_keep_id:
            query = query.filter_by(to_keep_id=to_keep_id)
        
        meal = request.args.get('meal', '')
        if meal:
            query_term = '%{}%'.format(meal)
            query = query.filter(Wine.meal.ilike(query_term))
        
        ready = request.args.get('ready', type=int)
        if ready:
            from datetime import datetime
            current_year = datetime.now().year
            query = query.filter(
                Wine.date_optimum.isnot(None),
                Wine.end_optimum.isnot(None),
                Wine.date_optimum <= current_year,
                Wine.end_optimum >= current_year
            )
        
        in_stock = request.args.get('in_stock', type=int)
        location_active = bool(request.args.get('wall', '')) or bool(request.args.get('casier', ''))
        if in_stock or location_active:
            from sqlalchemy import func
            StockAllA1 = aliased(StockAllAgregated)
            query = query.outerjoin(StockAllA1, Wine.id == StockAllA1.wine_id).filter(
                func.coalesce(StockAllA1.quantity, 0) > 0
            )
        
        not_stored = request.args.get('not_stored', type=int)
        if not_stored:
            from sqlalchemy import func
            StockAllA2 = aliased(StockAllAgregated)
            query = query.outerjoin(StockAllA2, Wine.id == StockAllA2.wine_id).filter(
                func.coalesce(StockAllA2.quantity, 0) > func.coalesce(StockAllA2.stored_quantity, 0)
            )
        
        wall = request.args.get('wall', '')
        casier = request.args.get('casier', '')
        
        if wall or casier:
            # Translate frontend wall names to database names
            wall_map = {
                'en_face': 'north',
                'arriere': 'south',
                'droite': 'east',
                'gauche': 'west'
            }
            translated_walls = [wall_map.get(w, w) for w in wall.split(',')] if wall else None
            casiers = casier.split(',') if casier else None
            
            if translated_walls and casiers:
                query = query.join(PositionCave).filter(
                    PositionCave.wall.in_(translated_walls),
                    PositionCave.casier.in_(casiers)
                )
            elif translated_walls:
                query = query.join(PositionCave).filter(PositionCave.wall.in_(translated_walls))
            elif casiers:
                query = query.join(PositionCave).filter(PositionCave.casier.in_(casiers))
        
        cepage_id = request.args.get('cepage_id', type=int)
        if cepage_id:
            query = query.join(WineCepage).filter(WineCepage.cepage_id == cepage_id)
        
        size_id = request.args.get('size_id', type=int)
        if size_id:
            PositionCaveSize = aliased(PositionCave)
            query = query.join(PositionCaveSize).filter(PositionCaveSize.size_id == size_id)
        
        total = query.count()
        page = request.args.get('page', 1, type=int)
        per_page = request.args.get('per_page', 20, type=int)
        
        total_bottles = 0
        if total > 0:
            from sqlalchemy import func
            wine_ids_all = [w.id for w in query.all()]
            
            total_bought = db.session.query(func.sum(Buy.quantity)).filter(Buy.wine_id.in_(wine_ids_all)).scalar() or 0
            total_consumed = db.session.query(func.sum(OutRecord.quantity)).filter(OutRecord.wine_id.in_(wine_ids_all)).scalar() or 0
            total_bottles = int(total_bought - total_consumed)
        
        wine_data = []
        wines = query.order_by(Wine.year.desc(), Wine.name_climat).offset((page - 1) * per_page).limit(per_page).all()
        
        wine_ids = [w.id for w in wines]
        if wine_ids:
            bottle_counts = db.session.query(
                StockAll.wine_id,
                StockAll.size_id,
                StockAll.quantity,
                StockAll.stored_quantity
            ).filter(StockAll.wine_id.in_(wine_ids)).all()

            bottle_map = {}
            bottle_to_store_map = {}
            for bc in bottle_counts:
                wine_id = bc[0]
                size_id = bc[1]
                qty = int(bc[2] or 0)
                qtyToSt = qty - int(bc[3] or 0)
                if qty > 0:
                    if wine_id not in bottle_map:
                        bottle_map[wine_id] = {}
                    size = Size.query.get(size_id)
                    size_label = size.label if size else "Inconnu"
                    bottle_map[wine_id][size_label] = qty
                if qtyToSt > 0:
                    if wine_id not in bottle_to_store_map:
                        bottle_to_store_map[wine_id] = {}
                    size = Size.query.get(size_id)
                    size_label = size.label if size else "Inconnu"
                    bottle_to_store_map[wine_id][size_label] = qtyToSt
            
        else:
            bottle_map = {}
            bottle_to_store_map = {}
        
        for wine in wines:
            d = wine.to_dict(summary=True)
            d['bottles'] = []
            d['bottlesToStore'] = []
            if wine.id in bottle_map:
                for size_label, qty in bottle_map[wine.id].items():
                    d['bottles'].append({"size": size_label, "quantity": qty})
                d['bottle_count'] = sum(bottle_map[wine.id].values())
            if wine.id in bottle_to_store_map:
                for size_label, qty in bottle_to_store_map[wine.id].items():
                    d['bottlesToStore'].append({"size": size_label, "quantity": qty})
            else:
                d['bottle_count'] = 0
            wine_data.append(d)
        
        return jsonify(convert({
            "success": True,
            "data": wine_data,
            "count": total,
            "total_bottles": int(total_bottles),
            "page": page,
            "per_page": per_page,
            "total_pages": (total + per_page - 1) // per_page
        }))
    
    @app.route('/wine/api/wines/<int:wine_id>')
    def get_wine(wine_id):
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        wine = Wine.query.get_or_404(wine_id)

        from sqlalchemy import func
        stock_rows = db.session.query(
            StockAll.size_id, StockAll.quantity, StockAll.stored_quantity
        ).filter(StockAll.wine_id == wine_id).all()

        bottles = []
        bottles_to_store = []
        not_stored_by_size = {}
        not_stored = 0
        for size_id, qty, stored_qty in stock_rows:
            qty = int(qty or 0)
            stored_qty = int(stored_qty or 0)
            to_store = qty - stored_qty
            size = Size.query.get(size_id)
            size_label = size.label if size else "Inconnu"
            if qty > 0:
                bottles.append({"size": size_label, "quantity": qty})
            if to_store > 0:
                bottles_to_store.append({"size": size_label, "quantity": to_store})
                not_stored_by_size[str(size_id)] = to_store
                not_stored += to_store

        data = wine.to_dict(include_cepages=True)
        data['bottles'] = bottles
        data['bottlesToStore'] = bottles_to_store
        data['not_stored'] = not_stored
        data['not_stored_by_size'] = not_stored_by_size

        return jsonify(convert({
            "success": True,
            "data": data
        }))
    
    @app.route('/wine/api/wineapi/search')
    def wineapi_search():
        auth_check = check_auth()
        if auth_check:
            return auth_check

        query = request.args.get('q', '').strip()
        if len(query) < 3:
            return jsonify({"success": False, "error": "Saisissez au moins 3 caractères"}), 400

        client = WineApiClient(app.config.get('WINE_API_KEY'))
        if not client.enabled:
            return jsonify({"success": False, "error": "Recherche externe non configurée"}), 400

        try:
            data = client.search_resilient(query, limit=15)
        except WineApiError as exc:
            return jsonify({"success": False, "error": str(exc)}), 502

        results = []
        for item in data.get('results', []):
            results.append({
                "id": item.get('id'),
                "name": item.get('name'),
                "vintage": item.get('vintage'),
                "type": item.get('type'),
                "winery": item.get('winery'),
                "region": item.get('region'),
                "country": item.get('country'),
                "averageRating": item.get('averageRating'),
                "ratingsCount": item.get('ratingsCount'),
                "confidence": item.get('confidence'),
            })
        return jsonify({
            "success": True,
            "data": results,
            "total": data.get('total'),
            "query": data.get('query'),
            "fallback": data.get('fallback', False),
        })

    @app.route('/wine/api/wineapi/detail/<wine_id>')
    def wineapi_detail(wine_id):
        auth_check = check_auth()
        if auth_check:
            return auth_check

        client = WineApiClient(app.config.get('WINE_API_KEY'))
        if not client.enabled:
            return jsonify({"success": False, "error": "Recherche externe non configurée"}), 400

        try:
            external = client.detail(wine_id)
        except WineApiError as exc:
            return jsonify({"success": False, "error": str(exc)}), 502

        preview = external_wine_to_fields(external, create_lookups=False)

        apply_lookups = request.args.get('create_lookups', type=int) == 1
        create_only = request.args.get('fields')
        create_only = None if create_only is None else {f for f in create_only.split(',') if f}
        fields = external_wine_to_fields(external, create_lookups=apply_lookups, create_only=create_only)
        if apply_lookups:
            db.session.commit()

        missing = {
            "country": bool(fields['country'] and not fields['country_id']),
            "region": bool(fields['region'] and not fields['region_id']),
            "apellation": bool(fields['apellation'] and not fields['apellation_id']),
            "color": bool(fields['color'] and not fields['color_id']),
            "cepages": [c['cepage'] for c in fields['cepages'] if c['cepage'] and not c['cepage_id']],
        }

        return jsonify({
            "success": True,
            "data": {
                "external": external,
                "preview": preview,
                "fields": fields,
                "missing": missing,
            }
        })

    @app.route('/wine/api/wines', methods=['POST'])
    def create_wine():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        data = request.get_json()
        
        wine = Wine(
            name_climat=data.get('name_climat'),
            year=data.get('year'),
            propriete=data.get('propriete'),
            producer=data.get('producer'),
            country_id=data.get('country_id'),
            region_id=data.get('region_id'),
            apellation_id=data.get('apellation_id'),
            category_id=data.get('category_id'),
            color_id=data.get('color_id'),
            date_optimum=data.get('date_optimum'),
            end_optimum=data.get('end_optimum'),
            to_keep_id=data.get('to_keep_id'),
            distinction=data.get('distinction'),
            medal=data.get('medal'),
            view=data.get('view'),
            noze=data.get('noze'),
            taste=data.get('taste'),
            my_note=data.get('my_note'),
            meal=data.get('meal'),
            comment=data.get('comment')
        )
        
        db.session.add(wine)
        db.session.flush()
        
        cepages = data.get('cepages', [])
        for cepage_data in cepages:
            wc = WineCepage(
                wine_id=wine.id,
                cepage_id=cepage_data.get('cepage_id'),
                percentage=cepage_data.get('percentage')
            )
            db.session.add(wc)
        
        db.session.commit()
        
        return jsonify({
            "success": True,
            "data": wine.to_dict()
        }), 201
    
    @app.route('/wine/api/wines/<int:wine_id>', methods=['PUT'])
    def update_wine(wine_id):
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        wine = Wine.query.get_or_404(wine_id)
        data = request.get_json()
        
        wine.name_climat = data.get('name_climat', wine.name_climat)
        wine.year = data.get('year', wine.year)
        wine.propriete = data.get('propriete', wine.propriete)
        wine.producer = data.get('producer', wine.producer)
        wine.country_id = data.get('country_id', wine.country_id)
        wine.region_id = data.get('region_id', wine.region_id)
        wine.apellation_id = data.get('apellation_id', wine.apellation_id)
        wine.category_id = data.get('category_id', wine.category_id)
        wine.color_id = data.get('color_id', wine.color_id)
        wine.date_optimum = data.get('date_optimum', wine.date_optimum)
        wine.end_optimum = data.get('end_optimum', wine.end_optimum)
        wine.to_keep_id = data.get('to_keep_id', wine.to_keep_id)
        wine.distinction = data.get('distinction', wine.distinction)
        wine.medal = data.get('medal', wine.medal)
        wine.view = data.get('view', wine.view)
        wine.noze = data.get('noze', wine.noze)
        wine.taste = data.get('taste', wine.taste)
        wine.my_note = data.get('my_note', wine.my_note)
        wine.meal = data.get('meal', wine.meal)
        wine.comment = data.get('comment', wine.comment)
        
        if 'cepages' in data:
            WineCepage.query.filter_by(wine_id=wine.id).delete()
            for cepage_data in data['cepages']:
                wc = WineCepage(
                    wine_id=wine.id,
                    cepage_id=cepage_data.get('cepage_id'),
                    percentage=cepage_data.get('percentage')
                )
                db.session.add(wc)
        
        db.session.commit()
        
        return jsonify({
            "success": True,
            "data": wine.to_dict(include_cepages=True)
        })
    
    @app.route('/wine/api/wines/<int:wine_id>', methods=['DELETE'])
    def delete_wine(wine_id):
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        wine = Wine.query.get_or_404(wine_id)
        
        WineCepage.query.filter_by(wine_id=wine_id).delete()
        Buy.query.filter_by(wine_id=wine_id).delete()
        OutRecord.query.filter_by(wine_id=wine_id).delete()
        PositionCave.query.filter_by(wine_id=wine_id).delete()
        
        db.session.delete(wine)
        db.session.commit()
        
        return jsonify({"success": True})
    
    @app.route('/wine/api/buys', methods=['GET', 'POST'])
    def handle_buys():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        wine_id = request.args.get('wine_id', type=int) if request.method == 'GET' else None
        
        if request.method == 'GET':
            if not wine_id:
                return jsonify({"success": False, "error": "wine_id requis"}), 400
            buys = Buy.query.filter_by(wine_id=wine_id).order_by(Buy.buy_date.desc()).all()
            return jsonify({
                "success": True,
                "data": [serialize_model(b) for b in buys]
            })
        
        data = request.get_json()
        buy = Buy(
            wine_id=data.get('wine_id'),
            quantity=data.get('quantity', 1),
            location=data.get('location'),
            size_id=data.get('size_id'),
            unit_price=data.get('unit_price'),
            buy_date=datetime.strptime(data['date'], '%Y-%m-%d').date() if data.get('date') else None
        )
        db.session.add(buy)
        db.session.commit()
        
        return jsonify({
            "success": True,
            "data": serialize_model(buy)
        }), 201
    
    @app.route('/wine/api/buys/<int:buy_id>', methods=['PUT', 'DELETE'])
    def handle_buy(buy_id):
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        buy = Buy.query.get_or_404(buy_id)
        
        if request.method == 'DELETE':
            db.session.delete(buy)
            db.session.commit()
            return jsonify({"success": True})
        
        data = request.get_json() or {}
        if 'unit_price' in data:
            buy.unit_price = data.get('unit_price')
        if 'quantity' in data:
            buy.quantity = data.get('quantity', buy.quantity)
        if 'location' in data:
            buy.location = data.get('location') or None
        if 'size_id' in data:
            buy.size_id = data.get('size_id')
        if data.get('date'):
            buy.buy_date = datetime.strptime(data['date'], '%Y-%m-%d').date()
        
        db.session.commit()
        
        return jsonify({
            "success": True,
            "data": serialize_model(buy)
        })
    
    @app.route('/wine/api/out_records', methods=['GET', 'POST'])
    def handle_out_records():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        wine_id = request.args.get('wine_id', type=int) if request.method == 'GET' else None
        
        if request.method == 'GET':
            if not wine_id:
                return jsonify({"success": False, "error": "wine_id requis"}), 400
            records = OutRecord.query.filter_by(wine_id=wine_id).order_by(OutRecord.out_date.desc()).all()
            return jsonify({
                "success": True,
                "data": [serialize_model(r) for r in records]
            })
        
        data = request.get_json()
        record = OutRecord(
            wine_id=data.get('wine_id'),
            quantity=data.get('quantity', 1),
            size_id=data.get('size_id'),
            out_date=datetime.strptime(data['out_date'], '%Y-%m-%d').date() if data.get('out_date') else None
        )
        db.session.add(record)
        db.session.commit()
        
        return jsonify({
            "success": True,
            "data": serialize_model(record)
        }), 201
    
    @app.route('/wine/api/positions', methods=['GET', 'POST'])
    def handle_positions():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        wine_id = request.args.get('wine_id', type=int) if request.method == 'GET' else None
        
        if request.method == 'GET':
            if wine_id:
                positions = PositionCave.query.filter_by(wine_id=wine_id).all()
            else:
                positions = PositionCave.query.all()
            return jsonify({
                "success": True,
                "data": [serialize_model(p) for p in positions]
            })
        
        data = request.get_json()
        
        wine_id = data.get('wine_id')
        wall = data.get('wall')
        casier = data.get('casier')
        quantity = int(data.get('quantity', 1) or 0)
        size_id = data.get('size_id')
        
        if quantity < 0:
            return jsonify({"success": False, "error": "Quantité invalide"}), 400
        
        existing = PositionCave.query.filter_by(
            wine_id=wine_id,
            wall=wall,
            casier=casier
        ).first()
        
        if quantity == 0:
            if existing:
                db.session.delete(existing)
                db.session.commit()
            return jsonify({"success": True})
        
        other_stored = wine_stored_quantity(wine_id, existing.id if existing else None, size_id)
        old_total = wine_stored_quantity(wine_id, None, size_id)
        net_stock = wine_net_stock(wine_id, size_id)
        new_total = other_stored + quantity
        if new_total > net_stock and new_total > old_total:
            max_qty = net_stock - other_stored
            return jsonify({
                "success": False,
                "error": "Quantité trop élevée : maximum {} bouteille(s) à ranger (stock possédé {}, déjà en cave {})".format(max_qty, net_stock, other_stored)
            }), 400
        
        if existing:
            existing.quantity = quantity
            existing.size_id = size_id
            db.session.commit()
            return jsonify({
                "success": True,
                "data": serialize_model(existing)
            })
        
        position = PositionCave(
            wine_id=wine_id,
            wall=wall,
            casier=casier,
            quantity=quantity,
            size_id=size_id
        )
        db.session.add(position)
        db.session.commit()
        
        return jsonify({
            "success": True,
            "data": serialize_model(position)
        }), 201
    
    @app.route('/wine/api/positions/<int:pos_id>', methods=['PUT', 'DELETE'])
    def handle_position(pos_id):
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        position = PositionCave.query.get_or_404(pos_id)
        
        if request.method == 'DELETE':
            db.session.delete(position)
            db.session.commit()
            return jsonify({"success": True})
        
        data = request.get_json() or {}
        
        quantity = int(data.get('quantity', position.quantity) or 0)
        if quantity < 0:
            return jsonify({"success": False, "error": "Quantité invalide"}), 400
        
        if quantity == 0:
            db.session.delete(position)
            db.session.commit()
            return jsonify({"success": True})
        
        new_size_id = data.get('size_id', position.size_id)
        other_stored = wine_stored_quantity(position.wine_id, position.id, new_size_id)
        old_total = wine_stored_quantity(position.wine_id, None, new_size_id)
        net_stock = wine_net_stock(position.wine_id, new_size_id)
        new_total = other_stored + quantity
        if new_total > net_stock and new_total > old_total:
            max_qty = net_stock - other_stored
            return jsonify({
                "success": False,
                "error": "Quantité trop élevée : maximum {} bouteille(s) à ranger (stock possédé {}, déjà en cave {})".format(max_qty, net_stock, other_stored)
            }), 400
        
        position.wall = data.get('wall', position.wall)
        position.casier = data.get('casier', position.casier)
        position.quantity = quantity
        position.size_id = new_size_id
        
        db.session.commit()
        
        return jsonify({
            "success": True,
            "data": serialize_model(position)
        })
    
    @app.route('/wine/api/capacity')
    def get_capacity():
        capacities = CasierCapacity.query.all()
        return jsonify({
            "success": True,
            "data": [serialize_model(c) for c in capacities]
        })
    
    @app.route('/wine/api/stats')
    def get_stats():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        total_wines = db.session.query(StockAllAgregated.wine_id).filter(StockAllAgregated.stored_quantity > 0).distinct().count()
        
        positions = PositionCave.query.all()
        total_bottles = sum(p.quantity for p in positions)
        
        capacities = CasierCapacity.query.all()
        total_capacity = sum(c.capacity for c in capacities)
        
        from sqlalchemy import func
        color_bottles = db.session.query(
            Wine.color_id,
            func.coalesce(func.sum(PositionCave.quantity), 0)
        ).join(PositionCave, PositionCave.wine_id == Wine.id).group_by(Wine.color_id).all()
        
        color_map = {}
        for color_id, qty in color_bottles:
            color_map[color_id] = (color_map.get(color_id, 0) or 0) + (qty or 0)
        
        colors = Color.query.all()
        label_by_id = {c.id: c.label for c in colors}
        color_counts = []
        for color_id, qty in sorted(color_map.items(), key=lambda kv: -(kv[1] or 0)):
            if color_id is None:
                label = "Inconnu"
            else:
                label = label_by_id.get(color_id, "Inconnu")
            color_counts.append({"label": label, "count": qty})
        
        region_bottles = db.session.query(
            Wine.region_id,
            func.coalesce(func.sum(PositionCave.quantity), 0)
        ).join(PositionCave, PositionCave.wine_id == Wine.id).group_by(Wine.region_id).all()
        
        region_map = {}
        for region_id, qty in region_bottles:
            region_map[region_id] = (region_map.get(region_id, 0) or 0) + (qty or 0)
        
        regions = Region.query.all()
        region_label_by_id = {r.id: r.label for r in regions}
        region_counts = []
        for region_id, qty in sorted(region_map.items(), key=lambda kv: -(kv[1] or 0))[:20]:
            if region_id is None:
                label = "Inconnu"
            else:
                label = region_label_by_id.get(region_id, "Inconnu")
            if qty > 0:
                region_counts.append({"label": label, "count": qty})
        
        return jsonify({
            "success": True,
            "data": {
                "total_wines": total_wines,
                "total_bottles": total_bottles,
                "total_capacity": total_capacity,
                "available": total_capacity - total_bottles,
                "by_color": color_counts,
                "by_region": region_counts
            }
        })
    
    @app.route('/wine/api/millesime', methods=['GET', 'POST'])
    def handle_millesime():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        
        if request.method == 'GET':
            year = request.args.get('year', type=int)
            region = request.args.get('region')
            color_id = request.args.get('color_id', type=int)
            
            query = Millesime.query
            if year:
                query = query.filter_by(year=year)
            if region:
                query = query.filter_by(region=region)
            if color_id:
                color = Color.query.get(color_id)
                if color:
                    query = query.filter_by(color=color.label)
            
            millesimes = query.order_by(Millesime.year.desc()).all()
            return jsonify({
                "success": True,
                "data": [serialize_model(m) for m in millesimes]
            })
        
        if request.method == 'POST':
            data = request.get_json()
            
            region_label = data.get('region')
            color_label = data.get('color')
            category_label = data.get('category')
            appellation_label = data.get('appellation')
            
            region_id = None
            if region_label:
                region = Region.query.filter_by(label=region_label).first()
                if region:
                    region_id = region.id
            
            color_id = None
            if color_label:
                color = Color.query.filter_by(label=color_label).first()
                if color:
                    color_id = color.id
            
            category_id = None
            if category_label:
                category = Category.query.filter_by(label=category_label).first()
                if category:
                    category_id = category.id
            
            apellation_id = None
            if appellation_label:
                apellation = Apellation.query.filter_by(label=appellation_label).first()
                if apellation:
                    apellation_id = apellation.id
            
            millesime = Millesime(
                year=data.get('year'),
                region_id=region_id,
                color_id=color_id,
                category_id=category_id,
                apellation_id=apellation_id,
                note=data.get('note')
            )
            db.session.add(millesime)
            db.session.commit()
            
            return jsonify({
                "success": True,
                "data": serialize_model(millesime)
            }), 201
        elif request.method == 'PUT':
            data = request.get_json()
            millesime_id = data.get('id')
            millesime = Millesime.query.get(millesime_id)
            if not millesime:
                return jsonify({"success": False, "error": "Millésime non trouvé"}), 404
            
            region_label = data.get('region')
            color_label = data.get('color')
            category_label = data.get('category')
            appellation_label = data.get('appellation')
            
            if region_label:
                region = Region.query.filter_by(label=region_label).first()
                millesime.region_id = region.id if region else None
            if color_label:
                color = Color.query.filter_by(label=color_label).first()
                millesime.color_id = color.id if color else None
            if category_label:
                category = Category.query.filter_by(label=category_label).first()
                millesime.category_id = category.id if category else None
            if appellation_label:
                apellation = Apellation.query.filter_by(label=appellation_label).first()
                millesime.apellation_id = apellation.id if apellation else None
            
            millesime.year = data.get('year', millesime.year)
            millesime.note = data.get('note', millesime.note)
            db.session.commit()
            
            return jsonify({
                "success": True,
                "data": serialize_model(millesime)
            })
    
    @app.route('/wine/api/autocomplete')
    def autocomplete():
        search_type = request.args.get('type', '')
        query = request.args.get('q', '')
        
        if not query:
            return jsonify([])
        
        query_lower = '%{}%'.format(query.lower())
        
        if search_type == 'country':
            items = Country.query.filter(Country.label.ilike(query_lower)).limit(10).all()
            return jsonify([{"id": i.id, "label": i.label} for i in items])
        
        elif search_type == 'region':
            items = Region.query.filter(Region.label.ilike(query_lower)).limit(10).all()
            return jsonify([{"id": i.id, "label": i.label} for i in items])
        
        elif search_type == 'nameClimat' or search_type == 'wine':
            items = Wine.query.filter(Wine.name_climat.ilike(query_lower)).limit(10).all()
            return jsonify([{"id": i.id, "label": i.name_climat, "year": i.year} for i in items])
        
        elif search_type == 'propriete':
            items = Wine.query.filter(Wine.propriete.ilike(query_lower)).limit(10).all()
            return jsonify([{"id": i.id, "label": i.propriete} for i in items])
        
        elif search_type == 'producer':
            items = Wine.query.filter(Wine.producer.ilike(query_lower)).limit(10).all()
            return jsonify([{"id": i.id, "label": i.producer} for i in items])
        
        elif search_type == 'appellation':
            items = Apellation.query.filter(Apellation.label.ilike(query_lower)).limit(10).all()
            return jsonify([{"id": i.id, "label": i.label} for i in items])
        
        elif search_type == 'cepage':
            items = Cepage.query.filter(Cepage.label.ilike(query_lower)).limit(10).all()
            return jsonify([{"id": i.id, "label": i.label} for i in items])
        
        return jsonify([])
    
    @app.route('/wine/stats')
    def stats_page():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        return render_template('stats.html')
    
    @app.route('/wine/millesime')
    def millesime_page():
        auth_check = check_auth()
        if auth_check:
            return auth_check
        return render_template('millesime.html')
    
    return app


app = create_app()


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002, debug=True)
