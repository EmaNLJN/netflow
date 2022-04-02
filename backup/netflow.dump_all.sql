CREATE DATABASE  IF NOT EXISTS `netflow` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `netflow`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: netflow
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalogos`
--

DROP TABLE IF EXISTS `catalogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogos`
--

LOCK TABLES `catalogos` WRITE;
/*!40000 ALTER TABLE `catalogos` DISABLE KEYS */;
INSERT INTO `catalogos` VALUES (1,'Action|Adventure|Comedy|Western'),(2,'Crime|Drama|Film-Noir'),(3,'Adventure|Comedy|Romance'),(4,'Comedy|Romance'),(5,'Drama'),(6,'Documentary'),(7,'Crime|Drama|Thriller'),(8,'Drama'),(9,'Comedy|Crime|Drama|War'),(10,'Drama');
/*!40000 ALTER TABLE `catalogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clasificacion_edades`
--

DROP TABLE IF EXISTS `clasificacion_edades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clasificacion_edades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasificacion_edades`
--

LOCK TABLES `clasificacion_edades` WRITE;
/*!40000 ALTER TABLE `clasificacion_edades` DISABLE KEYS */;
INSERT INTO `clasificacion_edades` VALUES (1,'Adultos'),(2,'Adolescentes'),(3,'Todo publico'),(4,'Niños');
/*!40000 ALTER TABLE `clasificacion_edades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `conexiones_permitidas_usuarios`
--

