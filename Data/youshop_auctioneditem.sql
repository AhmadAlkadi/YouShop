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
-- Table structure for table `auctioneditem`
--

DROP TABLE IF EXISTS `auctioneditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auctioneditem` (
  `itemID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(1000) NOT NULL,
  `ItemDescription` varchar(1000) DEFAULT NULL,
  `price` varchar(45) NOT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `itemValidation` int DEFAULT NULL,
  `userData_userID` int DEFAULT NULL,
  `lastTimeUpdated` varchar(100) DEFAULT NULL,
  `auctioneditemselling_itemID` int DEFAULT NULL,
  `itemStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `auctioneditem_FK1` (`userData_userID`) /*!80000 INVISIBLE */,
  KEY `auctioneditem_FK2` (`auctioneditemselling_itemID`),
  CONSTRAINT `auctioneditem_FK1` FOREIGN KEY (`userData_userID`) REFERENCES `userdata` (`userID`),
  CONSTRAINT `auctioneditem_FK2` FOREIGN KEY (`auctioneditemselling_itemID`) REFERENCES `auctioneditemselling` (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctioneditem`
--

LOCK TABLES `auctioneditem` WRITE;
/*!40000 ALTER TABLE `auctioneditem` DISABLE KEYS */;
INSERT INTO `auctioneditem` VALUES (1,'Battletoads and Double Dragon - Nintendo','Pre-owned game super rare','$168','HoOops',0,10010,'2022/12/04 03:54:36',1,'Sold'),(2,'A painting','its really nice','$123.00','HoOops',0,10010,'2022/12/07 19:09:16',2,'Sold'),(3,'Book','It is a rare book','$80','user',0,10003,'2022/12/16 15:53:58',3,'Sold');
/*!40000 ALTER TABLE `auctioneditem` ENABLE KEYS */;
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
