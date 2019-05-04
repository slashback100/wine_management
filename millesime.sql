delete from  millesime;

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Bordeaux'), NULL, (select id from category where label = 'Liquoreux'), NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Jura'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Campania'), NULL, NULL, NULL, 95);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Marche'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 84);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 97);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 95);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Bordeaux'), NULL, (select id from category where label = 'Liquoreux'), NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Jura'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 90.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Campania'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 85);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 86);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Marche'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 95);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 85);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 96);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 89);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Bordeaux'), NULL, (select id from category where label = 'Liquoreux'), NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Jura'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 88.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Campania'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Marche'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 83);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 96);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 88);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Bordeaux'), NULL, (select id from category where label = 'Liquoreux'), NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Jura'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 95);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 90.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Campania'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Marche'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 95);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 97);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 86);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 97);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 89);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Bordeaux'), NULL, (select id from category where label = 'Liquoreux'), NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 9);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 96);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Campania'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Marche'), NULL, NULL, NULL, 96);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 96);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 84);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 95);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 86);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 90);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Bordeaux'), NULL, (select id from category where label = 'Liquoreux'), NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Jura'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Campania'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 83);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Marche'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 82);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 83);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 83);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 84);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 84);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 83);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Bordeaux'), NULL, (select id from category where label = 'Liquoreux'), NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Jura'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 87);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Campania'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Marche'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 85);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 86);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 90);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Bordeaux'), NULL, (select id from category where label = 'Liquoreux'), NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Jura'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Campania'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Marche'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 96);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 92);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Jura'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Campania'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Marche'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 92);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Jura'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 92.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Campania'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Marche'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 95);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 93);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Jura'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 93.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Campania'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Marche'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 95);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 93);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Campania'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Marche'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 90);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 90.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Campania'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Marche'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 94);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Campania'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Marche'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 98);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 96);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 93);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 91.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Campania'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Marche'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 92);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 10);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 91.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Campania'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Marche'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 92);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 88.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Campania'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Marche'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 89);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 91);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 83);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 82);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 87.5);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Campania'), NULL, NULL, NULL, 84);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 85);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 85);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Marche'), NULL, NULL, NULL, 86);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 88);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 82);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 94);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 93);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 83);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 84);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 83);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 82);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Alsace'), NULL, NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Beaujolais'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Rouge'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Bordeaux'), (select id from color where label = 'Blanc'), (select id from category where label = 'Liquoreux'), NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Rouge'), NULL, NULL, 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Bourgogne'), (select id from color where label = 'Blanc'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Champagne'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Jura'), NULL, NULL, NULL, 0);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Languedoc_Roussillon'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Provence'), (select id from color where label = 'Rouge'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Savoie_et_Bugey'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Savoie'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Bugey'), NULL, NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Sud_Ouest'), (select id from color where label = 'Blanc'), NULL, NULL, 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Loire'), (select id from color where label = 'Rouge'), NULL, NULL, 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Loire'), (select id from color where label = 'Blanc'), NULL, NULL, 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Abruzzo'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Basilicata'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Calabria'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Campania'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Friuli_Venezia_Gulia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Lombardia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Marche'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Piemonte'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Puglia'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Sardegna'), NULL, NULL, NULL, 91);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Sicilia'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Toscana'), NULL, NULL, NULL, 92);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Trentino_Alto_Adige'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Umbria'), NULL, NULL, NULL, 90);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Veneto'), NULL, NULL, NULL, 91);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 14);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 18);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 16);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 17);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 17);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 17);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 8);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 8);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 16);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 12);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 12);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 16);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 16);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 15);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 14);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 18);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 16);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 14);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 14);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 14);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 13);


insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Château-grillet'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châtillon-en-diois'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Die'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Condrieu'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Cornas'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Coteaux-de-Die'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crozes-hermitage ou Crozes-ermitage'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Crémant de Die'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côte-rôtie'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Grignan-les-adhémar'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Hermitage ou ermitage'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Joseph'), 19);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Saint-Péray'), 19);



insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1997, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1998, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (1999, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2000, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 11);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2001, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 11);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 9);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2002, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 9);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2003, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2004, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2005, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2006, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 18);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2007, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 18);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2008, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 16);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2009, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 16);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 15);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2010, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 15);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2011, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2012, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 14);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2013, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 14);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 13);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2014, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 13);

insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Beaumes-de-venise'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Châteauneuf-du-pape'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Clairette de Bellegarde'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Costières-de-nîmes'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-rhône villages'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Côtes-du-vivarais'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Gigondas'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Lirac'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Luberon'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Rasteau'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Tavel'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vacqueyras'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Ventoux'), 19);
insert into millesime (year, region_id, color_id, category_id, apellation_id, note) values (2015, (select id from region where label = 'Rhône'), NULL, NULL, (select id from apellation where label = 'Vinsobres'), 19);


update millesime set priority = 2;

update millesime set priority = 1 where category_id is not null;
update millesime set color_id = null where category_id is not null;
