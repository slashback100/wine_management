import logging
from flask_sqlalchemy import SQLAlchemy

logger = logging.getLogger(__name__)

db = SQLAlchemy()


class User(db.Model):
    __tablename__ = 'users'
    
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(100), unique=True, nullable=False)
    password_hash = db.Column(db.String(64), nullable=False)
    
    def to_dict(self):
        return {"id": self.id, "username": self.username}


class Country(db.Model):
    __tablename__ = 'country'
    
    id = db.Column(db.Integer, primary_key=True)
    label = db.Column(db.String(100))
    
    def to_dict(self):
        return {"id": self.id, "label": self.label}


class Region(db.Model):
    __tablename__ = 'region'
    
    id = db.Column(db.Integer, primary_key=True)
    label = db.Column(db.String(100))
    country_id = db.Column(db.Integer, db.ForeignKey('country.id'))
    
    def to_dict(self):
        return {"id": self.id, "label": self.label, "country_id": self.country_id}


class Apellation(db.Model):
    __tablename__ = 'apellation'
    
    id = db.Column(db.Integer, primary_key=True)
    label = db.Column(db.String(100))
    sub_division = db.Column(db.String(100))
    region_id = db.Column(db.Integer, db.ForeignKey('region.id'))
    
    def to_dict(self):
        return {"id": self.id, "label": self.label, "sub_division": self.sub_division, "region_id": self.region_id}


class Color(db.Model):
    __tablename__ = 'color'
    
    id = db.Column(db.Integer, primary_key=True)
    label = db.Column(db.String(50))
    
    def to_dict(self):
        return {"id": self.id, "label": self.label}


class Category(db.Model):
    __tablename__ = 'category'
    
    id = db.Column(db.Integer, primary_key=True)
    label = db.Column(db.String(50))
    
    def to_dict(self):
        return {"id": self.id, "label": self.label}


class Cepage(db.Model):
    __tablename__ = 'cepage'
    
    id = db.Column(db.Integer, primary_key=True)
    label = db.Column(db.String(100))
    
    def to_dict(self):
        return {"id": self.id, "label": self.label}


class Size(db.Model):
    __tablename__ = 'size'
    
    id = db.Column(db.Integer, primary_key=True)
    label = db.Column(db.String(50))
    volume = db.Column(db.Float)
    
    def to_dict(self):
        return {"id": self.id, "label": self.label, "volume": self.volume}


class ToKeep(db.Model):
    __tablename__ = 'to_keep'
    
    id = db.Column(db.Integer, primary_key=True)
    label = db.Column(db.String(50))
    
    def to_dict(self):
        return {"id": self.id, "label": self.label}


