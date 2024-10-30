CREATE DATABASE  IF NOT EXISTS `project3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project3`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: project3
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience` (
  `experience_id` int NOT NULL,
  `respondent_id` int DEFAULT NULL,
  `data_science_exp` tinyint(1) DEFAULT NULL,
  `software_eng_exp` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`experience_id`),
  KEY `respondent_id` (`respondent_id`),
  CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`respondent_id`) REFERENCES `respondents` (`respondent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (1,1,0,1),(2,2,0,1),(3,3,1,0),(4,4,0,1),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,1,1),(10,10,1,1),(11,11,0,0);
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interestareas`
--

DROP TABLE IF EXISTS `interestareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interestareas` (
  `interest_id` int NOT NULL,
  `respondent_id` int DEFAULT NULL,
  `interest_area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`interest_id`),
  KEY `respondent_id` (`respondent_id`),
  CONSTRAINT `interestareas_ibfk_1` FOREIGN KEY (`respondent_id`) REFERENCES `respondents` (`respondent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interestareas`
--

LOCK TABLES `interestareas` WRITE;
/*!40000 ALTER TABLE `interestareas` DISABLE KEYS */;
INSERT INTO `interestareas` VALUES (1,1,'Data Analysis'),(2,2,'Machine learning'),(3,3,'machine learning models'),(4,4,'Data Analysis'),(5,5,'Statistical analysis'),(6,6,'Translating word problems into research questions'),(7,7,'-'),(8,8,'SQL'),(9,9,'buidling machine learning models'),(10,10,'Data Visualization'),(11,11,'How to collect data from multiple platforms and combine it together.');
/*!40000 ALTER TABLE `interestareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learningresources`
--

DROP TABLE IF EXISTS `learningresources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learningresources` (
  `resource_id` int NOT NULL,
  `respondent_id` int DEFAULT NULL,
  `resource` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`resource_id`),
  KEY `respondent_id` (`respondent_id`),
  CONSTRAINT `learningresources_ibfk_1` FOREIGN KEY (`respondent_id`) REFERENCES `respondents` (`respondent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learningresources`
--

LOCK TABLES `learningresources` WRITE;
/*!40000 ALTER TABLE `learningresources` DISABLE KEYS */;
INSERT INTO `learningresources` VALUES (1,1,'YouTube, Google, Copilot'),(2,2,'Book, website'),(3,3,'google, youtube, stack overflow'),(4,4,'YouTube, Google, Copilot'),(5,5,'Chatgpt'),(6,6,'The web mostly'),(7,7,'-'),(8,8,'YouTube'),(9,9,'kaggle'),(10,10,'YouTube'),(11,11,'Class, textbook, web and youtube');
/*!40000 ALTER TABLE `learningresources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programminglanguages`
--

DROP TABLE IF EXISTS `programminglanguages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programminglanguages` (
  `language_id` int NOT NULL,
  `respondent_id` int DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`language_id`),
  KEY `respondent_id` (`respondent_id`),
  CONSTRAINT `programminglanguages_ibfk_1` FOREIGN KEY (`respondent_id`) REFERENCES `respondents` (`respondent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programminglanguages`
--

LOCK TABLES `programminglanguages` WRITE;
/*!40000 ALTER TABLE `programminglanguages` DISABLE KEYS */;
INSERT INTO `programminglanguages` VALUES (1,1,'Java'),(2,2,'SQL'),(3,3,'R'),(4,4,'Java'),(5,5,'SQL'),(6,6,'R'),(7,7,'-'),(8,8,'None'),(9,9,'python, R'),(10,10,'Java'),(11,11,'R');
/*!40000 ALTER TABLE `programminglanguages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respondents`
--

DROP TABLE IF EXISTS `respondents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respondents` (
  `respondent_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`respondent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respondents`
--

LOCK TABLES `respondents` WRITE;
/*!40000 ALTER TABLE `respondents` DISABLE KEYS */;
INSERT INTO `respondents` VALUES (1,'Inna',29),(2,'Md Asaduzzaman',42),(3,'Alex',27),(4,'Inna',29),(5,'Cindy',34),(6,'Sarika',46),(7,'Halyna',27),(8,'Veronika',28),(9,'helih',25),(10,'Md Asadul',24),(11,'Zaneta',35);
/*!40000 ALTER TABLE `respondents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softskills`
--

DROP TABLE IF EXISTS `softskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `softskills` (
  `soft_skill_id` int NOT NULL,
  `respondent_id` int DEFAULT NULL,
  `soft_skill` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`soft_skill_id`),
  KEY `respondent_id` (`respondent_id`),
  CONSTRAINT `softskills_ibfk_1` FOREIGN KEY (`respondent_id`) REFERENCES `respondents` (`respondent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softskills`
--

LOCK TABLES `softskills` WRITE;
/*!40000 ALTER TABLE `softskills` DISABLE KEYS */;
INSERT INTO `softskills` VALUES (1,1,'Critical Thinking'),(2,2,'Machine learning'),(3,3,'finding data'),(4,4,'Critical Thinking'),(5,5,'Story telling'),(6,6,'Translating word problems into research questions'),(7,7,'Presentation skills'),(8,8,'Communication'),(9,9,'data anslysis and drawing insights'),(10,10,'Critical Thinking'),(11,11,'Critical thinking');
/*!40000 ALTER TABLE `softskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valuableskills`
--

DROP TABLE IF EXISTS `valuableskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valuableskills` (
  `valuable_skill_id` int NOT NULL,
  `respondent_id` int DEFAULT NULL,
  `skill_rank` int DEFAULT NULL,
  `skill_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`valuable_skill_id`),
  KEY `respondent_id` (`respondent_id`),
  CONSTRAINT `valuableskills_ibfk_1` FOREIGN KEY (`respondent_id`) REFERENCES `respondents` (`respondent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valuableskills`
--

LOCK TABLES `valuableskills` WRITE;
/*!40000 ALTER TABLE `valuableskills` DISABLE KEYS */;
INSERT INTO `valuableskills` VALUES (1,1,1,'Programming'),(2,1,2,'Data Manipulation'),(3,1,3,'Machine Learning'),(4,1,4,'Data Visualization'),(5,1,5,'Statistical Analysis'),(6,2,1,'R language skill'),(7,2,2,'Python skill'),(8,2,3,'Statistics and math skill'),(9,2,4,'Data Visualization skill'),(10,2,5,'SQL skill'),(11,3,1,'data cleaning'),(12,3,2,'modeling'),(13,3,3,'exploratory data analysis'),(14,3,4,'data visualization'),(15,3,5,'finding data'),(16,4,1,'Programming'),(17,4,2,'Database Knowledge'),(18,4,3,'Statistics'),(19,4,4,'Machine Learning'),(20,4,5,'Data Manipulation'),(21,5,1,'Statistical analysis'),(22,5,2,'Presenting'),(23,5,3,'Collaboration'),(24,5,4,'Statistical analysis'),(25,5,5,'Programming skills'),(26,6,1,'Maths'),(27,6,2,'Persistence'),(28,6,3,'Resourcefulness'),(29,6,4,'Translation (maths to words)'),(30,6,5,'Time'),(31,7,1,'Accuracy'),(32,7,2,'Patience'),(33,7,3,'Organization'),(34,7,4,'Dedication'),(35,7,5,'Analysis'),(36,8,1,'SQL'),(37,8,2,'SQL'),(38,8,3,'Mathematics'),(39,8,4,'Excel'),(40,8,5,'Problem solving'),(41,9,1,'building machine learning models'),(42,9,2,'data analysis'),(43,9,3,'building models'),(44,9,4,'data extraction'),(45,9,5,'data cleaning'),(46,10,1,'R Programming'),(47,10,2,'Statistical Analysis'),(48,10,3,'SQL'),(49,10,4,'Data Visualization'),(50,10,5,'Data Cleaning'),(51,11,1,'Programming'),(52,11,2,'Database management'),(53,11,3,'Coding'),(54,11,4,'Analytical thinking'),(55,11,5,'Cloud');
/*!40000 ALTER TABLE `valuableskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'project3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 21:34:51
