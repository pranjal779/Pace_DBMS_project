-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: apartment_rent
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `Amenities`
--

DROP TABLE IF EXISTS `Amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Amenities` (
  `Furnishing_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Property_ID` smallint unsigned NOT NULL,
  `Is_Air_Condition` char(1) NOT NULL,
  `Is_Parking` char(1) DEFAULT NULL,
  `Number_Of_Parking` char(1) DEFAULT NULL,
  `Is_Central_Heating` char(1) NOT NULL,
  `Is_Laundry` char(1) NOT NULL,
  `Is_Fireplace` char(1) NOT NULL,
  `Are_Closets` char(1) DEFAULT NULL,
  `Is_Backyard` char(1) DEFAULT NULL,
  `Are_Pets_Allowed` char(1) NOT NULL,
  `Is_Microwave` char(1) DEFAULT NULL,
  `Is_Dishwasher` char(1) DEFAULT NULL,
  PRIMARY KEY (`Furnishing_ID`),
  KEY `Property_ID` (`Property_ID`),
  CONSTRAINT `amenities_ibfk_1` FOREIGN KEY (`Property_ID`) REFERENCES `Property` (`Property_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Amenities`
--

LOCK TABLES `Amenities` WRITE;
/*!40000 ALTER TABLE `Amenities` DISABLE KEYS */;
INSERT INTO `Amenities` VALUES (1,1,'N','Y','1','Y','Y','N','Y','N','Y','Y','Y'),(2,2,'Y','Y','1','Y','Y','Y','Y','Y','N','Y','Y'),(3,3,'Y','Y','2','Y','Y','Y','Y','Y','Y','Y','Y'),(4,4,'N','Y','2','Y','Y','Y','Y','Y','Y','Y','Y'),(5,5,'N','Y','1','Y','Y','Y','Y','Y','Y','Y','Y'),(6,6,'N','Y','1','Y','Y','N','Y','N','N','Y','Y'),(7,7,'N','Y','1','Y','Y','N','Y','N','Y','Y','Y'),(8,8,'Y','Y','1','Y','Y','Y','Y','Y','Y','Y','Y'),(9,9,'N','Y','1','Y','Y','Y','Y','N','Y','Y','Y'),(10,10,'Y','Y','2','Y','Y','Y','Y','Y','Y','Y','Y'),(11,11,'N','Y','1','Y','Y','N','Y','N','N','Y','Y'),(12,12,'N','Y','1','Y','Y','N','Y','N','Y','Y','Y'),(13,13,'Y','Y','2','Y','Y','Y','Y','Y','Y','Y','Y'),(14,14,'N','Y','1','Y','Y','N','Y','N','Y','Y','Y'),(15,15,'Y','Y','1','Y','Y','Y','Y','Y','Y','Y','Y'),(16,16,'N','Y','1','Y','Y','N','Y','N','N','Y','Y'),(17,17,'N','Y','1','Y','Y','N','Y','N','N','Y','Y'),(18,18,'Y','Y','2','Y','Y','Y','Y','Y','Y','Y','Y'),(19,19,'N','Y','1','Y','Y','N','Y','N','Y','Y','Y'),(20,20,'Y','Y','2','Y','Y','Y','Y','Y','N','Y','Y'),(21,21,'Y','Y','2','Y','Y','Y','Y','Y','Y','Y','Y'),(22,22,'N','Y','1','Y','Y','N','Y','N','Y','Y','Y'),(23,23,'Y','Y','2','Y','Y','Y','Y','Y','Y','Y','Y'),(24,24,'N','Y','1','Y','Y','N','Y','N','N','Y','Y'),(25,25,'Y','Y','2','Y','Y','Y','Y','Y','Y','Y','Y');
/*!40000 ALTER TABLE `Amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leasing_Contract`
--

DROP TABLE IF EXISTS `Leasing_Contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Leasing_Contract` (
  `Leasing_Contract_Id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `Tenant_ID` smallint unsigned NOT NULL,
  `Lease_Payment` decimal(6,2) NOT NULL,
  `Date_Contract_Sign` date DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  `Admin_Fee` smallint unsigned DEFAULT NULL,
  `Broker_Fee` smallint unsigned DEFAULT NULL,
  `Security_Deposit` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`Leasing_Contract_Id`),
  KEY `Tenant_ID` (`Tenant_ID`),
  CONSTRAINT `leasing_contract_ibfk_1` FOREIGN KEY (`Tenant_ID`) REFERENCES `Tenant` (`Tenant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leasing_Contract`
--

LOCK TABLES `Leasing_Contract` WRITE;
/*!40000 ALTER TABLE `Leasing_Contract` DISABLE KEYS */;
INSERT INTO `Leasing_Contract` VALUES (1,1,2000.00,'2010-11-12','2011-03-17','2012-03-17','One year',60,2200,3000),(2,2,3000.00,'2009-12-20','2010-02-28','2011-02-28','One year',60,3300,4500),(3,3,2700.00,'2008-12-01','2008-12-29','2009-12-29','One year',60,3000,3500),(4,4,3300.00,'2010-10-09','2010-11-15','2012-11-15','Two years',75,3500,4950),(5,5,3200.00,'2016-10-09','2016-11-30','2018-11-30','Two years',70,3400,4800),(6,6,2200.00,'2022-01-09','2022-01-20','2022-07-20','Six months',60,2400,3300),(7,7,1800.00,'2018-01-22','2018-02-01','2019-02-01','One years',50,2000,2700),(8,8,3600.00,'2018-01-04','2018-02-05','2020-02-05','Three years',80,3900,5400),(9,9,2400.00,'2016-01-10','2016-01-24','2018-01-24','Two years',60,2700,3600),(10,10,3300.00,'2017-01-03','2017-02-20','2017-08-20','Six months',70,3500,4950),(11,11,1200.00,'2017-01-17','2017-01-30','2018-01-30','One year',500,1400,1800),(12,12,1000.00,'2016-01-02','2016-01-12','2017-01-12','One year',40,1300,1500),(13,13,1600.00,'2014-10-18','2014-12-20','2017-12-20','Three years',50,1800,2400),(14,14,3600.00,'2019-01-15','2019-02-26','2023-02-26','Five years',80,3900,5400),(15,15,3600.00,'2022-01-08','2022-01-20','2023-01-20','One year',70,3800,5400),(16,16,1500.00,'2020-01-19','2020-02-15','2023-02-15','Three years',40,1700,2250),(17,17,1500.00,'2022-01-10','2022-01-31','2023-01-31','One year',50,1800,2250),(18,18,2100.00,'2011-12-22','2012-01-05','2014-01-05','Two years',60,2300,3150),(19,19,1800.00,'2013-09-12','2013-12-15','2015-12-15','Two years',50,2000,2700),(20,20,2700.00,'2020-01-03','2020-01-21','2023-01-21','Three years',60,2900,4050),(21,21,1500.00,'2022-01-03','2022-01-16','2023-01-16','One year',40,1700,2250),(22,22,1000.00,'2018-02-01','2018-03-08','2018-09-28','Six months',30,1200,1500),(23,23,3000.00,'2018-01-08','2018-01-24','2020-01-24','Two years',70,3300,4500),(24,24,2500.00,'2017-01-30','2017-02-10','2020-02-10','Three years',50,2700,3750),(25,25,4500.00,'2019-02-20','2019-03-25','2020-03-25','One year',90,4700,6750);
/*!40000 ALTER TABLE `Leasing_Contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property`
--

DROP TABLE IF EXISTS `Property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Property` (
  `Property_ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `Property_Owner_ID` smallint unsigned NOT NULL,
  `Property_Address_ID` smallint unsigned NOT NULL,
  `Property_Type` varchar(20) NOT NULL,
  `Property_Status` varchar(20) NOT NULL,
  `Property_Payment` decimal(6,2) NOT NULL,
  `Basement` char(1) DEFAULT NULL,
  `Property_Floor` varchar(10) DEFAULT NULL,
  `Bedrooms` tinyint NOT NULL,
  `Bathrooms` tinyint NOT NULL,
  `Year_Of_Built` date NOT NULL,
  `Square_Feet` decimal(6,2) NOT NULL,
  `Landscape` varchar(20) DEFAULT NULL,
  `Special_Requirement` varchar(255) DEFAULT NULL,
  `Posted_Date` timestamp NOT NULL,
  `Available_Date` date DEFAULT NULL,
  PRIMARY KEY (`Property_ID`),
  KEY `Property_Address_ID` (`Property_Address_ID`),
  KEY `Property_Owner_ID` (`Property_Owner_ID`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`Property_Address_ID`) REFERENCES `Property_Address` (`Property_Address_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`Property_Owner_ID`) REFERENCES `Property_Owner` (`Property_Owner_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property`
--

LOCK TABLES `Property` WRITE;
/*!40000 ALTER TABLE `Property` DISABLE KEYS */;
INSERT INTO `Property` VALUES (1,1,1,'Apartment','Not Available',2000.00,'Y','2',2,1,'2008-10-28',1100.00,'','Pets allowed','2011-02-02 14:46:00','2011-02-11'),(2,2,2,'Townhouse','Available',3000.00,'Y','2',3,2,'2008-10-27',1300.00,'','No Pets allowed','2010-01-11 15:45:00','2010-02-15'),(3,3,3,'House','Not Available',2700.00,'N','3',3,2,'2002-10-27',950.00,'waterfront','Smoking Prohibited','2008-11-15 17:30:00','2008-12-25'),(4,4,4,'House','Available',3300.00,'N','20',3,3,'2006-10-27',1000.00,'','No Loud Music and Pets allowed','2010-09-23 09:37:00','2010-10-25'),(5,5,5,'Townhouse','Not Available',3200.00,'Y','2',4,2,'2000-10-27',1600.00,'waterfront',' ','2016-10-05 11:00:00','2016-11-15'),(6,6,6,'Apartment','Available',2200.00,'N','30',2,2,'2007-10-27',800.00,'waterfront','No Pets allowed','2012-12-05 17:30:00','2022-01-10'),(7,7,7,'Apartment','Not Available',1800.00,'N','15',3,2,'2005-10-27',1150.00,'skyline','','2017-12-05 16:30:00','2018-01-04'),(8,8,8,'Townhouse','Available',3600.00,'N','3',4,3,'2009-10-27',1450.00,'','Smoking Prohibited','2017-12-05 12:30:00','2018-01-05'),(9,9,9,'Apartment','Available',2400.00,'N','27',3,1,'2011-10-27',900.00,'Brooklyn Bridge','','2015-01-05 14:20:00','2016-01-14'),(10,10,10,'House','Available',3300.00,'Y','2',3,2,'2004-10-27',1200.00,'park','No Loud Music','2016-12-05 15:30:00','2017-01-05'),(11,11,11,'Apartment','Not Available',1800.00,'N','17',3,3,'2013-10-27',1200.00,'skyline','','2015-12-05 06:40:00','2016-01-07'),(12,12,12,'Apartment','Not Available',3300.00,'Y','10',3,2,'2015-07-22',2900.00,'city','Pets allowed','2019-08-12 06:25:10','2019-08-15'),(13,13,13,'House','Available',1600.00,'N','3',2,2,'2006-10-27',900.00,'Garden','Smoking Prohibited','2014-12-05 12:00:00','2014-12-10'),(14,14,14,'Apartment','Available',3600.00,'N','20',4,2,'2005-10-27',1500.00,'park','No Loud Music and No Smoking','2019-12-05 11:37:30','2019-01-21'),(15,15,15,'Townhouse','Available',3600.00,'Y','2',4,3,'2004-10-27',1300.00,'waterfront','Pets allowed','2018-12-05 06:15:30','2022-01-01'),(16,16,16,'Apartment','Not Available',1500.00,'N','35',1,1,'2014-10-27',250.00,'hudson river','No Pets allowed','2019-12-05 06:15:00','2020-01-31'),(17,17,17,'Apartment','Available',1500.00,'N','23',2,1,'2012-10-27',800.00,'skyline','No Pets allowed','2021-12-05 15:10:00','2022-01-19'),(18,18,18,'House','Available',2100.00,'Y','1',3,2,'2002-10-27',1000.00,'Mountain','No Smoking','2011-12-05 14:50:00','2011-12-25'),(19,19,19,'Apartment','Available',1800.00,'N','20',2,2,'2011-10-27',750.00,'riverfront','Pets allowed','2013-11-01 07:30:00','2013-12-05'),(20,20,20,'House','Available',2700.00,'N','2',3,3,'2007-10-27',1100.00,'Mountain','No Pets allowed','2019-12-05 17:20:40','2020-01-05'),(21,21,21,'House','Not Available',1500.00,'N','3',3,1,'2013-10-27',1150.00,'Mountain','Pets allowed','2021-12-29 17:20:00','2022-01-09'),(22,22,22,'Apartment','Available',1000.00,'N','29',1,1,'2008-10-27',315.00,'skyline','','2017-12-20 15:50:00','2018-01-07'),(23,23,23,'Townhouse','Not Available',3000.00,'N','2',4,2,'2010-10-27',1300.00,'Mountain','Smoking Prohibited','2017-12-11 09:40:00','2018-01-05'),(24,24,24,'Apartment','Available',2500.00,'N','20',3,1,'2017-10-27',900.00,'riverfront','No Pets allowed and No Smoking','2016-12-25 16:30:00','2017-01-15'),(25,25,25,'House','Available',4500.00,'Y','3',5,3,'2008-10-27',2500.00,'Mountain','Pets allowed','2018-12-15 06:40:00','2019-01-20');
/*!40000 ALTER TABLE `Property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Address`
--

DROP TABLE IF EXISTS `Property_Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Property_Address` (
  `Property_Address_ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `State` varchar(20) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Zipcode` varchar(20) NOT NULL,
  `Street_Line` varchar(50) NOT NULL,
  PRIMARY KEY (`Property_Address_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Address`
--

LOCK TABLES `Property_Address` WRITE;
/*!40000 ALTER TABLE `Property_Address` DISABLE KEYS */;
INSERT INTO `Property_Address` VALUES (1,'New-York','New-York, Brooklyn','11230','414 Elmwood Ave APT 3-E'),(2,'New-York','New-York, Brooklyn','11228','7210 Fort Hamilton Pkwy #1L'),(3,'New-York','New-York, Brooklyn','11236','160 E 89th St #5D'),(4,'New-York','New-York, Brooklyn','11210','730 E 32nd St #2C'),(5,'New-York','New-York, Brooklyn','11226','800 Ocean Ave APT 4C'),(6,'New-York','New-York, Brooklyn','11218','86 Chester Ave FLOOR 2'),(7,'New-Jersey','Jersey City','07302','180 10th St'),(8,'New-Jersey','Jersey City','07310','25 River Dr S'),(9,'New-Jersey','Jersey City','07310','20 River Ct'),(10,'New-Jersey','Jersey City','07310','1 Shore Ln APT 1007'),(11,'New-Jersey','Jersey City','07302','270 10th St'),(12,'New-Jersey','Newark','07105','45 Fleming Ave'),(13,'New-Jersey','Newark','07105','88 Saint Francis St APT 1F'),(14,'New-Jersey','Hoboken','07030','334 Washington St #1'),(15,'New-Jersey','Harrison','07029','330 Angelo Cifelli D'),(16,'New-Jersey','Union City','07087','1009-380 Mountain Rd #1009'),(17,'New-York','New-York','10016','240 E 39th St'),(18,'New-York','New-York','10019','305 W 50th St'),(19,'New-York','New-York','10011','217 W 16th St APT A'),(20,'New-York','New-York','10005','45 Wall St'),(21,'New-York','New-York, Staten Island','10304','668 Richmond Rd #1F'),(22,'New-York','New-York, Staten Island','10304','1000 Targee St'),(23,'New-York','New-York, Staten Island','10305','19 Orlando St APT 1'),(24,'New-York','New-York, Bronx','10454','340 E 134th St APT 4'),(25,'New-York','New-York, Bronx','10454','112 Lincoln Ave');
/*!40000 ALTER TABLE `Property_Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Owner`
--

DROP TABLE IF EXISTS `Property_Owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Property_Owner` (
  `Property_Owner_ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `Owner_First_Name` varchar(20) NOT NULL,
  `Owner_Last_Name` varchar(20) DEFAULT NULL,
  `Owner_Phone` varchar(20) NOT NULL,
  `Owner_Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Property_Owner_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Owner`
--

LOCK TABLES `Property_Owner` WRITE;
/*!40000 ALTER TABLE `Property_Owner` DISABLE KEYS */;
INSERT INTO `Property_Owner` VALUES (1,'Austin','Bradley','8667553321','austinb@gmail.com'),(2,'Dash','Kennedy','8632503321','dashk105@gmail.com'),(3,'Lucia','Belle','9292104821','luciabelle@gmail.com'),(4,'Emerson','Cove','9294264060','coveem@gmail.com'),(5,'Heath','Everett','9294263341','heathev10@gmail.com'),(6,'Layla','Auden','9294264898','laylaauden05@gmail.com'),(7,'Lucia','Belle','8667343391','bellek@gmail.com'),(8,'Jaxton','Pierce','9294265195','jaxtonpierce15@gmail.com'),(9,'LLC','InvestCapital','9295552555','info@Investcapital.com'),(10,'Finn','Grayson','9294260590','finngr@gmail.com'),(11,'Graham','Elliot','9294220935','grell@gmail.com'),(12,'Damari','Grey','8632514455','damarig@gmail.com'),(13,'Eden','Soleil','8633204161','edenoleil@gmail.com'),(14,'Gemma','Snow','8637451520','gemmas15@gmail.com'),(15,'Henslie','Tate','8639100235','hensliet@gmail.com'),(16,'August','Leo','9293775747','augustleo@gmail.com'),(17,'Bodhi','Atlas','9292551520','bodhiat@gmail.com'),(18,'Dorian','Oliver','9290101143','dorianoliv@yahoo.com'),(19,'Felix','Reid','9290120565','felixreid@yahoo.com'),(20,'Graham','Elliot','8638150345','elliotgr@yahoo.com'),(21,'Milo','Weston','7186995565','westonm@yahoo.com'),(22,'Oliver','Hudson','7182724090','oliver75@yahoo.com'),(23,'Renly','Quinn','7183735595','renly01@yahoo.com'),(24,'Ryland','Carter','7182550500','carterr@gmail.com'),(25,'James','Presley','7181770250','jamespresley@gmail.com');
/*!40000 ALTER TABLE `Property_Owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Photo`
--

DROP TABLE IF EXISTS `Property_Photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Property_Photo` (
  `Property_Photo_ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `Property_ID` smallint unsigned NOT NULL,
  `Property_Photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Property_Photo_ID`),
  KEY `Property_ID` (`Property_ID`),
  CONSTRAINT `property_photo_ibfk_1` FOREIGN KEY (`Property_ID`) REFERENCES `Property` (`Property_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Photo`
--

LOCK TABLES `Property_Photo` WRITE;
/*!40000 ALTER TABLE `Property_Photo` DISABLE KEYS */;
INSERT INTO `Property_Photo` VALUES (1,1,'PP1-1.jpg'),(2,1,'PP1-2.jpg'),(3,1,'PP1-3.jpg'),(4,1,'PP1-4.jpg'),(5,1,'PP1-5.jpg'),(6,1,'PP1-6.jpg'),(7,1,'PP1-7.jpg'),(8,1,'PP1-8.jpg'),(9,2,'PP2-1.jpg'),(10,2,'PP2-2.jpg'),(11,2,'PP2-3.jpg'),(12,2,'PP2-4.jpg'),(13,3,'PP3-1.jpg'),(14,3,'PP3-2.jpg'),(15,3,'PP3-3.jpg'),(16,3,'PP3-4.jpg'),(17,3,'PP3-5.jpg'),(18,3,'PP3-6.jpg'),(19,3,'PP3-7.jpg'),(20,4,'PP4-1.jpg'),(21,4,'PP4-2.jpg'),(22,4,'PP4-3.jpg'),(23,4,'PP4-4.jpg'),(24,4,'PP4-5.jpg'),(25,5,'PP5-1.jpg'),(26,5,'PP5-2.jpg'),(27,5,'PP5-3.jpg'),(28,5,'PP5-4.jpg'),(29,5,'PP5-5.jpg'),(30,5,'PP5-6.jpg'),(31,5,'PP5-7.jpg'),(32,5,'PP5-8.jpg'),(33,5,'PP5-9.jpg'),(34,6,'PP6-1.jpg'),(35,6,'PP6-2.jpg'),(36,6,'PP6-3.jpg'),(37,6,'PP6-4.jpg'),(38,6,'PP6-5.jpg'),(39,6,'PP6-6.jpg'),(40,6,'PP6-7.jpg'),(41,6,'PP6-8.jpg'),(42,6,'PP6-9.jpg'),(43,7,'PP7-1.jpg'),(44,7,'PP7-2.jpg'),(45,7,'PP7-3.jpg'),(46,7,'PP7-4.jpg'),(47,7,'PP7-5.jpg'),(48,7,'PP7-6.jpg'),(49,7,'PP7-7.jpg'),(50,7,'PP7-8.jpg'),(51,7,'PP7-9.jpg'),(52,8,'PP8-1.jpg'),(53,8,'PP8-2.jpg'),(54,8,'PP8-3.jpg'),(55,8,'PP8-4.jpg'),(56,9,'PP9-1.jpg'),(57,9,'PP9-2.jpg'),(58,9,'PP9-3.jpg'),(59,9,'PP9-4.jpg'),(60,10,'PP10-1.jpg'),(61,10,'PP10-2.jpg'),(62,10,'PP10-3.jpg'),(63,10,'PP10-4.jpg'),(64,10,'PP10-5.jpg'),(65,10,'PP10-6.jpg'),(66,11,'PP11-1.jpg'),(67,11,'PP11-2.jpg'),(68,11,'PP11-3.jpg'),(69,11,'PP11-4.jpg'),(70,11,'PP11-5.jpg'),(71,11,'PP11-6.jpg'),(72,12,'PP12-1.jpg'),(73,12,'PP12-2.jpg'),(74,12,'PP12-3.jpg'),(75,12,'PP12-4.jpg'),(76,13,'PP13-1.jpg'),(77,13,'PP13-2.jpg'),(78,13,'PP13-3.jpg'),(79,13,'PP13-4.jpg'),(80,14,'PP14-1.jpg'),(81,14,'PP14-2.jpg'),(82,14,'PP14-3.jpg'),(83,14,'PP14-4.jpg'),(84,14,'PP14-5.jpg'),(85,14,'PP14-6.jpg'),(86,14,'PP14-7.jpg'),(87,14,'PP14-8.jpg'),(88,14,'PP14-9.jpg'),(89,15,'PP15-1.jpg'),(90,15,'PP15-2.jpg'),(91,15,'PP15-3.jpg'),(92,15,'PP15-4.jpg'),(93,16,'PP16-1.jpg'),(94,16,'PP16-2.jpg'),(95,16,'PP16-3.jpg'),(96,16,'PP16-4.jpg'),(97,16,'PP16-5.jpg'),(98,16,'PP16-6.jpg'),(99,17,'PP17-1.jpg'),(100,17,'PP17-2.jpg'),(101,17,'PP17-3.jpg'),(102,17,'PP17-4.jpg'),(103,17,'PP17-5.jpg'),(104,17,'PP17-6.jpg'),(105,17,'PP17-7.jpg'),(106,17,'PP17-8.jpg'),(107,17,'PP17-9.jpg'),(108,18,'PP18-1.jpg'),(109,18,'PP18-2.jpg'),(110,18,'PP18-3.jpg'),(111,18,'PP18-4.jpg'),(112,18,'PP18-5.jpg'),(113,18,'PP18-6.jpg'),(114,18,'PP18-7.jpg'),(115,19,'PP19-1.jpg'),(116,19,'PP19-2.jpg'),(117,19,'PP19-3.jpg'),(118,19,'PP19-4.jpg'),(119,19,'PP19-5.jpg'),(120,19,'PP19-6.jpg'),(121,20,'PP20-1.jpg'),(122,20,'PP20-2.jpg'),(123,20,'PP20-3.jpg'),(124,20,'PP20-4.jpg'),(125,20,'PP20-5.jpg'),(126,20,'PP20-6.jpg'),(127,20,'PP20-7.jpg'),(128,20,'PP20-8.jpg'),(129,21,'PP21-1.jpg'),(130,21,'PP21-2.jpg'),(131,21,'PP21-3.jpg'),(132,21,'PP21-4.jpg'),(133,21,'PP21-5.jpg'),(134,21,'PP21-6.jpg'),(135,21,'PP21-7.jpg'),(136,22,'PP22-1.jpg'),(137,22,'PP22-2.jpg'),(138,22,'PP22-3.jpg'),(139,22,'PP22-4.jpg'),(140,22,'PP22-5.jpg'),(141,22,'PP22-6.jpg'),(142,22,'PP22-7.jpg'),(143,22,'PP22-8.jpg'),(144,23,'PP23-1.jpg'),(145,23,'PP23-2.jpg'),(146,23,'PP23-3.jpg'),(147,23,'PP23-4.jpg'),(148,23,'PP23-5.jpg'),(149,23,'PP23-6.jpg'),(150,23,'PP23-7.jpg'),(151,23,'PP23-8.jpg'),(152,23,'PP23-9.jpg'),(153,24,'PP24-1.jpg'),(154,24,'PP24-2.jpg'),(155,24,'PP24-3.jpg'),(156,24,'PP24-4.jpg'),(157,24,'PP24-5.jpg'),(158,24,'PP24-6.jpg'),(159,24,'PP24-7.jpg'),(160,25,'PP25-1.jpg'),(161,25,'PP25-2.jpg'),(162,25,'PP25-3.jpg'),(163,25,'PP25-4.jpg'),(164,25,'PP25-5.jpg'),(165,25,'PP25-6.jpg'),(166,25,'PP25-7.jpg'),(167,25,'PP25-8.jpg');
/*!40000 ALTER TABLE `Property_Photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tenant`
--

DROP TABLE IF EXISTS `Tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tenant` (
  `Tenant_ID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `Property_ID` smallint unsigned NOT NULL,
  `Tenant_First_Name` varchar(20) NOT NULL,
  `Tenant_Last_Name` varchar(20) DEFAULT NULL,
  `Tenant_Phone` varchar(20) NOT NULL,
  `Tenant_Email` varchar(50) DEFAULT NULL,
  `Tenant_Credit_Record` smallint unsigned NOT NULL,
  `Tenant_Annual_Income` mediumint unsigned DEFAULT NULL,
  `Amount_Of_Savings` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Tenant_ID`),
  KEY `Property_ID` (`Property_ID`),
  CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`Property_ID`) REFERENCES `Property` (`Property_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tenant`
--

LOCK TABLES `Tenant` WRITE;
/*!40000 ALTER TABLE `Tenant` DISABLE KEYS */;
INSERT INTO `Tenant` VALUES (1,1,'Sally','Churchill','8667223338','sallyc@gmail.com',700,50000,200000),(2,2,'Phil','Hamilton','8667223340','philh@gmail.com',710,6000,300000),(3,3,'Amanda','Mills','8667223342','amandam@gmail.com',690,NULL,200000),(4,4,'Sally','Gray','8667223490','sallyg@gmail.com',750,70000,400000),(5,5,'Oliver','Lambert','8667223587','oliverl@gmail.com',770,110000,2000000),(6,6,'Heather','Macleod','8667223645','heatherm@gmail.com',750,90000,1000000),(7,7,'David','Roberts','8667223753','davidr@gmail.com',755,60000,100000),(8,8,'Sonia','King','86672233823','soniak@hotmail.com',740,70000,200000),(9,9,'Ryan','Bower','8667223967','ryanb@hotmail.com',730,90000,600000),(10,10,'Connor','Butler','8667222178','connorb@hotmail.com',710,80000,800000),(11,11,'Gavin','Greene','8667222231','gaving@gmail.com',700,90000,500000),(12,12,'Julia','Bailey','8667222267','juliab@gmail.com',720,140000,200000),(13,13,'Finona','McDonald','8667222190','finonam@gmail.com',725,200000,300000),(14,14,'Jan','Mclean','8667343321','janm@gmail.com',730,190000,300000),(15,15,'Neil','Campbell','8667343330','neilc@hotmail.com',734,80000,500000),(16,16,'Gavin','Terry','8667343349','gavint@gmail.com',756,70000,400000),(17,17,'Megan','Nash','8667343353','megann@hotmail.com',742,90000,300000),(18,18,'Deirdre','May','8667343361','deirdrem@hotmail.com',690,40000,100000),(19,19,'Theresa','Roberts','8667343379','teresar@hotmail.com',680,50000,100000),(20,20,'Piers','Skinner','8667343385','pierss@gmail.com',705,NULL,200000),(21,21,'Adam','Reid','8667343391','adamr@gmail.com',780,0,300000),(22,22,'Eric','Payne','8667343396','ericp@gmail.com',710,0,150000),(23,23,'Audrey','Thomoson','8667373321','audreyt@hotmail.com',723,0,170000),(24,24,'Gordon','Alsop','8667373321','gordona@gmail.com',712,0,100000),(25,25,'Joe','Slater','8667373321','joes@gmail.com',650,0,100000);
/*!40000 ALTER TABLE `Tenant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 10:50:18
