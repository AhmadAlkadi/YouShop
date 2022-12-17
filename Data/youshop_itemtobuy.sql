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
-- Table structure for table `itemtobuy`
--

DROP TABLE IF EXISTS `itemtobuy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemtobuy` (
  `itemID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(1000) DEFAULT NULL,
  `ItemDescription` varchar(1000) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `itemValidation` varchar(45) DEFAULT NULL,
  `userData_userID` int DEFAULT NULL,
  `lastTimeUpdated` varchar(100) DEFAULT NULL,
  `buyitemselling_itemID` int DEFAULT NULL,
  `itemStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `itemtobuy_FK1` (`userData_userID`) /*!80000 INVISIBLE */,
  KEY `itemtobuy_FK2` (`buyitemselling_itemID`),
  CONSTRAINT `itemtobuy_FK1` FOREIGN KEY (`userData_userID`) REFERENCES `userdata` (`userID`),
  CONSTRAINT `itemtobuy_FK2` FOREIGN KEY (`buyitemselling_itemID`) REFERENCES `buyitemselling` (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemtobuy`
--

LOCK TABLES `itemtobuy` WRITE;
/*!40000 ALTER TABLE `itemtobuy` DISABLE KEYS */;
INSERT INTO `itemtobuy` VALUES (1,'Iphone12','its the new iphone with all the new mechanics','$23.0','user','0',10003,'2022/12/04 00:00:43',1,'Sold'),(2,'Book','Its a Book thats it','$22.0','user','0',10003,'2022/12/04 15:38:22',2,'Sold'),(3,'game','Its a game','$12.00','user','0',10003,'2022/12/07 19:07:25',3,'Sold'),(4,'Samsung 50\" Crystal UHD 4K Smart TV - (UN50TU690T)','Crystal Processor with 4K Upscaling','$299.99','user','0',10003,'2022/12/15 00:13:09',4,'Ongoing'),(5,'How to Catch an Elf','Children\'s Book','$8.04','user','0',10003,'2022/12/15 00:15:23',5,'Ongoing'),(6,'YT','it is a word','$100.0','user','1',10003,'2022/12/16 15:43:05',6,'Ongoing');
/*!40000 ALTER TABLE `itemtobuy` ENABLE KEYS */;
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