DROP TABLE IF EXISTS `conexiones_permitidas_usuarios`;
/*!50001 DROP VIEW IF EXISTS `conexiones_permitidas_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `conexiones_permitidas_usuarios` AS SELECT 
 1 AS `Usuarios`,
 1 AS `Conexiones Actuales`,
 1 AS `Conexiones Permitidas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `episodios`
--

DROP TABLE IF EXISTS `episodios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `temporadas_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `temporadas_id` (`temporadas_id`),
  CONSTRAINT `episodios_ibfk_1` FOREIGN KEY (`temporadas_id`) REFERENCES `temporadas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodios`
--

LOCK TABLES `episodios` WRITE;
/*!40000 ALTER TABLE `episodios` DISABLE KEYS */;
INSERT INTO `episodios` VALUES (1,'The One with the Sonogram at the End',22),(2,'The One with the Thumb',22),(3,'The One with George Stephanopoulos',22),(4,'The One with the East German Laundry Detergent',22),(5,'The One with the Butt',22),(6,'The One with the Blackout',22),(7,'The One Where Nana Dies Twice',22),(8,'The One Where Underdog Gets Away',22),(9,'The One with the Monkey',22),(10,'The One with Mrs. Bing',22),(11,'The One with the Dozen Lasagnas',22),(12,'The One with the Boobies',22),(13,'The One with the Candy Hearts',22),(14,'The One with the Stoned Guy',22),(15,'The One with Two Parts: Part 1',22),(16,'The One with Two Parts: Part 2',22),(17,'The One with All the Poker',22),(18,'The One Where the Monkey Gets Away',22),(19,'The One with the Evil Orthodontist',22),(20,'The One with the Fake Monica',22),(21,'The One with the Ick Factor',22),(22,'The One with the Birth',22),(23,'The One Where Rachel Finds Out',22),(24,'The One with Ross\'s New Girlfriend',23),(25,'The One with the Breast Milk',23),(26,'The One Where Heckles Dies',23),(27,'The One with Phoebe\'s Husband',23),(28,'The One with Five Steaks and an Eggplant',23),(29,'The One with the Baby on the Bus',23),(30,'The One Where Ross Finds Out',23),(31,'The One with the List',23),(32,'The One with Phoebe\'s Dad',23),(33,'The One with Russ',23),(34,'The One with the Lesbian Wedding',23),(35,'The One After the Superbowl: Part 1',23),(36,'The One After the Superbowl: Part 2',23),(37,'The One with the Prom Video',23),(38,'The One Where Ross and Rachel... You Know',23),(39,'The One Where Joey Moves Out',23),(40,'The One Where Eddie Moves In',23),(41,'The One Where Dr. Ramoray Dies',23),(42,'The One Where Eddie Won\'t Go',23),(43,'The One Where Old Yeller Dies',23),(44,'The One with the Bullies',23),(45,'The One with the Two Parties',23),(46,'The One with the Chicken Pox',23),(47,'The One with Barry and Mindy\'s Wedding',23),(48,'The One with the Princess Leia Fantasy',23),(49,'The One Where No One\'s Ready',23),(50,'The One with the Jam',23),(51,'The One with the Metaphorical Tunnel',23),(52,'The One with Frank Jr.',23),(53,'The One with the Flashback',23),(54,'The One with the Race Car Bed',23),(55,'The One with the Giant Poking Device',23),(56,'The One with the Football',23),(57,'The One Where Rachel Quits',23),(58,'The One Where Chandler Can\'t Remember Which Sister',23),(59,'The One with All the Jealousy',23),(60,'The One Where Monica and Richard Are Just Friends',23),(61,'The One with Phoebe\'s Ex-Partner',23),(62,'The One Where Ross and Rachel Take a Break',23),(63,'The One with the Morning After',23),(64,'The One Without the Ski Trip',23),(65,'The One with the Hypnosis Tape',23),(66,'The One with the Tiny T-Shirt',23),(67,'The One with the Dollhouse',23),(68,'The One with the Chick and the Duck',23),(69,'The One with the Screamer',23),(70,'The One with Ross\'s Thing',23),(71,'The One with the Ultimate Fighting Champion',23),(72,'The One at the Beach',23),(73,'Unaired Pilot',10),(74,'Pilot',10),(75,'The Big Bran Hypothesis',10),(76,'The Fuzzy Boots Corollary',10),(77,'The Luminous Fish Effect',10),(78,'The Hamburger Postulate',10),(79,'The Middle Earth Paradigm',10),(80,'The Dumpling Paradox',10),(81,'The Grasshopper Experiment',10),(82,'The Cooper-Hofstadter Polarization',10),(83,'The Loobenfeld Decay',10),(84,'The Pancake Batter Anomaly',10),(85,'The Jerusalem Duality',10),(86,'The Bat Jar Conjecture',10),(87,'The Nerdvana Annihilation',10),(88,'The Pork Chop Indeterminacy',10),(89,'The Peanut Reaction',10),(90,'The Tangerine Factor',10),(91,'The Bad Fish Paradigm',11),(92,'The Codpiece Topology',11),(93,'The Barbarian Sublimation',11),(94,'The Griffin Equivalency',11),(95,'The Euclid Alternative',11),(96,'The Cooper-Nowitzki Theorem',11),(97,'The Panty PiÃ±ata Polarization',11),(98,'The Lizard-Spock Expansion',11),(99,'The White Asparagus Triangulation',11),(100,'The Vartabedian Conundrum',11),(101,'The Bath Item Gift Hypothesis',11),(102,'The Killer Robot Instability',11),(103,'The Friendship Algorithm',11),(104,'The Financial Permeability',11),(105,'The Maternal Capacitance',11),(106,'The Cushion Saturation',11),(107,'The Terminator Decoupling',11),(108,'The Work Song Nanocluster',11),(109,'The Dead Hooker Juxtaposition',11),(110,'The Hofstadter Isotope',11),(111,'The Vegas Renormalization',11),(112,'The Classified Materials Turbulence',11),(113,'The Monopolar Expedition',11),(114,'Pilot',1),(115,'Diversity Day',1),(116,'Health Care',1),(117,'The Alliance',1),(118,'Basketball',1),(119,'Hot Girl',1),(120,'The Dundies',2),(121,'Sexual Harassment',2),(122,'Office Olympics',2),(123,'The Fire',2),(124,'Halloween',2),(125,'The Fight',2),(126,'The Client',2),(127,'Performance Review',2),(128,'E-Mail Surveillance',2),(129,'Christmas Party',2),(130,'Booze Cruise',2),(131,'The Injury',2),(132,'The Secret',2),(133,'The Carpet',2),(134,'Boys and Girls',2),(135,'Valentine\'s Day',2),(136,'Dwight\'s Speech',2),(137,'Take Your Daughter to Work Day',2),(138,'Michael\'s Birthday',2),(139,'Drug Testing',2),(140,'Conflict Resolution',2),(141,'Casino Night',2),(142,'The One With The Jellyfish',24),(143,'The One With The Cat',24),(144,'The One With The \'Cuffs',24),(145,'The One With The Ballroom Dancing',24),(146,'The One With Joey\'s New Girlfriend',24),(147,'The One With The Dirty Girl',24),(148,'The One Where Chandler Crosses The Line',24),(149,'The One With Chandler In A Box',24);
/*!40000 ALTER TABLE `episodios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_conexiones`
--

DROP TABLE IF EXISTS `historial_conexiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_conexiones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mac_address` varchar(255) NOT NULL,
  `usuarios_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mac_address` (`mac_address`),
  KEY `usuarios_id` (`usuarios_id`),
  CONSTRAINT `historial_conexiones_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_conexiones`
--

LOCK TABLES `historial_conexiones` WRITE;
/*!40000 ALTER TABLE `historial_conexiones` DISABLE KEYS */;
INSERT INTO `historial_conexiones` VALUES (1,'8D-80-5E-6A-DD-E5',8,'2022-02-03 01:17:11','2022-02-03 09:11:36'),(2,'7E-0A-5A-D6-07-E3',9,'2022-02-03 03:20:10','2022-02-04 23:49:01'),(3,'EF-3D-43-CE-D1-9C',2,'2022-02-04 02:19:47','2022-02-04 04:18:16'),(4,'3E-B4-B9-D8-C3-3C',1,'2022-02-04 07:46:40','2022-02-07 03:55:18'),(5,'9A-47-25-6A-BA-60',3,'2022-02-05 16:06:48','2022-02-06 06:32:16'),(6,'2B-9A-E7-02-3D-5D',4,'2022-02-06 10:01:38','2022-02-07 12:40:19'),(7,'45-CB-75-29-81-F3',7,'2022-02-03 03:00:37','2022-02-03 04:26:13'),(11,'8B-96-98-6C-82-47',6,'2022-02-03 11:44:55','2022-02-05 00:03:41'),(12,'A6-CE-BA-10-11-C7',1,'2022-02-04 00:28:40','2022-02-04 18:04:18'),(13,'17-93-07-B9-F4-3A',4,'2022-02-05 19:46:20','2022-02-06 04:09:42'),(14,'10-7C-9F-B6-05-D6',10,'2022-02-02 01:29:57','2022-02-03 07:19:08'),(15,'85-6C-31-F4-F5-3E',5,'2022-02-02 22:17:33','2022-02-07 16:00:58'),(16,'49-F7-05-B4-57-39',10,'2022-02-05 03:56:52','2022-02-05 09:42:02'),(17,'63-C8-7A-88-72-02',7,'2022-02-02 14:50:25','2022-02-03 13:44:24'),(18,'AB-6E-2F-9E-55-17',7,'2022-02-02 12:22:15','2022-02-02 19:50:15'),(19,'D9-66-4D-62-C8-10',4,'2022-02-04 07:48:58','2022-02-06 12:42:04'),(20,'7D-59-AD-56-C4-58',1,'2022-02-05 01:37:58','2022-02-05 23:37:42');
/*!40000 ALTER TABLE `historial_conexiones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `validar_historial_conexiones` BEFORE INSERT ON `historial_conexiones` FOR EACH ROW BEGIN
	DECLARE MSG VARCHAR(225);
    SET @C_CONEXIONES = CURR_CONEXIONES(new.usuarios_id) + 1;
    SET @USUARIO_PLAN = (SELECT planes_id FROM usuarios WHERE id = new.usuarios_id);
    SET @D_CONEXIONES = DISP_CONEXIONES(@USUARIO_PLAN);
    
    IF new.created_at > new.updated_at THEN
		SET MSG = CONCAT("la fecha de creacion no puede ser mayor que la de la actualizacion");
        SIGNAL SQLSTATE "45000"
			SET MESSAGE_TEXT = MSG;
    END IF;
    
    -- este caso depende mucho de la consistencia de los datos. Probarlo usando la vista conexiones_permitidas_usuarios.
    IF @C_CONEXIONES > @D_CONEXIONES THEN
		SET MSG = CONCAT("El usuario con id ", new.usuarios_id, " ya alcanzo el limite de conexiones disponibles para su plan.");
		SIGNAL SQLSTATE "45000"
            SET MESSAGE_TEXT = MSG;
    END IF;
    
    IF new.mac_address NOT REGEXP '^([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})$' THEN
		SET MSG = CONCAT("La direccion mac no es valida.");
		SIGNAL SQLSTATE "45000"
			SET MESSAGE_TEXT = MSG;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `log_historial_conexiones` AFTER INSERT ON `historial_conexiones` FOR EACH ROW BEGIN
    INSERT INTO log_historial_conexiones(usuarios_id, tipo, mac_address, fecha) 
		VALUES (new.usuarios_id, 'INSERT', new.mac_address, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `info_peliculas`
--

DROP TABLE IF EXISTS `info_peliculas`;
/*!50001 DROP VIEW IF EXISTS `info_peliculas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info_peliculas` AS SELECT 
 1 AS `Nombre`,
 1 AS `Fecha de lanzamiento`,
 1 AS `Clasificacion`,
 1 AS `Categorias`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `info_series`
--

DROP TABLE IF EXISTS `info_series`;
/*!50001 DROP VIEW IF EXISTS `info_series`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info_series` AS SELECT 
 1 AS `id`,
 1 AS `Series`,
 1 AS `Episodios`,
 1 AS `Temporadas`,
 1 AS `Fecha de lanzamiento`,
 1 AS `Clasificacion`,
 1 AS `Categorias`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_historial_conexiones`
--

DROP TABLE IF EXISTS `log_historial_conexiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_historial_conexiones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuarios_id` int DEFAULT NULL,
  `mac_address` varchar(225) DEFAULT NULL,
  `tipo` enum('UPDATE','INSERT','DELETE') DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_historial_conexiones`
--

LOCK TABLES `log_historial_conexiones` WRITE;
/*!40000 ALTER TABLE `log_historial_conexiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_historial_conexiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_planes`
--

DROP TABLE IF EXISTS `log_planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_planes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `planes_id` int DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `tipo` enum('UPDATE','INSERT','DELETE') DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_planes`
--

LOCK TABLES `log_planes` WRITE;
/*!40000 ALTER TABLE `log_planes` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pais_catalogos`
--

DROP TABLE IF EXISTS `pais_catalogos`;
/*!50001 DROP VIEW IF EXISTS `pais_catalogos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pais_catalogos` AS SELECT 
 1 AS `Pais`,
 1 AS `Catalogos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `catalogos_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalogos_id` (`catalogos_id`),
  CONSTRAINT `paises_ibfk_1` FOREIGN KEY (`catalogos_id`) REFERENCES `catalogos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Japan',1),(2,'Indonesia',3),(3,'Russia',4),(4,'Kazakhstan',2),(5,'Russia',2),(6,'France',1),(7,'Russia',6),(8,'China',7),(9,'Peru',8),(10,'Indonesia',5);
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `clasificacion_edades_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clasificacion_edades_id` (`clasificacion_edades_id`),
  CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`clasificacion_edades_id`) REFERENCES `clasificacion_edades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'Goodfellas','1990-11-15',1),(2,'Forrest Gump','1994-06-09',2),(3,'The Silence of the Lambs','1991-06-07',1),(4,'Toy Story','1996-03-14',4),(5,'Pink Floyd – The Wall','1982-11-25',2),(6,'Pulp Fiction','1994-10-14',2),(7,'The Matrix','1999-06-10',2),(8,'Taxi Driver','1976-02-08',1),(9,'The Irishman','2019-11-21',1),(10,'Reservoir Dogs','1994-01-09',1),(11,'Karate Kid','1984-05-07',3),(12,'The Godfather​','1972-09-20',1);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas_catalogos`
--

DROP TABLE IF EXISTS `peliculas_catalogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas_catalogos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `peliculas_id` int DEFAULT NULL,
  `catalogos_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `peliculas_id` (`peliculas_id`,`catalogos_id`),
  KEY `catalogos_id` (`catalogos_id`),
  CONSTRAINT `peliculas_catalogos_ibfk_1` FOREIGN KEY (`peliculas_id`) REFERENCES `peliculas` (`id`),
  CONSTRAINT `peliculas_catalogos_ibfk_2` FOREIGN KEY (`catalogos_id`) REFERENCES `catalogos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas_catalogos`
--

LOCK TABLES `peliculas_catalogos` WRITE;
/*!40000 ALTER TABLE `peliculas_catalogos` DISABLE KEYS */;
INSERT INTO `peliculas_catalogos` VALUES (18,1,6),(6,2,3),(20,2,4),(4,2,6),(10,3,5),(19,3,6),(5,4,2),(12,4,4),(1,6,4),(8,6,9),(17,7,1),(13,7,3),(16,8,9),(11,9,5),(3,9,10),(15,10,2),(7,10,9),(14,11,2),(9,11,5),(2,12,10);
/*!40000 ALTER TABLE `peliculas_catalogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `available_devices` int NOT NULL DEFAULT '1',
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,'Plan Basico',1,70),(2,'Plan Familiar',3,120),(3,'Plan Premium',5,240),(4,'Plan Enterprise',10,1000);
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `validar_planes` BEFORE INSERT ON `planes` FOR EACH ROW BEGIN
	DECLARE MSG VARCHAR(225);
    IF new.available_devices = 0 OR new.price = 0 THEN
		SET MSG = CONCAT("available_devices o price son cero.");
        SIGNAL SQLSTATE "45000"
			SET MESSAGE_TEXT = MSG;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `log_planes` AFTER INSERT ON `planes` FOR EACH ROW BEGIN
    INSERT INTO log_planes(planes_id, name, tipo, fecha) VALUES (new.id, new.name, 'INSERT', NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Friends'),(2,'The Office'),(3,'The Big Bang Theory');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_catalogos`
--

DROP TABLE IF EXISTS `series_catalogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series_catalogos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `series_id` int DEFAULT NULL,
  `catalogos_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series_id` (`series_id`,`catalogos_id`),
  KEY `catalogos_id` (`catalogos_id`),
  CONSTRAINT `series_catalogos_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`),
  CONSTRAINT `series_catalogos_ibfk_2` FOREIGN KEY (`catalogos_id`) REFERENCES `catalogos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_catalogos`
--

LOCK TABLES `series_catalogos` WRITE;
/*!40000 ALTER TABLE `series_catalogos` DISABLE KEYS */;
INSERT INTO `series_catalogos` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(7,3,1),(6,3,3);
/*!40000 ALTER TABLE `series_catalogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `series_total_temporadas_series`
--

DROP TABLE IF EXISTS `series_total_temporadas_series`;
/*!50001 DROP VIEW IF EXISTS `series_total_temporadas_series`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `series_total_temporadas_series` AS SELECT 
 1 AS `Series`,
 1 AS `Temporadas`,
 1 AS `Episodios`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `temporadas`
--

DROP TABLE IF EXISTS `temporadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporadas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `clasificacion_edades_id` int DEFAULT NULL,
  `series_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clasificacion_edades_id` (`clasificacion_edades_id`),
  KEY `series_id` (`series_id`),
  CONSTRAINT `temporadas_ibfk_1` FOREIGN KEY (`clasificacion_edades_id`) REFERENCES `clasificacion_edades` (`id`),
  CONSTRAINT `temporadas_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporadas`
--

LOCK TABLES `temporadas` WRITE;
/*!40000 ALTER TABLE `temporadas` DISABLE KEYS */;
INSERT INTO `temporadas` VALUES (1,'Temporada 1','2005-03-24',1,2),(2,'Temporada 2','2005-09-20',1,2),(3,'Temporada 3','2006-09-21',1,2),(4,'Temporada 4','2007-09-27',1,2),(5,'Temporada 5','2008-09-25',1,2),(6,'Temporada 6','2009-09-17',1,2),(7,'Temporada 7','2010-09-23',1,2),(8,'Temporada 8','2011-09-22',1,2),(9,'Temporada 9','2012-09-20',1,2),(10,'Temporada 1','2006-05-01',3,3),(11,'Temporada 2','2008-09-22',3,3),(12,'Temporada 3','2009-09-21',3,3),(13,'Temporada 4','2010-09-23',3,3),(14,'Temporada 5','2011-09-22',3,3),(15,'Temporada 6','2012-09-27',3,3),(16,'Temporada 7','2013-09-26',3,3),(17,'Temporada 8','2014-09-22',3,3),(18,'Temporada 9','2015-09-21',3,3),(19,'Temporada 10','2017-09-28',3,3),(20,'Temporada 11','2017-09-25',3,3),(21,'Temporada 12','2018-09-24',3,3),(22,'Temporada 1','1994-09-22',2,1),(23,'Temporada 2','1995-09-21',2,1),(24,'Temporada 3','1996-09-19',2,1),(25,'Temporada 4','1997-09-25',2,1),(26,'Temporada 5','1998-09-24',2,1),(27,'Temporada 6','1999-09-23',2,1),(28,'Temporada 7','2000-10-12',2,1),(29,'Temporada 8','2001-09-27',2,1),(30,'Temporada 9','2002-09-26',2,1),(31,'Temporada 10','2003-09-25',2,1);
/*!40000 ALTER TABLE `temporadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `login_name` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `planes_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`),
  UNIQUE KEY `email` (`email`),
  KEY `planes_id` (`planes_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`planes_id`) REFERENCES `planes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Nicol','Holstein','nholstein0','nholstein0@reuters.com','aaeea50197b8a06b59f944881939c47c',3),(2,'Findley','Crunkhurn','fcrunkhurn1','fcrunkhurn1@dagondesign.com','a116752bdc409f12c5d50cefb6ebd943',2),(3,'Harman','Forlong','hforlong2','hforlong2@fc2.com','767abb195f3b5fc36ed6cf88a814d639',1),(4,'Alleyn','Wharton','awharton3','awharton3@people.com.cn','ab58252223b03306456fda62f62fe226',3),(5,'Guglielma','Samwayes','gsamwayes4','gsamwayes4@tiny.cc','c91fdbf52200533732fd124777bf176f',1),(6,'Kipp','Simmings','ksimmings5','ksimmings5@shutterfly.com','eaf26e86640ccd028126af7e8052a22c',4),(7,'Agosto','Pashby','apashby6','apashby6@disqus.com','a212207594a3abc47313c8a5fcafc430',3),(8,'Grazia','Plowes','gplowes7','gplowes7@google.de','fc32460e390adc019e5e97c1d3a567bb',3),(9,'Lacee','McCudden','lmccudden8','lmccudden8@ucoz.com','022be6898bb354d888a1b9fd8ac1125b',4),(10,'Marshal','Gantlett','mgantlett9','mgantlett9@nasa.gov','feab82222aeb0e3ef5ef091ae365b9b2',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'netflow'
--

--
-- Dumping routines for database 'netflow'
--
/*!50003 DROP FUNCTION IF EXISTS `CONEXIONES_VALIDAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `CONEXIONES_VALIDAS`(PARAM_USUARIO INT, PARAM_PLAN INT) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE C_CONEXIONES INT;
    DECLARE D_CONEXIONES INT;
    SET C_CONEXIONES = CURR_CONEXIONES(PARAM_USUARIO);
    SET D_CONEXIONES = DISP_CONEXIONES(PARAM_PLAN);
    
    IF C_CONEXIONES > D_CONEXIONES THEN
		RETURN CONCAT("Usuario con ID:" , PARAM_USUARIO, " tiene mas conexiones de las permitidas.");
	ELSE
		RETURN "OK.";
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CURR_CONEXIONES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `CURR_CONEXIONES`(PARAM_USER INT) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE RESULTADO INT;
	SELECT 
    COUNT(*)
INTO RESULTADO FROM
    historial_conexiones
WHERE
    usuarios_id = PARAM_USER;
    RETURN RESULTADO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DISP_CONEXIONES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `DISP_CONEXIONES`(PARAM_PLAN INT) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE RESULTADO INT;
    SELECT available_devices INTO RESULTADO FROM planes WHERE id = PARAM_PLAN;
    RETURN RESULTADO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `NOMBRE_CATALOGO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `NOMBRE_CATALOGO`(PARAM_CATALOGO INT) RETURNS varchar(225) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE RESULTADO VARCHAR(225);
    SELECT name INTO RESULTADO FROM catalogos WHERE id = PARAM_CATALOGO;
	RETURN RESULTADO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CREAR_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `CREAR_USUARIO`(IN NOMBRE VARCHAR(225), IN APELLIDO VARCHAR(225), IN USER_LOGIN VARCHAR(225), IN EMAIL VARCHAR(225))
BEGIN
	IF NOMBRE = '' OR APELLIDO = '' OR EMAIL = '' OR USER_LOGIN = '' OR EMAIL = '' THEN
		SIGNAL sqlstate '40400'
			SET MESSAGE_TEXT = "Hay campos vacios, por favor rellenar.";
    END IF;
    
    -- contraseña usando codificacion md5, y se inicia con un plan basico.
    INSERT INTO usuarios(name, lastname, login_name, email, password, planes_id)
    VALUES (NOMBRE, APELLIDO, USER_LOGIN, EMAIL, md5(CONCAT(USER_LOGIN, EMAIL)), 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ORDER_USUARIOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ORDER_USUARIOS`(IN COLUMNA VARCHAR(225), IN TIPO_ORDENAMIENTO BOOL)
BEGIN
	SET @ORDENAMIENTO = 0;
    SET @SQL_QUERY = CONCAT('SELECT * FROM usuarios');
    
    IF COLUMNA <> '' THEN
		SET @SQL_QUERY = CONCAT(@SQL_QUERY, ' ORDER BY ', COLUMNA);
        SET @ORDENAMIENTO = 1;
    END IF;
    IF @ORDENAMIENTO AND TIPO_ORDENAMIENTO <> 0 THEN
		SET @SQL_QUERY = CONCAT(@SQL_QUERY, ' DESC');
    END IF;
    
    PREPARE first_query FROM @SQL_QUERY;
    EXECUTE first_query;
    DEALLOCATE PREPARE first_query;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `conexiones_permitidas_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `conexiones_permitidas_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `conexiones_permitidas_usuarios` AS select `u`.`name` AS `Usuarios`,count(`hc`.`id`) AS `Conexiones Actuales`,`p`.`available_devices` AS `Conexiones Permitidas` from ((`historial_conexiones` `hc` join `usuarios` `u` on((`u`.`id` = `hc`.`usuarios_id`))) join `planes` `p` on((`p`.`id` = `u`.`planes_id`))) group by `u`.`name`,`p`.`available_devices` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_peliculas`
--

/*!50001 DROP VIEW IF EXISTS `info_peliculas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `info_peliculas` AS select `p`.`name` AS `Nombre`,`p`.`release_date` AS `Fecha de lanzamiento`,`ce`.`name` AS `Clasificacion`,group_concat(`c`.`name` separator ',') AS `Categorias` from (((`peliculas_catalogos` `pc` join `peliculas` `p` on((`pc`.`peliculas_id` = `p`.`id`))) join `catalogos` `c` on((`pc`.`catalogos_id` = `c`.`id`))) join `clasificacion_edades` `ce` on((`ce`.`id` = `p`.`clasificacion_edades_id`))) group by `p`.`id` order by `p`.`release_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_series`
--

/*!50001 DROP VIEW IF EXISTS `info_series`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `info_series` AS select `e`.`id` AS `id`,`s`.`name` AS `Series`,`e`.`name` AS `Episodios`,`t`.`name` AS `Temporadas`,`t`.`release_date` AS `Fecha de lanzamiento`,`ce`.`name` AS `Clasificacion`,group_concat(`c`.`name` separator ',') AS `Categorias` from (((((`series_catalogos` `sc` join `catalogos` `c` on((`c`.`id` = `sc`.`catalogos_id`))) join `series` `s` on((`s`.`id` = `sc`.`series_id`))) join `temporadas` `t` on((`t`.`series_id` = `s`.`id`))) join `episodios` `e` on((`e`.`temporadas_id` = `t`.`id`))) join `clasificacion_edades` `ce` on((`ce`.`id` = `t`.`clasificacion_edades_id`))) group by `e`.`id` order by `t`.`release_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pais_catalogos`
--

/*!50001 DROP VIEW IF EXISTS `pais_catalogos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pais_catalogos` AS select `p`.`name` AS `Pais`,group_concat(`c`.`name` separator ',') AS `Catalogos` from (`paises` `p` join `catalogos` `c` on((`p`.`catalogos_id` = `c`.`id`))) group by `p`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `series_total_temporadas_series`
--

/*!50001 DROP VIEW IF EXISTS `series_total_temporadas_series`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `series_total_temporadas_series` AS select `s`.`name` AS `Series`,count(0) AS `Temporadas`,sum(`t`.`cant_episodios`) AS `Episodios` from (`series` `s` join (select `t`.`id` AS `id`,`t`.`series_id` AS `series_id`,`t`.`name` AS `name`,count(`e`.`id`) AS `cant_episodios` from (`temporadas` `t` left join `episodios` `e` on((`t`.`id` = `e`.`temporadas_id`))) group by `t`.`id`) `t` on((`t`.`series_id` = `s`.`id`))) group by `s`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-02  1:25:13
