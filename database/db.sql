CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Apollo Hospitals','2024-01-18 18:08:12','2024-01-18 18:08:12'),(2,'Jawaharlal Nehru Medical College and Hospital','2024-01-18 18:08:12','2024-01-18 18:08:12'),(3,'Indira Gandhi Institute of Medical Sciences','2024-01-18 18:08:12','2024-01-18 18:08:12'),(4,'AIIMS - All India Institute Of Medical Science','2024-01-18 18:08:12','2024-01-18 18:08:12');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `patientPhoto` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PsychiatristId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `PsychiatristId` (`PsychiatristId`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Chris Brown','654 Cedar Dr','chris.b@example.com','1112223333','KlMnOp4QrStU','base64encodedphotodata6','2024-01-18 18:08:15','2024-01-18 18:08:15',6),(2,'Sophie White','876 Birch Rd','sophie.w@example.com','6667778888','UvWxYz9AbCdEf','base64encodedphotodata9','2024-01-18 18:08:33','2024-01-18 18:08:33',9),(3,'Sara Johnson','987 Pine St','sara.j@example.com','8889990000','XyZaBc5DeFgH','base64encodedphotodata7','2024-01-18 18:08:44','2024-01-18 18:08:44',7),(4,'Emily Davis','789 Maple Ln','emily.d@example.com','7778889999','ZaBcDe3FgHiJ','base64encodedphotodata5','2024-01-18 18:08:56','2024-01-18 18:08:56',5),(5,'Bob Smith','456 Birch Rd','bob.smith@example.com','3334445555','LmNoPqR1sTuVw','base64encodedphotodata4','2024-01-18 18:09:10','2024-01-18 18:09:10',4),(6,'Michael White','505 Elm St','michael.white@example.com','1112223333','AbCdEf1GhIj','base64encodedphotodata1','2024-01-18 18:09:21','2024-01-18 18:09:21',1),(7,'John Doe','123 Oak Ave','john.doe@example.com','5556667777','XyZaBc1D2eF','base64encodedphotodata2','2024-01-18 18:09:30','2024-01-18 18:09:30',2),(8,'Alice Johnson','789 Pine St','alice.j@example.com','9998887777','PqRsTu1VwXyZ','base64encodedphotodata3','2024-01-18 18:09:44','2024-01-18 18:09:44',3),(9,'Ethan Miller','123 Cedar Dr','ethan.m@example.com','5556667777','AbCdEf1GhIj','base64encodedphotodata31','2024-01-18 18:10:23','2024-01-18 18:10:23',11),(10,'Liam Davis','789 Birch Rd','liam.d@example.com','8889990000','MnOpQrS3tUvW','base64encodedphotodata33','2024-01-18 18:11:02','2024-01-18 18:11:02',13),(11,'Isabella Smith','567 Oak Ave','isabella.s@example.com','1112223333','Yz1AbCdE4FgH','base64encodedphotodata34','2024-01-18 18:11:11','2024-01-18 18:11:11',14),(12,'Mason Johnson','321 Birch Rd','mason.j@example.com','8889990000','IjKlMnO5PqRsT','base64encodedphotodata35','2024-01-18 18:11:20','2024-01-18 18:11:20',15),(13,'Abigail Brown','987 Cedar Dr','abigail.b@example.com','4445556666','UvWxYz9AbCdEf','base64encodedphotodata36','2024-01-18 18:11:29','2024-01-18 18:11:29',16),(14,'Emily Davis','654 Pine St','emily.k@example.com','7778889999','GhIjKl1MnOpQ','base64encodedphotodata37','2024-01-18 18:11:43','2024-01-18 18:11:43',17),(15,'Ella White','234 Birch Rd','ella.w@example.com','8889990000','BcDeFgHi2JkL','base64encodedphotodata39','2024-01-18 18:11:52','2024-01-18 18:11:52',19),(16,'Scarlett Brown','987 Pine St','scarlett.b@example.com','7778889999','Yz1AbCdE4FgH','base64encodedphotodata41','2024-01-18 18:12:04','2024-01-18 18:12:04',1),(17,'Henry Davis','321 Maple Ln','henry.d@example.com','1112223333','IjKlMnO5PqRsT','base64encodedphotodata42','2024-01-18 18:12:14','2024-01-18 18:12:14',2),(18,'Grace Smith','654 Cedar Dr','grace.s@example.com','8889990000','UvWxYz9AbCdEf','base64encodedphotodata43','2024-01-18 18:13:20','2024-01-18 18:13:20',20),(19,'Daniel Miller','321 Oak Ave','daniel.m@example.com','4445556666','IjKlMn7OpQrSt','base64encodedphotodata44','2024-01-18 18:13:32','2024-01-18 18:13:32',19),(20,'Sophie White','876 Birch Rd','sophie.o@example.com','6667778888','UvWxYz9AbCdEf','base64encodedphotodata45','2024-01-18 18:14:00','2024-01-18 18:14:00',18),(21,'Emma Davis','567 Pine St','emma.d@example.com','7778889999','RrStUvWxYz1A','base64encodedphotodata47','2024-01-18 18:14:11','2024-01-18 18:14:11',7),(22,'Andrew Brown','321 Maple Ln','andrew.b@example.com','4445556666','Yz1AbCdE4FgH','base64encodedphotodata50','2024-01-18 18:14:45','2024-01-18 18:14:45',10),(23,'Sophia Davis','987 Cedar Dr','sophia.d@example.com','6667778888','IjKlMnO5PqRsT','base64encodedphotodata51','2024-01-18 18:14:56','2024-01-18 18:14:56',11),(24,'Jack Wilson','456 Pine St','jack.w@example.com','2223334444','UvWxYz9AbCdEf','base64encodedphotodata52','2024-01-18 18:15:06','2024-01-18 18:15:06',12);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `HospitalId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `HospitalId` (`HospitalId`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Dr. Rohan Mittal','2024-01-18 18:08:12','2024-01-18 18:08:12',1),(2,'Dr. Aishwarya Thakur','2024-01-18 18:08:12','2024-01-18 18:08:12',1),(3,'Dr. Sameer Desai','2024-01-18 18:08:12','2024-01-18 18:08:12',1),(4,'Dr. Ananya Kapoor','2024-01-18 18:08:12','2024-01-18 18:08:12',1),(5,'Dr. Arjun Singh','2024-01-18 18:08:12','2024-01-18 18:08:12',1),(6,'Dr. Roshni Sharma','2024-01-18 18:08:12','2024-01-18 18:08:12',2),(7,'Dr. Aditya Kapoor','2024-01-18 18:08:12','2024-01-18 18:08:12',2),(8,'Dr. Siddharth Deshmukh','2024-01-18 18:08:12','2024-01-18 18:08:12',2),(9,'Dr. Riya Banerjee','2024-01-18 18:08:12','2024-01-18 18:08:12',2),(10,'Dr. Abhinav Kapoor','2024-01-18 18:08:12','2024-01-18 18:08:12',2),(11,'Dr. Rohan Mittal','2024-01-18 18:08:12','2024-01-18 18:08:12',3),(12,'Dr. Aishwarya Thakur','2024-01-18 18:08:12','2024-01-18 18:08:12',3),(13,'Dr. Sameer Desai','2024-01-18 18:08:12','2024-01-18 18:08:12',3),(14,'Dr. Ananya Kapoor','2024-01-18 18:08:12','2024-01-18 18:08:12',3),(15,'Dr. Arjun Singh','2024-01-18 18:08:12','2024-01-18 18:08:12',3),(16,'Dr. Rohan Mittal','2024-01-18 18:08:12','2024-01-18 18:08:12',4),(17,'Dr. Aishwarya Thakur','2024-01-18 18:08:12','2024-01-18 18:08:12',4),(18,'Dr. Sameer Desai','2024-01-18 18:08:12','2024-01-18 18:08:12',4),(19,'Dr. Ananya Kapoor','2024-01-18 18:08:12','2024-01-18 18:08:12',4),(20,'Dr. Arjun Singh','2024-01-18 18:08:12','2024-01-18 18:08:12',4);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-18 23:52:13
