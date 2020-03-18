CREATE DATABASE  IF NOT EXISTS `mm_cpsc5910team02` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mm_cpsc5910team02`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: cpsc5910team02.c5hkxwwgu62q.us-east-1.rds.amazonaws.com    Database: mm_cpsc5910team02
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `department_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `id_UNIQUE` (`department_id`),
  KEY `fk_Department_Employee1_idx` (`manager_id`),
  CONSTRAINT `fk_Department_Employee1` FOREIGN KEY (`manager_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (1,'Product Management',1),(2,'Marketing',2),(3,'Legal',3),(4,'Sales',4),(5,'HR',5);
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Download`
--

DROP TABLE IF EXISTS `Download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Download` (
  `download_id` int(11) NOT NULL,
  `download_date` date DEFAULT NULL,
  `platform` varchar(15) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`download_id`),
  UNIQUE KEY `id_UNIQUE` (`download_id`),
  KEY `fk_Download_Users1_idx` (`user_id`),
  KEY `fk_Download_Game1_idx` (`game_id`),
  CONSTRAINT `fk_Download_Game1` FOREIGN KEY (`game_id`) REFERENCES `Game` (`game_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Download_Users1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Download`
--

LOCK TABLES `Download` WRITE;
/*!40000 ALTER TABLE `Download` DISABLE KEYS */;
INSERT INTO `Download` VALUES (1,'2018-05-24','Android',49,84),(2,'2019-04-23','iPhone',48,13),(3,'2020-01-16','Android',6,50),(4,'2018-10-20','iPhone',18,26),(6,'2018-06-17','iPad',28,50),(7,'2019-10-25','PlayStation 4',47,9),(8,'2019-09-24','Android',49,17),(9,'2019-12-06','Xbox One',36,54),(10,'2020-02-02','Xbox One',39,24),(11,'2019-01-24','iPad',10,69),(12,'2019-11-30','Xbox One',8,83),(13,'2019-07-13','PlayStation 3',18,30),(14,'2019-01-28','iPad',28,77),(15,'2019-08-19','iPad',25,20),(16,'2018-03-25','PlayStation 4',36,82),(18,'2019-09-01','iPad',40,85),(19,'2020-01-22','Android',24,4),(20,'2019-12-21','PlayStation 4',32,29),(21,'2019-11-21','PlayStation 3',7,42),(22,'2018-09-22','PlayStation 4',12,20),(23,'2018-11-02','Android',50,76),(24,'2018-04-26','Android',12,33),(25,'2019-09-27','Xbox One',7,40),(26,'2019-04-23','iPad',2,1),(27,'2018-03-16','iPad',25,47),(28,'2018-09-26','PlayStation 4',38,6),(29,'2019-08-30','Xbox One',27,57),(30,'2018-10-14','Android',23,39),(31,'2018-10-14','PlayStation 4',45,13),(32,'2019-10-11','PlayStation 3',37,6),(33,'2020-01-28','iPad',17,4),(34,'2018-09-11','iPhone',2,76),(35,'2019-03-20','PlayStation 3',5,31),(36,'2019-04-01','PlayStation 4',27,4),(37,'2018-04-01','PlayStation 3',46,28),(38,'2019-08-20','iPhone',32,4),(39,'2018-08-22','iPad',48,84),(40,'2018-11-16','Xbox One',47,82),(41,'2020-01-02','Android',2,1),(42,'2018-12-25','iPad',20,14),(44,'2018-06-01','Android',27,39),(45,'2018-04-18','iPhone',18,59),(46,'2020-02-08','iPhone',49,73),(47,'2019-06-20','PlayStation 4',49,36),(48,'2018-05-14','Android',6,45),(49,'2018-07-04','iPad',3,48),(50,'2019-12-16','Android',10,1),(51,'2018-12-21','iPad',42,20),(52,'2019-06-29','PlayStation 3',33,82),(53,'2019-11-11','Android',28,45),(54,'2019-11-11','Android',42,80),(55,'2018-06-21','Android',16,71),(57,'2019-05-05','Android',22,71),(58,'2019-02-15','Xbox One',1,75),(59,'2019-12-05','Android',37,74),(60,'2019-08-07','Android',10,78),(61,'2019-09-09','PlayStation 4',35,57),(62,'2019-05-28','Android',44,81),(63,'2020-02-15','Android',36,54),(64,'2019-09-28','iPhone',20,4),(65,'2018-05-12','iPad',22,20),(66,'2018-10-04','iPhone',29,4),(67,'2018-10-27','PlayStation 3',12,40),(68,'2018-05-21','iPad',26,29),(70,'2019-03-17','Android',24,35),(71,'2018-07-25','PlayStation 4',12,22),(72,'2019-04-28','PlayStation 4',23,36),(73,'2018-05-24','iPhone',50,17),(74,'2019-01-29','iPhone',1,76),(75,'2019-07-23','PlayStation 4',30,6),(76,'2019-07-13','iPad',30,30),(77,'2019-06-08','iPad',20,24),(78,'2018-06-10','Android',50,85),(79,'2018-03-04','iPad',13,12),(80,'2019-04-24','Android',38,67),(81,'2019-02-13','iPhone',47,69),(82,'2020-01-29','Xbox One',9,22),(83,'2019-08-05','PlayStation 4',42,55),(84,'2018-11-25','iPhone',31,27),(85,'2018-04-26','iPad',28,37),(86,'2019-03-18','Xbox One',35,63),(87,'2018-05-05','PlayStation 4',35,33),(89,'2018-11-23','Android',29,2),(90,'2019-10-30','Android',49,87),(91,'2018-04-05','Android',27,68),(92,'2018-08-19','iPhone',47,4),(93,'2019-08-15','iPad',40,76),(94,'2019-12-11','PlayStation 3',48,38),(95,'2019-08-02','PlayStation 3',41,23),(96,'2019-06-09','iPhone',6,70),(97,'2018-06-13','iPad',37,41),(98,'2018-03-05','Xbox One',11,88),(99,'2019-01-01','iPad',6,47),(100,'2018-03-29','PlayStation 3',10,18),(101,'2019-09-13','iPhone',28,54),(102,'2018-08-06','Android',15,3),(103,'2018-03-10','iPhone',26,43),(104,'2019-10-05','iPhone',48,61),(105,'2019-07-01','PlayStation 3',20,1),(106,'2019-09-29','PlayStation 3',11,44),(107,'2018-05-08','PlayStation 4',50,73),(108,'2019-10-10','PlayStation 4',49,76),(109,'2018-10-27','PlayStation 3',26,16),(110,'2018-11-22','iPad',16,17),(112,'2018-06-06','Xbox One',39,78),(113,'2019-11-15','Android',25,34),(114,'2018-10-24','iPad',33,26),(115,'2020-02-09','PlayStation 4',44,64),(117,'2018-05-06','Xbox One',29,35),(118,'2020-01-19','Xbox One',27,14),(119,'2018-08-17','Xbox One',25,72),(120,'2019-04-26','iPad',29,66),(121,'2018-03-02','Xbox One',5,7),(122,'2019-07-05','iPad',41,85),(123,'2019-12-02','Android',32,44),(124,'2019-05-29','Xbox One',19,75),(125,'2018-06-19','iPhone',45,75),(126,'2019-02-05','Xbox One',36,24),(127,'2019-11-17','iPad',37,27),(128,'2018-06-07','iPhone',43,81),(129,'2019-07-16','PlayStation 3',11,68),(130,'2018-05-23','Android',7,31),(131,'2019-03-06','Xbox One',27,90),(133,'2020-02-02','PlayStation 3',4,2),(134,'2019-09-10','PlayStation 3',49,65),(135,'2018-06-23','PlayStation 3',19,80),(136,'2020-01-03','iPhone',49,4),(137,'2019-10-15','Android',21,79),(138,'2019-04-16','Android',36,81),(139,'2020-02-16','Android',19,56),(140,'2019-02-25','PlayStation 4',27,7),(141,'2020-01-31','iPhone',20,4),(143,'2019-11-09','PlayStation 4',9,57),(144,'2018-07-20','iPhone',50,80),(145,'2019-12-21','Android',30,35),(146,'2019-04-13','Android',11,80),(147,'2018-07-06','Android',15,59),(148,'2018-09-12','iPad',27,91),(149,'2018-07-16','Xbox One',35,34),(150,'2019-03-14','iPad',1,20),(151,'2019-10-28','Android',30,14),(152,'2018-08-15','PlayStation 4',10,42),(153,'2019-06-29','Xbox One',25,28),(154,'2019-03-04','PlayStation 4',5,89),(155,'2019-05-04','Xbox One',42,5),(156,'2018-08-31','iPhone',3,5),(157,'2018-10-06','Android',30,58),(158,'2018-06-19','iPhone',15,54),(159,'2019-02-15','iPad',13,5),(160,'2018-08-22','Android',49,10),(161,'2019-05-07','iPad',2,31),(162,'2019-02-19','Xbox One',28,69),(163,'2018-04-21','iPad',42,70),(165,'2018-03-08','Android',34,17),(166,'2018-10-20','iPad',4,13),(167,'2019-01-15','Xbox One',17,66),(168,'2019-04-21','iPhone',9,65),(169,'2020-01-24','PlayStation 4',2,79),(170,'2019-12-16','Xbox One',36,52),(171,'2018-06-11','PlayStation 4',36,89),(172,'2018-04-05','Android',39,33),(174,'2018-07-07','Xbox One',19,87),(175,'2019-06-03','Android',22,59),(176,'2019-10-11','PlayStation 4',15,25),(177,'2019-01-22','PlayStation 3',4,83),(178,'2019-11-23','PlayStation 4',11,62),(179,'2018-03-12','Xbox One',44,29),(180,'2018-03-09','PlayStation 3',31,42),(182,'2018-06-14','iPad',4,14),(183,'2018-04-21','Android',21,85),(184,'2018-09-15','Android',29,10),(185,'2019-12-10','iPhone',16,78),(186,'2018-04-09','iPhone',23,40),(187,'2020-01-02','PlayStation 4',2,50),(188,'2019-01-14','Xbox One',19,66),(189,'2019-05-18','PlayStation 4',27,54),(190,'2018-05-08','iPhone',43,83),(191,'2020-02-01','Android',11,45),(192,'2019-11-24','PlayStation 3',33,73),(193,'2018-03-11','PlayStation 3',23,9),(195,'2019-12-29','Android',7,74),(196,'2019-07-07','iPad',36,60),(198,'2019-12-04','Xbox One',28,28),(199,'2018-07-07','Android',12,26),(200,'2019-06-06','PlayStation 4',45,80);
/*!40000 ALTER TABLE `Download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `managed_by` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `id_UNIQUE` (`employee_id`),
  KEY `fk_Employee_Employee1_idx` (`managed_by`),
  KEY `fk_Employee_Group1_idx` (`group_id`,`department_id`),
  CONSTRAINT `fk_Employee_Employee1` FOREIGN KEY (`managed_by`) REFERENCES `Employee` (`employee_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Employee_Group1` FOREIGN KEY (`group_id`, `department_id`) REFERENCES `Group` (`group`, `department_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Gearard','Doerrling','2018-01-10','Male','1981-01-23',NULL,NULL,1),(2,'Mike','Liu','2018-01-10','Male','1991-01-23',NULL,NULL,2),(3,'Nancy','Doerrling','2018-01-10','Male','1996-01-23',NULL,NULL,3),(4,'Joe','Han','2018-01-10','Male','1993-01-23',NULL,NULL,4),(5,'Joie','Baudin','2018-01-10','Male','1990-01-23',NULL,NULL,5),(6,'Darcie','Ithell','2015-06-20','Female','1995-12-29',1,1,1),(7,'Cammie','Tukely','2017-08-15','Female','1985-01-02',1,2,1),(8,'Arlen','Astlet','2017-02-24','Male','1989-11-09',2,1,2),(9,'Neely','Whitmarsh','2018-09-09','Female','1988-09-07',2,2,2),(10,'Kermit','McHale','2018-08-15','Male','1984-03-19',3,1,3),(11,'Tymothy','O\' Dooley','2019-04-05','Male','1986-07-21',3,2,3),(12,'Killie','Blouet','2018-10-18','Male','1981-06-24',4,1,4),(13,'Charity','Oxburgh','2019-01-26','Female','1992-01-22',4,2,4),(14,'Bette','Gemlbett','2016-11-22','Female','1987-08-02',5,1,5),(15,'Fanchon','Pingston','2017-10-25','Female','1987-11-23',5,2,5),(16,'Fenelia','Anger','2018-05-10','Female','1996-09-11',6,1,1),(17,'Broderick','Leving','2019-04-26','Male','1998-06-21',6,1,1),(18,'Orran','Lints','2016-04-12','Male','1990-04-26',7,2,1),(19,'Ema','Helin','2019-05-29','Female','1986-11-20',7,2,1),(20,'Mela','St. Clair','2016-08-01','Female','1984-08-11',8,1,2),(21,'Rozalie','Mallinar','2018-02-11','Female','1983-01-15',8,1,2),(22,'Eva','Lorkins','2016-01-17','Female','1985-04-26',9,2,2),(23,'Sarajane','Crosetti','2017-04-23','Female','1999-01-05',9,2,2),(24,'Christean','Bruntjen','2016-08-23','Female','1981-09-27',10,1,3),(25,'Ursala','Skate','2015-08-08','Female','1994-02-19',10,1,3),(26,'Mina','Habben','2016-04-20','Female','1987-02-28',11,2,3),(27,'Kori','Debold','2017-07-16','Female','1981-01-22',11,2,3),(28,'Briant','Tinline','2017-07-18','Male','1990-05-30',12,1,4),(29,'Joseph','Mattiassi','2015-11-20','Male','1998-05-06',12,1,4),(30,'Fanya','Umpleby','2017-11-29','Female','1988-11-16',13,2,4),(31,'Broderic','Gaiger','2017-05-11','Male','1985-07-27',13,2,4),(32,'Townsend','Rhodef','2016-02-11','Male','1991-10-28',14,1,5),(33,'Neill','Keyser','2019-01-11','Male','1986-12-15',14,1,5),(34,'Arlee','Lyddiard','2015-03-03','Female','1998-09-09',15,2,5),(35,'Elna','Schulze','2018-10-14','Female','1985-04-26',15,2,5);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Game` (
  `game_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `publisher_charged_money` decimal(10,2) DEFAULT NULL,
  `rating` varchar(6) DEFAULT NULL,
  `size_in_MB` int(11) DEFAULT NULL,
  `genre_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `ID_UNIQUE` (`game_id`),
  KEY `fk_Game_Genre1_idx` (`genre_id`),
  KEY `fk_Game_Publisher1_idx` (`publisher_id`),
  CONSTRAINT `fk_Game_Genre1` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`genre_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Game_Publisher1` FOREIGN KEY (`publisher_id`) REFERENCES `Publisher` (`publisher_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game`
--

LOCK TABLES `Game` WRITE;
/*!40000 ALTER TABLE `Game` DISABLE KEYS */;
INSERT INTO `Game` VALUES (1,'Grand Theft Auto V ',76.61,'M',8,1,1),(2,'The Last of Us',72.40,'M',1,1,2),(3,'Infinity Blade II',66.45,'T',1,2,3),(4,'Uncharted 3: Drake\'s Deception',71.02,'T',4,1,2),(5,'Pac-Man Championship Edition DX',98.78,'E',6,1,4),(6,'Red Dead Redemption -- Undead Nightmare',51.15,'M',3,1,1),(7,'Metal Gear Solid 4: Guns of the Patriots',28.68,'M',1,1,5),(8,'Grand Theft Auto IV',88.16,'M',2,1,1),(9,'Red Dead Redemption ',30.20,'M',5,1,1),(10,'FTL: Faster Than Light',88.16,'E10+',2,3,6),(12,'Minecraft',76.98,'E',8,1,2),(13,'Device 6',98.31,'T',9,5,8),(14,'Rayman Legends',42.45,'E10+',3,6,9),(16,'The World Ends with You: Solo Remix ',4.61,'T',8,7,10),(17,'Great Big War Game',21.43,'T',7,8,11),(18,'Mass Effect 3',13.37,'M',8,7,12),(19,'The Elder Scrolls V: Skyrim',26.94,'M',2,7,13),(20,'Rayman Origins',75.12,'E10+',9,6,9),(21,'Batman: Arkham City',50.19,'T',10,1,14),(22,'NBA 2K12',81.00,'E',1,9,1),(23,'FIFA Soccer 12',52.79,'E',8,9,12),(24,'Gesundheit',37.80,'E',5,5,5),(25,'Groove Coaster ',22.20,'E',7,10,15),(26,'Superbrothers: Sword and Sworcery EP',98.88,'T',6,4,16),(27,'Portal 2',36.72,'E10+',8,11,18),(28,'Mass Effect 2',7.46,'M',3,7,12),(29,'World of Goo',2.83,'E',2,5,17),(30,'NBA 2K11',24.93,'E',8,9,1),(31,'Call of Duty: Modern Warfare 2',89.20,'M',10,11,19),(32,'Uncharted 2: Among Thieves',44.49,'T',2,1,2),(33,'Zen Bound',28.53,'E',9,5,20),(34,'Rolando',50.02,'E',1,5,21),(35,'Resistance 2',64.13,'M',6,11,2),(36,'Castlevania: Symphony of the Night',79.36,'T',10,1,5),(37,'BioShock Infinite',91.08,'M',7,11,1),(38,'Ni no Kuni: Wrath of the White Witch',88.49,'E10+',5,7,4),(39,'Okami HD',97.58,'T',8,4,22),(40,'God of War Collection',7.98,'M',6,12,2),(41,'Fallout 3',75.43,'M',3,1,13),(42,'Demon\'s Souls',23.86,'M',3,7,4),(43,'BlazBlue: Calamity Trigger',25.75,'T',8,2,23),(44,'Killzone 2',65.36,'M',10,11,2),(45,'BioShock',32.01,'M',1,11,1),(46,'Bionic Commando Rearmed',90.86,'M',5,6,22),(47,'Rock Band (Special Edition)',81.92,'T',10,10,24),(48,'Call of Duty 4: Modern Warfare',19.28,'M',1,11,19),(50,'Child of Light',26.47,'E10+',10,7,9),(51,'Final Fantasy X / X-2 HD Remaster',85.09,'T',8,7,10),(52,'NBA 2K14',46.69,'E',4,9,1),(54,'Call of Duty: Black Ops II',68.17,'M',5,11,19),(55,'Punch Quest ',94.03,'T',8,1,25),(56,'Batman: Arkham Asylum',28.03,'T',9,1,26),(57,'God of War III',2.20,'M',2,1,2),(58,'Street Fighter IV',19.03,'T',1,2,22),(59,'Ninja Gaiden Sigma',25.88,'M',9,1,26),(60,'Prince of Persia',44.97,'T',7,6,9),(61,'Puzzle Quest: Challenge of the Warlords',9.20,'E10+',1,5,27),(62,'Tom Clancy\'s Splinter Cell: Blacklist',90.52,'M',10,1,9),(63,'Dishonored',7.17,'M',2,1,13),(64,'Bad Piggies',14.18,'E10+',3,1,28),(65,'Assassin\'s Creed II',86.39,'M',5,1,9),(66,'WipEout HD Fury',23.38,'E10+',4,13,2),(67,'Infamous',19.73,'T',5,1,2),(68,'Call of Duty: World at War',86.27,'M',8,11,19),(69,'The Elder Scrolls IV: Oblivion',25.46,'M',5,7,9),(70,'Tomb Raider: Definitive Edition',97.69,'M',1,1,10),(71,'FIFA 14',54.73,'E',6,9,12),(72,'Marvel Puzzle Quest: Dark Reign',87.69,'T',9,5,27),(73,'Disgaea D2: A Brighter Darkness ',2.01,'T',3,1,29),(74,'Infinity Blade III',70.53,'T',2,2,3),(75,'Joe Danger',56.80,'E10+',6,1,30),(76,'Mutant Mudds',12.12,'E10+',10,6,31),(77,'Minigore 2: Zombies',76.71,'E10+',8,11,32),(78,'NBA 2K13',58.91,'E',2,9,1),(79,'BioShock 2',43.91,'M',3,11,1),(80,'Madden NFL 09',88.12,'E',8,9,12),(81,'Uncharted: Drake\'s Fortune',2.57,'T',6,1,2),(82,'Resistance: Fall of Man',91.94,'M',3,11,2),(83,'Hearthstone: Heroes of WarCraft',43.13,'',5,14,33),(84,'Dark Souls II',91.25,'T',6,1,4),(85,'South Park: The Stick of Truth',62.91,'M',8,7,9),(86,'Rocksmith 2014',2.41,'T',7,10,9),(87,'Puzzle Craft',16.55,'E',9,5,32),(88,'Devil\'s Attorney',82.53,'T',10,8,34),(89,'Deus Ex: The Fall',3.74,'M',7,11,10),(90,'Dungeon Village ',17.51,'E10+',2,3,35),(91,'Transformers G1: Awakening',20.69,'E10+',7,1,36);
/*!40000 ALTER TABLE `Game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game_has_Language`
--

DROP TABLE IF EXISTS `Game_has_Language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Game_has_Language` (
  `Game_id` int(11) NOT NULL,
  `Language_id` int(11) NOT NULL,
  PRIMARY KEY (`Game_id`,`Language_id`),
  KEY `fk_Game_has_Language_Language1_idx` (`Language_id`),
  KEY `fk_Game_has_Language_Game1_idx` (`Game_id`),
  CONSTRAINT `fk_Game_has_Language_Game1` FOREIGN KEY (`Game_id`) REFERENCES `Game` (`game_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Game_has_Language_Language1` FOREIGN KEY (`Language_id`) REFERENCES `Language` (`language_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game_has_Language`
--

LOCK TABLES `Game_has_Language` WRITE;
/*!40000 ALTER TABLE `Game_has_Language` DISABLE KEYS */;
INSERT INTO `Game_has_Language` VALUES (6,1),(12,1),(14,1),(18,1),(21,1),(22,1),(23,1),(26,1),(27,1),(29,1),(35,1),(38,1),(39,1),(41,1),(42,1),(43,1),(47,1),(57,1),(59,1),(60,1),(63,1),(64,1),(65,1),(72,1),(73,1),(76,1),(77,1),(79,1),(85,1),(86,1),(12,2),(13,2),(14,2),(17,2),(22,2),(26,2),(30,2),(32,2),(34,2),(35,2),(38,2),(44,2),(45,2),(46,2),(50,2),(51,2),(54,2),(58,2),(59,2),(62,2),(65,2),(68,2),(69,2),(73,2),(76,2),(77,2),(80,2),(84,2),(87,2),(88,2),(91,2),(2,3),(3,3),(5,3),(6,3),(12,3),(18,3),(19,3),(22,3),(27,3),(28,3),(31,3),(35,3),(38,3),(39,3),(40,3),(41,3),(45,3),(46,3),(47,3),(50,3),(52,3),(54,3),(59,3),(60,3),(63,3),(68,3),(70,3),(72,3),(73,3),(79,3),(81,3),(89,3),(2,4),(4,4),(8,4),(9,4),(16,4),(20,4),(21,4),(23,4),(29,4),(32,4),(44,4),(48,4),(54,4),(55,4),(59,4),(60,4),(64,4),(67,4),(69,4),(80,4),(81,4),(83,4),(84,4),(87,4),(88,4),(89,4),(3,5),(4,5),(5,5),(6,5),(8,5),(14,5),(18,5),(19,5),(20,5),(21,5),(23,5),(25,5),(27,5),(28,5),(29,5),(32,5),(39,5),(47,5),(56,5),(59,5),(62,5),(66,5),(67,5),(69,5),(71,5),(73,5),(76,5),(78,5),(80,5),(83,5),(87,5),(89,5),(90,5);
/*!40000 ALTER TABLE `Game_has_Language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `id_UNIQUE` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Action'),(2,'Fighting'),(3,'Simulation'),(4,'Adventure'),(5,'Puzzle'),(6,'Platformer'),(7,'RPG'),(8,'Strategy'),(9,'Sports'),(10,'Music'),(11,'Shooter'),(12,'Compilation'),(13,'Racing'),(14,'Card');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Group` (
  `group` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `leader_id` int(11) NOT NULL,
  PRIMARY KEY (`group`,`department_id`),
  KEY `fk_Group_Department1_idx` (`department_id`),
  KEY `fk_Group_Employee1_idx` (`leader_id`),
  CONSTRAINT `fk_Group_Department1` FOREIGN KEY (`department_id`) REFERENCES `Department` (`department_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Group_Employee1` FOREIGN KEY (`leader_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,1,6),(2,1,7),(1,2,8),(2,2,9),(1,3,10),(2,3,11),(1,4,12),(2,4,13),(1,5,14),(2,5,15);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Language`
--

DROP TABLE IF EXISTS `Language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `id_UNIQUE` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Language`
--

LOCK TABLES `Language` WRITE;
/*!40000 ALTER TABLE `Language` DISABLE KEYS */;
INSERT INTO `Language` VALUES (1,'English'),(2,'French'),(3,'Spanish'),(4,'Chinese'),(5,'Japanese');
/*!40000 ALTER TABLE `Language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Overview_regionsWithTotalNumberOfUsers`
--

DROP TABLE IF EXISTS `Overview_regionsWithTotalNumberOfUsers`;
/*!50001 DROP VIEW IF EXISTS `Overview_regionsWithTotalNumberOfUsers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Overview_regionsWithTotalNumberOfUsers` AS SELECT 
 1 AS `region_id`,
 1 AS `region_name`,
 1 AS `total_number_of_user`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Publisher`
--

DROP TABLE IF EXISTS `Publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`publisher_id`),
  UNIQUE KEY `id_UNIQUE` (`publisher_id`),
  KEY `fk_Publisher_Region1_idx` (`region_id`),
  CONSTRAINT `fk_Publisher_Region1` FOREIGN KEY (`region_id`) REFERENCES `Region` (`region_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Publisher`
--

LOCK TABLES `Publisher` WRITE;
/*!40000 ALTER TABLE `Publisher` DISABLE KEYS */;
INSERT INTO `Publisher` VALUES (1,'Take-Two Interactive',3),(2,'Sony Computer Entertainment',4),(3,'Epic Games',4),(4,'Namco Bandai Games',6),(5,'Konami Digital Entertainment',3),(6,'Subset Games',6),(7,'Telltale Games',1),(8,'Simogo',6),(9,'Ubisoft',3),(10,'Square Enix',2),(11,'Rubicon Developments',4),(12,'Electronic Arts',3),(13,'Bethesda Softworks',2),(14,'Warner Bros. Interactive Entertainment',2),(15,'Taito',4),(16,'Capybara',2),(17,'2D Boy',3),(18,'Valve',6),(19,'Activision',6),(20,'Chillingo LTD',5),(21,'HandCircus',4),(22,'Capcom',3),(23,'PQube',5),(24,'MTV Games',6),(25,'Rocketcat Games',3),(26,'Eidos Interactive',5),(27,'D3Publisher',3),(28,'Rovio Entertainment',5),(29,'Nippon Ichi Software',6),(30,'Hello Games',6),(31,'Renegade Kid',5),(32,'Chillingo',6),(33,'Blizzard Entertainment',4),(34,'1337 Game Design',2),(35,'Kairosoft',2),(36,'Glu Mobile',5);
/*!40000 ALTER TABLE `Publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recommendation`
--

DROP TABLE IF EXISTS `Recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recommendation` (
  `recommendation_id` int(11) NOT NULL,
  `recommendation_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`recommendation_id`),
  UNIQUE KEY `id_UNIQUE` (`recommendation_id`),
  KEY `fk_Recommendation_Game1_idx` (`game_id`),
  KEY `fk_Recommendation_Users1_idx` (`user_id`),
  CONSTRAINT `fk_Recommendation_Game1` FOREIGN KEY (`game_id`) REFERENCES `Game` (`game_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Recommendation_Users1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recommendation`
--

LOCK TABLES `Recommendation` WRITE;
/*!40000 ALTER TABLE `Recommendation` DISABLE KEYS */;
INSERT INTO `Recommendation` VALUES (1,'2019-12-01',3,29),(2,'2018-08-10',40,88),(3,'2018-11-30',30,74),(4,'2018-03-05',11,66),(5,'2019-12-14',11,46),(6,'2019-12-03',2,65),(7,'2018-12-27',17,3),(8,'2019-06-03',50,74),(9,'2019-10-10',23,17),(10,'2019-08-15',17,57),(11,'2019-04-22',5,83),(12,'2019-06-03',50,26),(13,'2019-09-30',18,8),(14,'2018-09-19',42,19),(15,'2018-07-04',49,80),(16,'2020-02-05',4,47),(17,'2019-10-17',13,68),(18,'2019-06-18',14,6),(20,'2019-11-16',40,6),(21,'2018-03-13',3,9),(22,'2019-12-30',45,79),(23,'2019-11-25',8,69),(24,'2019-01-23',11,12),(25,'2019-03-01',2,63),(26,'2019-10-11',23,87),(27,'2019-06-03',17,19),(28,'2019-12-01',30,1),(29,'2018-12-01',37,32),(30,'2020-01-24',44,67),(31,'2018-11-04',2,3),(32,'2019-04-03',25,14),(33,'2018-12-07',32,90),(34,'2018-10-18',11,32),(35,'2018-11-18',31,2),(36,'2019-06-26',24,78),(37,'2019-08-11',23,79),(38,'2018-08-19',13,33),(39,'2019-08-11',31,75),(40,'2019-10-24',25,86),(41,'2019-02-08',22,69),(42,'2020-01-01',11,22),(43,'2019-11-30',16,4),(44,'2018-04-29',36,12),(45,'2019-11-30',22,1),(46,'2019-05-26',1,64),(47,'2019-09-19',46,65),(49,'2018-04-10',22,56),(50,'2019-02-14',7,12),(51,'2019-08-17',50,33),(52,'2019-08-04',25,50),(53,'2019-03-28',45,60),(54,'2019-04-15',10,19),(55,'2019-05-21',4,64),(56,'2019-07-01',47,3),(57,'2018-07-03',24,48),(58,'2019-05-13',5,13),(59,'2018-06-29',29,28),(60,'2019-03-20',38,42),(61,'2018-11-17',48,33),(62,'2019-05-22',45,89),(63,'2019-10-26',14,16),(64,'2019-09-27',21,10),(65,'2020-01-28',27,62),(66,'2018-09-20',11,1),(67,'2019-11-11',21,89),(68,'2018-05-30',31,66),(69,'2019-03-07',2,43),(70,'2019-04-25',48,28);
/*!40000 ALTER TABLE `Recommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Region` (
  `region_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `id_UNIQUE` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1,'Asia'),(2,'North America'),(3,'Europe'),(4,'Australia'),(5,'South America'),(6,'Africa');
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Review` (
  `review_id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `id_UNIQUE` (`review_id`),
  KEY `fk_Review_Game1_idx` (`game_id`),
  KEY `fk_Review_Users1_idx` (`user_id`),
  CONSTRAINT `fk_Review_Game1` FOREIGN KEY (`game_id`) REFERENCES `Game` (`game_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Review_Users1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (1,1,'2018-09-20',30,71),(2,4,'2019-03-06',42,48),(3,4,'2019-02-25',1,90),(4,3,'2018-08-02',25,86),(5,1,'2018-05-22',2,35),(6,3,'2019-07-23',33,45),(7,4,'2018-07-26',5,6),(9,2,'2018-11-06',5,3),(10,4,'2018-10-16',24,50),(11,5,'2019-01-12',50,34),(12,4,'2020-01-12',10,75),(13,3,'2019-10-23',39,86),(14,2,'2018-06-06',44,41),(15,3,'2019-03-22',26,20),(16,4,'2019-02-15',5,14),(17,3,'2020-01-09',30,69),(18,1,'2019-08-30',17,89),(19,5,'2018-07-26',27,46),(20,5,'2019-06-15',46,22),(21,1,'2019-05-28',34,69),(22,4,'2018-11-20',6,17),(23,3,'2019-06-18',23,24),(24,1,'2018-09-25',25,83),(25,3,'2020-02-01',5,73),(26,1,'2019-11-28',15,83),(27,4,'2019-07-19',6,20),(28,4,'2019-07-25',29,5),(29,2,'2019-02-27',40,47),(30,2,'2018-03-20',4,23),(31,2,'2019-01-10',7,13),(32,4,'2019-01-14',35,47),(33,3,'2019-03-21',42,41),(34,5,'2018-05-21',15,59),(35,2,'2019-06-22',39,54),(36,5,'2018-10-22',39,12),(37,5,'2018-05-23',40,50),(40,3,'2019-08-01',14,85),(41,1,'2018-10-27',26,86),(42,5,'2018-10-21',40,3),(43,5,'2019-09-09',45,58),(44,5,'2020-01-20',1,52),(45,3,'2018-12-12',5,9),(46,2,'2019-04-12',50,39),(47,3,'2018-09-09',41,24),(48,4,'2018-08-28',39,37),(49,2,'2019-02-26',25,13),(50,5,'2020-02-10',39,90),(51,3,'2019-03-14',37,77),(52,1,'2018-12-14',27,21),(53,5,'2019-05-06',35,30),(54,2,'2019-03-08',20,68),(55,4,'2019-11-25',10,44),(56,2,'2019-05-17',42,67),(57,5,'2019-09-20',9,45),(58,4,'2019-10-02',38,5),(59,2,'2019-06-30',40,44),(60,3,'2019-02-09',40,52),(61,1,'2019-04-15',50,69),(62,1,'2018-06-21',38,50),(63,3,'2019-02-25',47,81),(64,2,'2018-09-25',15,7),(65,4,'2018-07-27',7,12),(66,1,'2018-11-16',35,33),(67,5,'2018-10-15',24,34),(68,5,'2019-03-14',16,4),(69,5,'2019-10-29',35,32),(70,4,'2019-09-13',49,50),(71,1,'2018-11-18',29,4),(72,4,'2019-01-23',45,37),(73,4,'2019-01-02',49,47),(74,5,'2018-08-16',20,30),(75,2,'2019-10-03',25,18),(76,4,'2018-11-04',38,23),(77,4,'2018-06-01',14,86),(78,3,'2019-03-12',5,60),(80,1,'2019-01-09',45,91),(81,5,'2018-09-08',49,35),(82,2,'2018-12-31',48,29),(83,2,'2018-04-30',38,16),(84,4,'2018-06-29',2,7),(85,2,'2018-04-05',13,36),(86,2,'2019-07-15',4,33),(87,5,'2018-08-03',18,31),(88,1,'2018-03-23',31,29),(89,4,'2018-12-10',19,77),(90,4,'2018-07-11',24,50),(91,3,'2018-06-21',5,41),(92,3,'2018-06-24',43,2),(93,3,'2018-08-02',44,73),(94,4,'2020-01-30',4,25),(95,5,'2018-05-01',2,60),(96,3,'2018-11-26',30,30),(97,2,'2019-02-22',39,68),(98,5,'2018-12-31',15,74),(99,3,'2019-06-20',8,71),(100,3,'2019-11-16',36,44),(101,2,'2019-11-29',30,13),(102,3,'2018-03-18',21,75),(103,5,'2018-08-29',28,69),(104,5,'2019-04-30',6,19),(105,4,'2018-03-19',4,38),(106,2,'2018-03-14',10,62),(107,4,'2019-05-10',45,90),(108,2,'2020-02-23',3,10),(109,5,'2019-01-14',26,3),(110,2,'2019-04-02',25,4),(111,3,'2018-12-01',3,58),(112,1,'2018-10-28',29,55),(113,5,'2018-07-11',42,50),(114,4,'2019-10-04',27,69),(116,4,'2018-06-03',31,74),(117,2,'2018-08-13',47,16),(118,1,'2019-11-01',17,89),(120,1,'2019-09-27',44,30),(121,2,'2019-02-07',46,25),(122,2,'2018-06-24',48,68),(123,4,'2019-08-17',3,39),(124,2,'2018-06-02',26,14),(125,2,'2018-07-06',14,28),(126,3,'2019-11-10',23,69),(127,4,'2019-08-29',17,80),(128,4,'2019-03-05',9,33),(129,2,'2019-09-10',21,86),(130,1,'2019-02-22',26,48),(131,5,'2019-07-24',14,45),(132,5,'2019-01-01',17,71),(133,1,'2018-03-09',6,71),(134,3,'2019-01-21',16,3),(135,2,'2018-10-06',10,68),(136,2,'2018-03-23',32,29),(137,2,'2018-10-03',11,16),(138,2,'2019-09-20',12,83),(139,2,'2018-08-02',37,8),(140,5,'2018-11-23',31,48),(141,3,'2020-01-25',18,29),(142,3,'2018-06-05',21,63),(143,1,'2018-11-15',13,68),(144,5,'2019-03-23',31,48),(145,3,'2019-04-14',30,83),(146,1,'2019-11-06',27,69),(147,4,'2019-12-18',50,46),(148,3,'2019-10-17',6,9),(149,5,'2018-07-30',30,56),(150,2,'2020-02-08',40,23),(151,4,'2018-08-23',25,13),(152,4,'2020-01-07',50,81),(153,3,'2019-09-25',38,73),(154,1,'2019-07-12',31,80),(155,2,'2018-10-09',45,47),(156,4,'2019-11-01',50,75),(157,4,'2019-06-03',2,75),(158,1,'2019-08-16',9,58),(159,3,'2019-04-10',37,61),(160,1,'2019-12-12',27,65),(161,2,'2018-10-27',46,75),(162,1,'2019-12-06',21,12),(163,5,'2019-10-06',10,91),(164,5,'2019-12-11',31,1),(165,3,'2019-01-22',49,48),(166,4,'2019-06-15',19,75),(167,1,'2019-06-08',4,89),(168,3,'2018-07-06',22,44),(169,4,'2019-01-22',27,51),(170,3,'2019-10-24',36,65),(171,3,'2019-06-05',13,24),(172,3,'2018-12-09',20,32),(173,3,'2018-06-06',49,2),(174,4,'2019-01-14',35,6),(175,4,'2018-12-17',2,87),(176,5,'2018-04-18',14,1),(177,4,'2018-09-27',8,69),(178,5,'2019-07-21',15,39),(179,5,'2018-09-19',15,1),(180,2,'2019-06-01',26,75),(181,4,'2020-01-05',29,91),(182,5,'2020-02-18',48,78),(183,3,'2019-12-04',33,12),(184,4,'2019-09-18',6,33),(185,2,'2020-01-08',13,60),(186,2,'2019-07-20',48,67),(187,3,'2019-11-11',7,39),(188,4,'2019-04-11',4,9),(189,1,'2019-10-19',8,23),(190,3,'2019-11-12',50,10),(191,4,'2018-08-18',35,58),(192,4,'2019-10-07',39,55),(193,5,'2019-09-01',31,24),(194,1,'2018-11-24',8,71),(195,5,'2019-09-02',25,81),(196,2,'2019-06-17',26,43),(198,4,'2019-04-30',1,24),(199,3,'2019-04-17',16,46),(200,3,'2019-02-03',38,48);
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sponsorship`
--

DROP TABLE IF EXISTS `Sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sponsorship` (
  `sponsorship_id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `money` decimal(10,0) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `game_id` int(11) NOT NULL,
  PRIMARY KEY (`sponsorship_id`),
  UNIQUE KEY `id_UNIQUE` (`sponsorship_id`),
  KEY `fk_Sponsorship_Game1_idx` (`game_id`),
  CONSTRAINT `fk_Sponsorship_Game1` FOREIGN KEY (`game_id`) REFERENCES `Game` (`game_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sponsorship`
--

LOCK TABLES `Sponsorship` WRITE;
/*!40000 ALTER TABLE `Sponsorship` DISABLE KEYS */;
INSERT INTO `Sponsorship` VALUES (1,'financial',10000,'2018-10-27','2018-11-27',32),(2,'media',0,'2018-08-11','2018-09-11',50),(3,'financial',10000,'2018-05-19','2018-06-19',38),(4,'financial',5000,'2019-06-24','2019-07-24',17),(5,'event',0,'2019-10-24','2019-11-24',25),(6,'event',0,'2018-07-08','2018-08-08',75),(7,'financial',10000,'2019-10-12','2019-11-12',68),(8,'event',0,'2018-04-30','2018-05-30',38),(9,'event',0,'2018-10-28','2018-11-28',60),(10,'event',0,'2019-02-18','2019-03-18',42),(11,'financial',10000,'2018-03-25','2018-04-25',25),(12,'event',0,'2018-10-22','2018-11-22',45),(13,'financial',25000,'2018-11-24','2018-12-24',38),(14,'financial',10000,'2018-11-23','2018-12-23',75),(15,'event',0,'2019-02-03','2019-03-03',2),(16,'media',0,'2018-11-11','2018-12-11',33),(17,'media',0,'2019-01-14','2019-02-14',9),(18,'financial',30000,'2020-01-24','2020-02-24',38),(19,'financial',10000,'2020-01-15','2020-02-15',47),(20,'media',0,'2018-08-11','2018-09-11',10),(21,'media',0,'2019-01-05','2019-02-05',56),(22,'financial',10000,'2020-01-10','2020-02-10',1),(23,'media',0,'2019-03-23','2019-04-23',44),(24,'financial',3000,'2018-06-22','2018-07-22',60),(25,'event',0,'2019-12-11','2020-01-11',46),(26,'financial',10000,'2018-12-25','2019-01-25',28),(27,'media',0,'2018-05-30','2018-06-30',75),(28,'financial',10000,'2018-06-26','2018-07-26',5),(29,'financial',6000,'2019-10-10','2019-11-10',4),(30,'financial',7000,'2019-12-27','2020-01-27',5),(31,'media',0,'2019-05-05','2019-06-05',10),(32,'event',0,'2018-03-20','2018-04-20',33),(33,'media',0,'2018-05-10','2018-06-10',33),(34,'financial',10000,'2018-06-22','2018-07-22',38),(35,'event',0,'2019-03-21','2019-04-21',28),(36,'event',0,'2018-07-23','2018-08-23',79),(37,'media',0,'2019-07-29','2019-08-29',84),(38,'media',0,'2019-09-09','2019-10-09',79),(39,'event',0,'2019-01-02','2019-02-02',69),(40,'media',0,'2018-05-01','2018-06-01',89),(41,'financial',10000,'2019-07-23','2019-08-23',24),(42,'media',0,'2018-11-14','2018-12-14',30),(43,'event',0,'2018-05-28','2018-06-28',3),(44,'financial',12000,'2019-10-25','2019-11-25',32),(46,'media',0,'2018-10-06','2018-11-06',26),(48,'event',0,'2019-05-22','2019-06-22',58),(49,'event',0,'2019-08-06','2019-09-06',25),(50,'event',0,'2019-09-02','2019-10-02',54);
/*!40000 ALTER TABLE `Sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sponsorship_has_Group`
--

DROP TABLE IF EXISTS `Sponsorship_has_Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sponsorship_has_Group` (
  `sponsorship_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`sponsorship_id`,`group_id`,`department_id`),
  KEY `fk_Sponsorship_has_Group_Sponsorship1_idx` (`sponsorship_id`),
  KEY `fk_Sponsorship_has_Group_Group1_idx` (`group_id`,`department_id`),
  CONSTRAINT `fk_Sponsorship_has_Group_Group1` FOREIGN KEY (`group_id`, `department_id`) REFERENCES `Group` (`group`, `department_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Sponsorship_has_Group_Sponsorship1` FOREIGN KEY (`sponsorship_id`) REFERENCES `Sponsorship` (`sponsorship_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sponsorship_has_Group`
--

LOCK TABLES `Sponsorship_has_Group` WRITE;
/*!40000 ALTER TABLE `Sponsorship_has_Group` DISABLE KEYS */;
INSERT INTO `Sponsorship_has_Group` VALUES (1,1,4),(2,2,2),(3,1,1),(3,2,2),(4,1,2),(4,1,3),(6,1,2),(6,2,2),(7,2,1),(7,2,5),(8,1,2),(8,2,4),(9,2,2),(10,1,4),(11,1,1),(11,1,3),(11,2,4),(12,1,1),(12,2,3),(12,2,5),(13,2,2),(14,1,1),(14,2,1),(14,2,2),(15,2,2),(15,2,5),(16,1,3),(16,2,2),(16,2,3),(17,1,1),(17,1,4),(17,2,4),(18,1,3),(18,1,5),(18,2,4),(19,1,1),(19,1,5),(19,2,5),(20,1,1),(22,1,3),(22,2,2),(23,1,3),(23,2,1),(24,2,1),(26,1,3),(26,2,1),(27,1,3),(27,2,5),(28,1,2),(28,2,5),(29,1,2),(29,1,3),(29,2,2),(30,1,5),(31,1,5),(31,2,2),(31,2,5),(32,2,1),(32,2,3),(33,2,1),(34,2,3),(35,1,3),(35,1,5),(35,2,5),(36,2,1),(37,1,5),(38,1,4),(38,1,5),(38,2,4),(39,1,1),(39,1,2),(39,2,3),(40,2,3),(40,2,5),(42,2,4),(43,1,2),(43,2,2),(44,1,1),(44,1,3),(44,1,4),(45,2,2),(46,1,2),(46,2,3),(47,1,4),(48,1,1),(48,1,4),(48,2,3),(48,2,5),(49,1,2),(49,1,4),(50,1,1),(50,2,1);
/*!40000 ALTER TABLE `Sponsorship_has_Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `user_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `first_registration_date` date DEFAULT NULL,
  `region` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `id_UNIQUE` (`user_id`),
  KEY `fk_Users_Region_idx` (`region`),
  CONSTRAINT `fk_User_Region` FOREIGN KEY (`region`) REFERENCES `Region` (`region_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'bmccalum0','bprazer0@tuttocitta.it','F','2005-10-10','2019-12-11',6),(2,'bwhymark1','bhuburn1@mozilla.com','F','1988-08-26','2019-03-24',6),(3,'stansly2','vdamerell2@unesco.org','M','1995-06-11','2019-11-18',1),(4,'drankmore3','bfortman3@cafepress.com','M','1993-03-10','2018-10-02',6),(5,'efane4','pgammack4@dailymotion.com','M','2003-11-13','2019-09-02',5),(6,'csavory5','cmarchington5@linkedin.com','F','1999-08-16','2019-04-30',1),(7,'tnewsham6','gshort6@blogger.com','M','1986-04-29','2018-04-15',3),(8,'iandriessen7','nferrea7@spotify.com','M','2004-07-27','2018-08-18',1),(9,'rthicking8','ehouseman8@smh.com.au','F','1990-02-17','2018-12-04',4),(10,'dseaking9','oconrard9@privacy.gov.au','M','2000-10-21','2019-12-05',6),(11,'dmartugina','mhisea@yellowpages.com','M','2001-05-24','2019-12-21',5),(12,'dkubickab','cparkeyb@cdbaby.com','M','1990-02-05','2019-10-13',1),(13,'dcolbournec','gpenwrightc@cisco.com','M','2002-07-21','2020-02-11',2),(14,'mvandaalend','lsibbaldd@phpbb.com','F','1985-10-09','2020-02-16',2),(15,'ljeayese','folczake@hexun.com','F','1988-09-06','2018-06-25',4),(16,'tlundbergf','imethingamf@indiatimes.com','F','1996-07-05','2018-11-15',4),(17,'wleftleyg','gbasekeg@ezinearticles.com','M','1994-02-09','2020-01-21',2),(18,'brabbh','amaccollh@free.fr','F','1986-06-22','2018-11-07',6),(19,'mspongi','dglynei@behance.net','M','2007-11-04','2018-11-27',3),(20,'aslessorj','awreathj@bloomberg.com','F','1990-07-19','2020-01-01',6),(21,'lgabeyk','tstorckek@123-reg.co.uk','M','2001-03-07','2019-11-23',1),(22,'acharrierl','ccronkl@acquirethisname.com','F','1981-01-15','2019-10-03',6),(23,'lcasselsm','gbuckokem@ow.ly','M','1983-06-01','2018-04-08',6),(24,'jputlandn','cdonisthorpen@businessweek.com','M','1981-02-25','2018-07-01',2),(25,'okellando','ccobbino@is.gd','F','1990-07-25','2019-09-24',2),(26,'mvendittip','apentonp@nhs.uk','F','1995-09-05','2020-01-30',4),(27,'csondonq','bcamdenq@un.org','F','1998-07-12','2018-11-25',6),(28,'bburrr','dkilleenr@intel.com','M','1990-07-25','2018-10-26',4),(29,'mchatteriss','mprozesckys@mit.edu','M','1999-12-29','2018-10-21',6),(30,'rpeddersent','jreant@hc360.com','F','1993-05-23','2019-08-24',1),(31,'jcuniou','bcoslittu@joomla.org','F','1989-08-18','2019-02-26',4),(32,'atantev','xhaddonv@nih.gov','F','1982-12-31','2018-12-12',5),(33,'awhiteheadw','cmacianw@google.fr','M','1998-03-23','2019-02-28',6),(34,'tcordesx','ghenrikssonx@ox.ac.uk','M','2001-11-26','2019-04-06',1),(35,'gshawey','mmattssony@buzzfeed.com','F','1986-10-05','2019-10-17',3),(36,'tschadez','lgittisz@deviantart.com','M','2002-02-12','2019-11-27',4),(37,'drevett10','dsorsbie10@networkadvertising.org','M','1995-09-16','2019-06-22',5),(38,'bsibbering11','bpheazey11@arizona.edu','M','2006-06-09','2019-08-06',4),(39,'sfarrand12','cstinton12@msu.edu','F','2006-04-18','2018-04-30',2),(40,'mdumsday13','tbevir13@sitemeter.com','M','2005-05-31','2018-12-04',3),(41,'mroot14','gkimpton14@yahoo.com','F','1991-11-01','2018-09-27',1),(42,'pchaves15','jduddin15@google.com.au','F','1982-12-11','2018-04-12',1),(43,'owettern16','sdenny16@fema.gov','F','1998-11-01','2018-09-09',2),(44,'whadkins17','jpattisson17@pinterest.com','F','1996-09-01','2019-12-15',6),(45,'asalerno18','mporch18@quantcast.com','M','1980-12-08','2018-12-05',2),(46,'sbroadwell19','swhaley19@sina.com.cn','M','1993-06-23','2019-08-27',3),(47,'eschustl1a','jrathmell1a@usgs.gov','F','2004-12-16','2018-11-20',2),(48,'khalewood1b','dsedgwick1b@hatena.ne.jp','F','1996-06-17','2018-04-22',2),(49,'avila1c','lwaliszek1c@usa.gov','M','1986-09-01','2019-07-16',5),(50,'mmcmorland1d','kjohansen1d@weebly.com','M','1986-07-21','2018-03-14',4);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mm_cpsc5910team02'
--
/*!50003 DROP PROCEDURE IF EXISTS `max_download_game` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `max_download_game`(IN time date, out max_download_game int)
BEGIN
	select D2.game_id into max_download_game from Download D2 
    where month(D2.download_date) = month(time) and year(D2.download_date)= year(time)
    group by D2.game_id
    having count(D2.download_id) = (
	select count(D1.download_id) from Download D1 
    where month(D1.download_date) = month(time) and year(D1.download_date)= year(time)
    group by D1.game_id
    order by count(D1.download_id) desc limit 1);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recent_sponsor_for_max_download_game` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `recent_sponsor_for_max_download_game`(in max_download_game_id int,OUT sponsor_end_date date)
BEGIN
	select S.end_date into sponsor_end_date 
    from Sponsorship S 
    where S.game_id = @max_download_game_id
    order by S.end_date desc limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recommenation_download_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `recommenation_download_count`(IN time date, out recommendation_count int, out download_count int)
BEGIN
	select count(*) into recommendation_count from Recommendation R where month(R.recommendation_date) = month(time) and year(R.recommendation_date)= year(time);
    select count(*) into download_count from Download D where month(D.download_date) = month(time) and year(D.download_date)= year(time);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recommenation_download_transfer_rate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `recommenation_download_transfer_rate`(IN time date)
BEGIN
	call recommenation_download_count(time,@recommendation_count,@download_count);
    select @recommendation_count/@download_count;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `Overview_regionsWithTotalNumberOfUsers`
--

/*!50001 DROP VIEW IF EXISTS `Overview_regionsWithTotalNumberOfUsers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Overview_regionsWithTotalNumberOfUsers` AS select 1 AS `region_id`,1 AS `region_name`,1 AS `total_number_of_user` */;
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

-- Dump completed on 2020-03-16 17:18:17