class Wine(db.Model):
    __tablename__ = 'wine'
    
    id = db.Column(db.Integer, primary_key=True)
    name_climat = db.Column(db.String(255))
    year = db.Column(db.Integer)
    propriete = db.Column(db.String(255))
    producer = db.Column(db.String(255))
    country_id = db.Column(db.Integer, db.ForeignKey('country.id'))
    region_id = db.Column(db.Integer, db.ForeignKey('region.id'))
    apellation_id = db.Column(db.Integer, db.ForeignKey('apellation.id'))
    category_id = db.Column(db.Integer, db.ForeignKey('category.id'))
    color_id = db.Column(db.Integer, db.ForeignKey('color.id'))
    date_optimum = db.Column(db.Integer)
    end_optimum = db.Column(db.Integer)
    to_keep_id = db.Column(db.Integer, db.ForeignKey('to_keep.id'))
    distinction = db.Column(db.String(255))
    medal = db.Column(db.String(100))
    view = db.Column(db.Text)
    noze = db.Column(db.Text)
    taste = db.Column(db.Text)
    my_note = db.Column(db.Float)
    meal = db.Column(db.Text)
    comment = db.Column(db.Text)
    
    country = db.relationship('Country', backref='wines', foreign_keys=[country_id])
    region = db.relationship('Region', backref='wines', foreign_keys=[region_id])
    apellation = db.relationship('Apellation', backref='wines', foreign_keys=[apellation_id])
    color = db.relationship('Color', backref='wines', foreign_keys=[color_id])
    category = db.relationship('Category', backref='wines', foreign_keys=[category_id])
    to_keep = db.relationship('ToKeep', backref='wines', foreign_keys=[to_keep_id])
    cepages = db.relationship('WineCepage', backref='wine', lazy='dynamic')
    positions = db.relationship('PositionCave', backref='wine', lazy='dynamic')
    buys = db.relationship('Buy', backref='wine', lazy='dynamic')
    out_records = db.relationship('OutRecord', backref='wine', lazy='dynamic')
    
    def to_dict(self, include_cepages=False, summary=False):
        from collections import defaultdict
        from sqlalchemy import func
        from app import db
        
        average_price = db.session.query(
                func.avg(Buy.unit_price).label('average')
            ).filter(Buy.wine_id == self.id).filter(func.coalesce(Buy.unit_price,0) > 0).scalar()
        #if average_price:
        #    logger.warn("average price ", average_price)
        result = {
            "id": self.id,
            "name_climat": self.name_climat,
            "year": self.year,
            "propriete": self.propriete,
            "producer": self.producer,
            "country_id": self.country_id,
            "region_id": self.region_id,
            "apellation_id": self.apellation_id,
            "category_id": self.category_id,
            "color_id": self.color_id,
            "date_optimum": self.date_optimum,
            "end_optimum": self.end_optimum,
            "to_keep_id": self.to_keep_id,
            "distinction": self.distinction,
            "medal": self.medal,
            "view": self.view,
            "noze": self.noze,
            "taste": self.taste,
            "my_note": self.my_note,
            "meal": self.meal,
            "comment": self.comment,
            "country": self.country.label if self.country else None,
            "region": self.region.label if self.region else None,
            "apellation": self.apellation.label if self.apellation else None,
            "color": self.color.label if self.color else None,
            "category": self.category.label if self.category else None,
            "to_keep": self.to_keep.label if self.to_keep else None,
            "average_price": average_price if average_price else None,
        }
        
        if not summary:
            bought = db.session.query(
                Buy.size_id,
                func.sum(Buy.quantity).label('total')
            ).filter(Buy.wine_id == self.id).group_by(Buy.size_id).all()
            
            consumed = db.session.query(
                OutRecord.size_id,
                func.sum(OutRecord.quantity).label('total')
            ).filter(OutRecord.wine_id == self.id).group_by(OutRecord.size_id).all()
            
            bought_by_size = {b.size_id: int(b.total or 0) for b in bought}
            consumed_by_size = {c.size_id: int(c.total or 0) for c in consumed}
            
            all_size_ids = set(bought_by_size.keys()) | set(consumed_by_size.keys())
            
            bottles_by_size = defaultdict(int)
            for size_id in all_size_ids:
                qty = int((bought_by_size.get(size_id, 0) or 0) - (consumed_by_size.get(size_id, 0) or 0))
                if qty > 0:
                    size = Size.query.get(size_id)
                    size_label = size.label if size else "Inconnu"
                    bottles_by_size[size_label] += qty
            
            result["bottles"] = [{"size": label, "quantity": qty} for label, qty in bottles_by_size.items() if qty > 0]
        
        if include_cepages:
            result["cepages"] = [wc.to_dict() for wc in self.cepages]
        return result


class WineCepage(db.Model):
    __tablename__ = 'wine_cepage'
    
    id = db.Column(db.Integer, primary_key=True)
    wine_id = db.Column(db.Integer, db.ForeignKey('wine.id'))
    cepage_id = db.Column(db.Integer, db.ForeignKey('cepage.id'))
    percentage = db.Column(db.Integer)
    
    cepage = db.relationship('Cepage', backref='wine_cepages')
    
    def to_dict(self):
        return {
            "id": self.id,
            "wine_id": self.wine_id,
            "cepage_id": self.cepage_id,
            "cepage": self.cepage.label if self.cepage else None,
            "percentage": self.percentage
        }


class Buy(db.Model):
    __tablename__ = 'buy'
    
    id = db.Column(db.Integer, primary_key=True)
    wine_id = db.Column(db.Integer, db.ForeignKey('wine.id'))
    quantity = db.Column(db.Integer)
    location = db.Column(db.String(255))
    size_id = db.Column(db.Integer, db.ForeignKey('size.id'))
    unit_price = db.Column(db.Float)
    buy_date = db.Column(db.Date)
    
    size = db.relationship('Size', backref='buys')
    
    def to_dict(self):
        date_val = self.buy_date
        if isinstance(date_val, str):
            date_val = None
        return {
            "id": self.id,
            "wine_id": self.wine_id,
            "quantity": self.quantity,
            "location": self.location,
            "size_id": self.size_id,
            "size": self.size.label if self.size else None,
            "unit_price": self.unit_price,
            "date": date_val.isoformat() if date_val else None
        }


