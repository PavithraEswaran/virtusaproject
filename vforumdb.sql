-- MySQL dump 10.13  Distrib 5.1.30, for Win64 (unknown)
--
-- Host: localhost    Database: vforum
-- ------------------------------------------------------
-- Server version	5.1.30-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `answers` (
  `ans_id` int(11) NOT NULL,
  `answer_desc` varchar(2000) NOT NULL,
  `date` date NOT NULL,
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'No these kind of things are restricted inside the campus.','2019-08-14',8063703),(2,'Raise ticket in HR service','2019-08-14',8063691),(3,'It depends on that particular year.','2019-08-14',8063692),(3,'Refer the office calender.','2019-08-14',8063543),(18,'9.30AM to 6.30PM','2019-08-20',8063692),(17,'Machine Learning\r\nMobile Development\r\n','2019-08-20',8063692),(15,'No, capturing photos inside virtusa campus is strictly not allowed.','2019-08-21',8063704),(16,'Refer your virtusa mail you will have the link.','2019-08-21',8063704);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `cate_name` varchar(20) NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (11,'IT'),(22,'HR'),(33,'TECHNICAL'),(44,'GENERAL');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `emp_Designation` varchar(30) NOT NULL,
  `emp_Location` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (123,'Dummy','aa','Banglore','dummy','Dummy@123'),(123456,'Admin','Admin','Chennai','Admin','Admin@123'),(8063543,'Yadavalli Sravani','Associate-Engineer','Hyderabad','Sravani','Sravani@123'),(8063691,'Dharani','Associate-Engineer','Pune','Dharu','Dharani@123'),(8063692,'Akshara','Associate-Engineer','Mumbai','Achu','Akshara@123'),(8063703,'Kaviya','Associate-Engineer','Mumbai','kaviya','Kaviya@123'),(8063704,'Pavithra','Associate-Engineer','Banglore','Pavi','Pavithra@123');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `questions` (
  `ques_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `question_desc` varchar(500) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`ques_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,11,'Can an employee use personal laptops,pendrive inside the virtusa campus?',8063704,'2019-08-14'),(2,22,'I have attended the compliance test but after 2 attempts the play button to start the test is not working. Can you help me resolving this issue?',8063703,'2019-08-14'),(3,44,'How many public holidays are allocated in a year for an employee?',8063691,'2019-08-14'),(4,33,'What are the upcoming technologies the fresher has to be aware of?',8063692,'2019-08-14'),(8,11,'When is your joining date?',8063692,'2019-08-19'),(15,11,'Can an employee take photos inside the virtusa campus?',8063692,'2019-08-20'),(16,22,'How an employee can get payslip?',8063692,'2019-08-20'),(17,33,'what are the technologies should mandatorily known by an employee?',8063691,'2019-08-20'),(18,44,'What is the regular office time?',8063691,'2019-08-20'),(24,44,'my general',8063703,'2019-08-20');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-23  4:58:34
