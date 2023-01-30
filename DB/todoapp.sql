-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: todo_app
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(20) DEFAULT NULL,
  `task_desc` varchar(100) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `task_status` decimal(10,0) DEFAULT (0),
  `task_priority` decimal(10,0) DEFAULT (1),
  `uname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `uname` (`uname`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`uname`) REFERENCES `user_info` (`uname`),
  CONSTRAINT `task_chk_1` CHECK (((`task_status` = 0) or (0 <> 1))),
  CONSTRAINT `task_chk_2` CHECK (((`task_priority` = 1) or (0 <> 2) or (0 <> 3)))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'call pro','testing','1998-01-23 12:45:56','2010-12-31 01:15:00',1,3,NULL),(3,'call pro','testing','1998-01-23 12:45:56','2010-12-31 01:15:00',0,1,'ashu123'),(4,'call pro2','testing','1998-01-23 12:45:56','2010-12-31 01:15:00',0,1,'ashu123'),(5,'Task Entery','From postman','2023-01-27 03:56:00','2023-01-27 06:56:00',0,1,'abhi');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `full_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('abhi','123','1999-12-14','abhi@gmail.com','5566778899','Abhishek Balyan'),('akashthindu','123','1999-01-31','tiwaria@gmail.com','123123123','Akash Tiwari'),('ankurs','123','1998-01-01','ankur@gmail.com','99887766','Ankur Singh'),('ashu123','123','2021-12-08','ashu@gmail.com','9988776655','Ashu Yadav'),('ashudon','123','1998-12-28','ashu@gmail.com','345466789067','ashutosh yadav'),('dipanshu','123','1999-01-14','dipanshu@gmail.com','6677889955','Dipanshu Reutela'),('dippaklover','123','1998-05-12','dipak@gmail.com','9988776655','dipak kalaker'),('maddy17','123','1997-02-20','maddy@gmail.com','9876545678','Madhuri gholave'),('madhuri','123','1997-02-10','madhuri@gmail.com','99069955','madhuri gov'),('prajii','123','1988-04-12','Praju@gmaip.com','123456789','Prajakta waghmare '),('pratik','123','1997-12-09','pratik@gmail.com','6655446677','Pratik K'),('sunny','123','1999-09-03','sunny@gmail.com','9898989898','Sunny Sakpal'),('takshay_tea','123','1994-01-12','akshayt@gmail.com','2233445566','Akshay Tarate'),('tanmay_b','','1999-01-12','tanmayb@gmail.com','','Tanmay Bhalerao'),('vpad_me','123','1999-09-23','vpalkar@gmail.com','9988776655','Vedant Palwankar');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 18:17:54