class OutRecord(db.Model):
    __tablename__ = 'out_record'
    
    id = db.Column(db.Integer, primary_key=True)
    wine_id = db.Column(db.Integer, db.ForeignKey('wine.id'))
    quantity = db.Column(db.Integer)
    size_id = db.Column(db.Integer, db.ForeignKey('size.id'))
    out_date = db.Column(db.Date)
    
    size = db.relationship('Size', backref='out_records')
    
    def to_dict(self):
        date_val = self.out_date
        if isinstance(date_val, str):
            date_val = None
        return {
            "id": self.id,
            "wine_id": self.wine_id,
            "quantity": self.quantity,
            "size_id": self.size_id,
            "size": self.size.label if self.size else None,
            "out_date": date_val.isoformat() if date_val else None
        }


class PositionCave(db.Model):
    __tablename__ = 'position_cave'
    
    id = db.Column(db.Integer, primary_key=True)
    wine_id = db.Column(db.Integer, db.ForeignKey('wine.id'))
    wall = db.Column(db.String(20))
    casier = db.Column(db.String(20))
    quantity = db.Column(db.Integer)
    size_id = db.Column(db.Integer, db.ForeignKey('size.id'))
    
    size = db.relationship('Size', backref='positions')
    
    def to_dict(self):
        return {
            "id": self.id,
            "wine_id": self.wine_id,
            "wall": self.wall,
            "casier": self.casier,
            "quantity": self.quantity,
            "size_id": self.size_id,
            "size": self.size.label if self.size else None
        }

class StockAll(db.Model):
    __tablename__ = 'stock_all'
    __table_args__ = {'extend_existing': True}
    wine_id = db.Column(db.Integer,  primary_key=True)
    quantity = db.Column(db.Integer, primary_key=True)
    size_id = db.Column(db.Integer)
    stored_quantity = db.Column(db.Integer)
    
    
    def to_dict(self):
        return {
            "wine_id": self.wine_id,
            "quantity": self.quantity,
            "size_id": self.size_id,
            "stored_quantity": self.stored_quantity
        }

class StockAllAgregated(db.Model):
    __tablename__ = 'stock_all_agregated'
    __table_args__ = {'extend_existing': True}
    wine_id = db.Column(db.Integer,  primary_key=True)
    quantity = db.Column(db.Integer, primary_key=True)
    stored_quantity = db.Column(db.Integer)
    
    
    def to_dict(self):
        return {
            "wine_id": self.wine_id,
            "quantity": self.quantity,
            "stored_quantity": self.stored_quantity
        }


class CasierCapacity(db.Model):
    __tablename__ = 'casier_capacity'
    
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    wall = db.Column(db.String(20))
    casier = db.Column(db.String(20))
    capacity = db.Column(db.Integer)
    
    def to_dict(self):
        return {
            "id": self.id,
            "wall": self.wall,
            "casier": self.casier,
            "capacity": self.capacity
        }


class Millesime(db.Model):
    __tablename__ = 'millesime'
    
    id = db.Column(db.Integer, primary_key=True)
    year = db.Column(db.Integer)
    region_id = db.Column(db.Integer, db.ForeignKey('region.id'))
    color_id = db.Column(db.Integer, db.ForeignKey('color.id'))
    category_id = db.Column(db.Integer, db.ForeignKey('category.id'))
    apellation_id = db.Column(db.Integer, db.ForeignKey('apellation.id'))
    note = db.Column(db.Float)
    priority = db.Column(db.Integer)
    
    region = db.relationship('Region', foreign_keys=[region_id])
    color = db.relationship('Color', foreign_keys=[color_id])
    category = db.relationship('Category', foreign_keys=[category_id])
    apellation = db.relationship('Apellation', foreign_keys=[apellation_id])
    
    def to_dict(self):
        return {
            "id": self.id,
            "year": self.year,
            "region": self.region.label if self.region else None,
            "region_country_id": self.region.country_id if self.region else None,
            "color": self.color.label if self.color else None,
            "category": self.category.label if self.category else None,
            "appellation": self.apellation.label if self.apellation else None,
            "note": self.note
        }
