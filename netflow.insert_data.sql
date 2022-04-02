use netflow;

-- Planes
INSERT INTO planes 
	(available_devices, name, price) 
VALUES 
	(1, "Plan Basico", 70.00),
    (3, "Plan Familiar", 120.00),
    (5, "Plan Premium", 240.00),
    (10, "Plan Enterprise", 1000.00);

-- Usuarios
INSERT INTO usuarios 
	(name, lastname, login_name, email, password, planes_id)
VALUES
	('Nicol', 'Holstein', 'nholstein0', 'nholstein0@reuters.com', 'aaeea50197b8a06b59f944881939c47c', 3),
    ('Findley', 'Crunkhurn', 'fcrunkhurn1', 'fcrunkhurn1@dagondesign.com', 'a116752bdc409f12c5d50cefb6ebd943', 2),
    ('Harman', 'Forlong', 'hforlong2', 'hforlong2@fc2.com', '767abb195f3b5fc36ed6cf88a814d639', 1),
    ('Alleyn', 'Wharton', 'awharton3', 'awharton3@people.com.cn', 'ab58252223b03306456fda62f62fe226', 3),
    ('Guglielma', 'Samwayes', 'gsamwayes4', 'gsamwayes4@tiny.cc', 'c91fdbf52200533732fd124777bf176f', 1),
    ('Kipp', 'Simmings', 'ksimmings5', 'ksimmings5@shutterfly.com', 'eaf26e86640ccd028126af7e8052a22c', 4),
    ('Agosto', 'Pashby', 'apashby6', 'apashby6@disqus.com', 'a212207594a3abc47313c8a5fcafc430', 3),
    ('Grazia', 'Plowes', 'gplowes7', 'gplowes7@google.de', 'fc32460e390adc019e5e97c1d3a567bb', 3),
    ('Lacee', 'McCudden', 'lmccudden8', 'lmccudden8@ucoz.com', '022be6898bb354d888a1b9fd8ac1125b', 4),
    ('Marshal', 'Gantlett', 'mgantlett9', 'mgantlett9@nasa.gov', 'feab82222aeb0e3ef5ef091ae365b9b2', 2);

-- Historial de conexiones
INSERT INTO historial_conexiones
	(mac_address, usuarios_id, created_at, updated_at)
VALUES
	("8D-80-5E-6A-DD-E5", 8, "2022-02-03 01:17:11", "2022-02-03 09:11:36"),
	("7E-0A-5A-D6-07-E3", 9, "2022-02-03 03:20:10", "2022-02-04 23:49:01"),
	("EF-3D-43-CE-D1-9C", 2, "2022-02-04 02:19:47", "2022-02-04 04:18:16"),
	("3E-B4-B9-D8-C3-3C", 1, "2022-02-04 07:46:40", "2022-02-07 03:55:18"),
	("9A-47-25-6A-BA-60", 3, "2022-02-05 16:06:48", "2022-02-06 06:32:16"),
	("2B-9A-E7-02-3D-5D", 4, "2022-02-06 10:01:38", "2022-02-07 12:40:19"),
	("45-CB-75-29-81-F3", 7, "2022-02-03 03:00:37", "2022-02-03 04:26:13"),
	("02-BB-0B-72-92-75", 8, "2022-02-06 16:59:07", "2022-02-07 02:22:50"),
	("53-E8-4F-D8-9D-A0", 2, "2022-02-05 09:03:55", "2022-02-06 02:23:35"),
	("40-C8-78-6B-74-60", 9, "2022-02-04 02:34:51", "2022-02-04 11:54:52"),
	("8B-96-98-6C-82-47", 6, "2022-02-03 11:44:55", "2022-02-05 00:03:41"),
	("A6-CE-BA-10-11-C7", 1, "2022-02-04 00:28:40", "2022-02-04 18:04:18"),
	("17-93-07-B9-F4-3A", 4, "2022-02-05 19:46:20", "2022-02-06 04:09:42"),
	("10-7C-9F-B6-05-D6", 10, "2022-02-02 01:29:57", "2022-02-03 07:19:08"),
	("85-6C-31-F4-F5-3E", 5, "2022-02-02 22:17:33", "2022-02-07 16:00:58"),
	("49-F7-05-B4-57-39", 10, "2022-02-05 03:56:52", "2022-02-05 09:42:02"),
	("63-C8-7A-88-72-02", 7, "2022-02-02 14:50:25", "2022-02-03 13:44:24"),
	("AB-6E-2F-9E-55-17", 7, "2022-02-02 12:22:15", "2022-02-02 19:50:15"),
	("D9-66-4D-62-C8-10", 4, "2022-02-04 07:48:58", "2022-02-06 12:42:04"),
	("7D-59-AD-56-C4-58", 1, "2022-02-05 01:37:58", "2022-02-05 23:37:42");

-- Catalogos
INSERT INTO catalogos
	(name)
VALUES
	('Action|Adventure|Comedy|Western'),
    ('Crime|Drama|Film-Noir'),
    ('Adventure|Comedy|Romance'),
    ('Comedy|Romance'),
    ('Drama'),
    ('Documentary'),
    ('Crime|Drama|Thriller'),
    ('Drama'),
    ('Comedy|Crime|Drama|War'),
    ('Drama');

-- Paises
INSERT INTO paises
	(name, catalogos_id)
VALUES
	('Japan', 1),
    ('Indonesia', 3),
    ('Russia', 4),
    ('Kazakhstan', 2),
    ('Russia', 2),
    ('France', 1),
    ('Russia',  6),
    ('China', 7),
    ('Peru', 8),
    ('Indonesia', 5);
    
-- ClasificacionEdades
INSERT INTO clasificacion_edades
VALUES
	(null, 'Adultos'),
    (null, 'Adolescentes'),
    (null, 'Todo publico'),
    (null, 'Niños');
    
-- Peliculas
INSERT INTO peliculas
	(name, release_date, clasificacion_edades_id)
VALUES
	('Goodfellas', "1990-11-15", 1),
    ('Forrest Gump', "1994-06-09", 2),
    ('The Silence of the Lambs', "1991-06-07", 1),
    ('Toy Story', "1996-03-14", 4),
    ('Pink Floyd – The Wall', "1982-11-25", 2),
    ('Pulp Fiction', "1994-10-14", 2),
    ('The Matrix', "1999-06-10", 2),
    ('Taxi Driver', "1976-02-08", 1),
    ('The Irishman', "2019-11-21", 1),
    ('Reservoir Dogs', "1994-01-09", 1),
    ('Karate Kid', "1984-05-07", 3),
    ('The Godfather​', "1972-09-20", 1);

-- Series
INSERT INTO series VALUES
	(null, 'Friends'),
    (null, 'The Office'),
    (null, 'The Big Bang Theory');
    
-- Series Catalogos

INSERT INTO series_catalogos
	(series_id, catalogos_id)
VALUES
	(1,1), (1,2),(1,3),(2,1),(2,2),(3,3),(3,1);
    
