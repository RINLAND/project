-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: grp
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `grp_board`
--

DROP TABLE IF EXISTS `grp_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_board` (
  `boardID` int NOT NULL AUTO_INCREMENT,
  `boardTeam` varchar(20) NOT NULL,
  `boardCode` varchar(20) NOT NULL,
  `boardColor` varchar(20) NOT NULL,
  `boardMaker` varchar(20) NOT NULL,
  `boardTitle` varchar(200) NOT NULL,
  `boardRead` char(1) DEFAULT '1',
  `boardWrite` char(1) DEFAULT '1',
  `boardReply` char(1) DEFAULT '1',
  `boardDown` char(1) DEFAULT '1',
  `boardType` char(1) DEFAULT '1',
  `boardReference` char(1) DEFAULT 'Y',
  `boardRegdate` date DEFAULT NULL,
  `boardDetail` varchar(100) NOT NULL,
  PRIMARY KEY (`boardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_board`
--

LOCK TABLES `grp_board` WRITE;
/*!40000 ALTER TABLE `grp_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_calendar`
--

DROP TABLE IF EXISTS `grp_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_calendar` (
  `cal_id` int NOT NULL AUTO_INCREMENT,
  `startDate` char(12) NOT NULL,
  `endDate` char(12) NOT NULL,
  `calContent` varchar(255) NOT NULL,
  `enpNum` varchar(30) NOT NULL,
  PRIMARY KEY (`cal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_calendar`
--

LOCK TABLES `grp_calendar` WRITE;
/*!40000 ALTER TABLE `grp_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_comcalendar`
--

DROP TABLE IF EXISTS `grp_comcalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_comcalendar` (
  `comcal_id` int NOT NULL AUTO_INCREMENT,
  `comstartDate` char(12) NOT NULL,
  `comendDate` char(12) NOT NULL,
  `comcalContent` varchar(255) NOT NULL,
  PRIMARY KEY (`comcal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_comcalendar`
--

LOCK TABLES `grp_comcalendar` WRITE;
/*!40000 ALTER TABLE `grp_comcalendar` DISABLE KEYS */;
INSERT INTO `grp_comcalendar` VALUES (1,'2021-01-12','2021-01-22','집에가는일정!'),(2,'2020-12-08','2021-01-29','앨범mv');
/*!40000 ALTER TABLE `grp_comcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_employee`
--

DROP TABLE IF EXISTS `grp_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_team` varchar(10) NOT NULL,
  `emp_grade` varchar(20) NOT NULL,
  `emp_num` varchar(20) NOT NULL,
  `emp_date` date DEFAULT NULL,
  `emp_name` varchar(10) NOT NULL,
  `emp_pwd` varchar(20) NOT NULL,
  `emp_auth` int DEFAULT '1',
  `emp_confirm` char(1) DEFAULT 'N',
  `emp_enter` date DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_employee`
--

LOCK TABLES `grp_employee` WRITE;
/*!40000 ALTER TABLE `grp_employee` DISABLE KEYS */;
INSERT INTO `grp_employee` VALUES (1,'','','admin',NULL,'관리자','1234',10,'Y',NULL),(2,'200','1','202020012','2021-01-13','김사원','1234',1,'N','2020-03-16'),(3,'700','3','201970033','2021-01-13','박주임','4567',1,'N','2019-05-13'),(4,'100','9','201610094','2021-01-14','박이사','4567',1,'N','2016-06-13');
/*!40000 ALTER TABLE `grp_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_freeboard`
--

DROP TABLE IF EXISTS `grp_freeboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_freeboard` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `fTeam` varchar(10) NOT NULL,
  `fTitle` varchar(100) NOT NULL,
  `fWriter` varchar(10) NOT NULL,
  `fColor` varchar(20) NOT NULL,
  `fRegdate` date NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_freeboard`
--

LOCK TABLES `grp_freeboard` WRITE;
/*!40000 ALTER TABLE `grp_freeboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_freeboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_grade`
--

DROP TABLE IF EXISTS `grp_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_grade` (
  `grade_id` varchar(2) NOT NULL,
  `grade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_grade`
--

LOCK TABLES `grp_grade` WRITE;
/*!40000 ALTER TABLE `grp_grade` DISABLE KEYS */;
INSERT INTO `grp_grade` VALUES ('9','이사'),('8','본부장'),('7','팀장'),('6','과장'),('5','부장'),('4','대리'),('3','주임'),('2','사원'),('1','인턴');
/*!40000 ALTER TABLE `grp_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_notice`
--

DROP TABLE IF EXISTS `grp_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_notice` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `nPost` varchar(10) NOT NULL,
  `nTeam` varchar(10) NOT NULL,
  `nTitle` varchar(100) NOT NULL,
  `nWriter` varchar(10) NOT NULL,
  `nCount` int NOT NULL,
  `nRegdate` date NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_notice`
--

LOCK TABLES `grp_notice` WRITE;
/*!40000 ALTER TABLE `grp_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_post`
--

DROP TABLE IF EXISTS `grp_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_post` (
  `post_id` varchar(5) NOT NULL,
  `post_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_post`
--

LOCK TABLES `grp_post` WRITE;
/*!40000 ALTER TABLE `grp_post` DISABLE KEYS */;
INSERT INTO `grp_post` VALUES ('100','일반행정'),('200','기획'),('300','인사관리'),('400','예산회계'),('500','근태관리'),('600','경조사');
/*!40000 ALTER TABLE `grp_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_system`
--

DROP TABLE IF EXISTS `grp_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_system` (
  `sys_logo` varchar(100) NOT NULL,
  `sys_sub` varchar(100) NOT NULL,
  `sys_ceo` varchar(10) NOT NULL,
  `sys_tell` varchar(15) NOT NULL,
  `sys_url` varchar(50) NOT NULL,
  `sys_copy` varchar(200) NOT NULL,
  `sys_addr` varchar(200) NOT NULL,
  `sys_title` varchar(100) NOT NULL,
  `sys_up` varchar(100) NOT NULL,
  `sys_down` varchar(100) NOT NULL,
  `sys_auth` int DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_system`
--

LOCK TABLES `grp_system` WRITE;
/*!40000 ALTER TABLE `grp_system` DISABLE KEYS */;
INSERT INTO `grp_system` VALUES ('VV ENTERTAMENT','GROUP SYSTEM','CYJ','051-152-4567','VV ENT.good.co.kr','good alright reserved','Korea. Seoul','Have A Good Day','BEST ENTERTAMENT','BEST PEOPLE',2);
/*!40000 ALTER TABLE `grp_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_team`
--

DROP TABLE IF EXISTS `grp_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_team` (
  `team_id` varchar(5) NOT NULL,
  `team_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_team`
--

LOCK TABLES `grp_team` WRITE;
/*!40000 ALTER TABLE `grp_team` DISABLE KEYS */;
INSERT INTO `grp_team` VALUES ('100','마케팅'),('200','경영지원'),('300','매니지먼트'),('400','엔터사업'),('500','재무회계'),('600','프로듀싱'),('700','영업'),('800','영상디자인');
/*!40000 ALTER TABLE `grp_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_teamboard`
--

DROP TABLE IF EXISTS `grp_teamboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_teamboard` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `tTeam` varchar(10) NOT NULL,
  `tTitle` varchar(100) NOT NULL,
  `tWriter` varchar(10) NOT NULL,
  `tColor` int NOT NULL,
  `tRegdate` date NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_teamboard`
--

LOCK TABLES `grp_teamboard` WRITE;
/*!40000 ALTER TABLE `grp_teamboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_teamboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 14:51:26
