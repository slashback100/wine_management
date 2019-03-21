delete from wine_cepage;
delete from buy;
delete from out_record;
delete from position_cave;
delete from wine;

insert into wine (id, country_id, name_climat, year, region_id, apellation_id, category_id, color_id, propriete, producer, to_keep_id, distinction, medal, noze, taste, view, my_note, comment, meal) values (1,6, 'Chaud', 2013, 2, 461, 6, 1, 'Chateau truc', 'M. Much', 3, 'pgd', 'Or', 'Fruits rouges', 'pomme', 'rouge', 17, 'pas dégeux', 'Viande rouge');
insert into wine (id, country_id, name_climat, year, region_id, apellation_id, category_id, color_id, propriete, producer) values (2,6, 'Froid', 2013, 2, 461, 6, 1, 'Chateau chose', 'M. Much');
insert into wine (id, country_id, name_climat, year, region_id, apellation_id, category_id, color_id, propriete, producer) values (3,6, 'middle', 2014, 3, 473, 6, 1, 'bottle', NULL);
insert into wine (id, country_id, name_climat, year, region_id, apellation_id, category_id, color_id, propriete, producer) values (4,6, 'moyen', 2013, 2, 461, 6, 1, 'Le Chateau', 'Tartempions');
insert into wine (id, country_id, name_climat, year, region_id, apellation_id, category_id, color_id, propriete, producer) values (5,7, 'c pas', 2015, 6, 6, 6, 1, 'El castel', 'John');
insert into wine (id, country_id, name_climat, year, region_id, apellation_id, category_id, color_id, propriete, producer) values (6,7, 'aucune idée', 2015, 20, 6, 6, 1, 'Rital', NULL);

insert into wine_cepage (wine_id, cepage_id) values (1,2);
insert into wine_cepage (wine_id, cepage_id) values (1,3);
insert into wine_cepage (wine_id, cepage_id) values (1,4);
insert into wine_cepage (wine_id, cepage_id) values (1,5);
insert into wine_cepage (wine_id, cepage_id) values (2,3);
insert into wine_cepage (wine_id, cepage_id) values (3,40);
insert into wine_cepage (wine_id, cepage_id) values (4,40);
insert into wine_cepage (wine_id, cepage_id) values (5,40);

insert into position_cave (wine_id, size_id, quantity, wall, casier) values (1, 3, 6, 'north', 'wall23');
insert into position_cave (wine_id, size_id, quantity, wall, casier) values (1, 4, 1, 'north', 'wall21');
insert into position_cave (wine_id, size_id, quantity, wall, casier) values (2, 3, 4, 'east', 'wall41');

insert into buy (wine_id, size_id, location, quantity, unit_price, buy_date) values (1, 3, 'Delhaize', 6, '9.50', '2019-02-14');

insert into out_record (wine_id, size_id, quantity, out_date) values (1, 3, '3',  '2019-03-12');
