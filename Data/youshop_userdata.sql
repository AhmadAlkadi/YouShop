-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: youshop
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdata` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phonenumber` varchar(45) NOT NULL,
  `userValidation` int NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=10015 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
INSERT INTO `userdata` VALUES (10003,'Yasmine','Bennett','user','user','dalele@54.mk','209-514-0634',1),(10004,'Felicity','Barlow','flintshabby','JZxJ6ugt','ahat1710@dmxs8.com','209-200-8459',1),(10005,'Kelvin','Mccann','DasBorg','HKAQ2FDY','romanbalashov@clearancebooth.com','209-401-5520',0),(10006,'Arnold','Larson','BitGodzilla','WRcxnHVc','falloon43@mailpts.com','209-513-2561',0),(10007,'Genevieve','Ortega','Spunkyak','6WW8sNNk','perus@nouraproperty.com','209-521-8380',0),(10008,'Tim','Jordan','Doodledeli','Un36W7mp','lenabev@unair.nl','209-522-9420',0),(10009,'Shakira','Doherty','LummoShakira','Z8spJkym','yulianavlasyuk@54.mk','209-523-0551',0),(10010,'Alastair','Ho','HoOops','F9HCKRLP','milan001@lompikachi.com','323-706-5977',1),(10011,'Hayley','Bray','BoscapBoding','ySp5Mmx3','struys0104@gmailwe.com','323-904-7083',0),(10012,'Roger','Odonnell','TheOnePeaceIsReal','63UKyCjD','john427smith@onedayyylove.xyz','323-909-5478',0),(10013,'Ahmad','Alkadi','rock','564','ahmalkadi@hotmail.com','852-455-5866',0),(10014,'123','123','123','123','123','123',0);
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16 17:11:00
