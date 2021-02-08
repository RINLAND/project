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
-- Table structure for table `gat_article_fa`
--

DROP TABLE IF EXISTS `gat_article_fa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_fa` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_fa`
--

LOCK TABLES `gat_article_fa` WRITE;
/*!40000 ALTER TABLE `gat_article_fa` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_article_fa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_article_finalfantasy`
--

DROP TABLE IF EXISTS `gat_article_finalfantasy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_finalfantasy` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_finalfantasy`
--

LOCK TABLES `gat_article_finalfantasy` WRITE;
/*!40000 ALTER TABLE `gat_article_finalfantasy` DISABLE KEYS */;
INSERT INTO `gat_article_finalfantasy` VALUES (3,'Y','12','관리자','12','2021-01-30 20:45:01',0,NULL,NULL,NULL,1,0,0),(4,'Y','12','관리자','12','2021-01-30 20:45:06',0,NULL,NULL,NULL,2,0,0),(5,'N','11','12','1111','2021-01-30 20:46:21',0,NULL,NULL,NULL,3,0,0);
/*!40000 ALTER TABLE `gat_article_finalfantasy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_fa`
--

DROP TABLE IF EXISTS `gat_comment_fa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_fa` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_fa`
--

LOCK TABLES `gat_comment_fa` WRITE;
/*!40000 ALTER TABLE `gat_comment_fa` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_comment_fa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_finalfantasy`
--

DROP TABLE IF EXISTS `gat_comment_finalfantasy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_finalfantasy` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_finalfantasy`
--

LOCK TABLES `gat_comment_finalfantasy` WRITE;
/*!40000 ALTER TABLE `gat_comment_finalfantasy` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_comment_finalfantasy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_freearticle_hello`
--

DROP TABLE IF EXISTS `gat_freearticle_hello`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_freearticle_hello` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_freearticle_hello`
--

LOCK TABLES `gat_freearticle_hello` WRITE;
/*!40000 ALTER TABLE `gat_freearticle_hello` DISABLE KEYS */;
INSERT INTO `gat_freearticle_hello` VALUES (1,'Y','도레미파솔','관리자','&lt;p>라시도레미파&lt;/p>\r<br />','2021-01-29 15:21:06',1,NULL,NULL,NULL,1,0,0);
/*!40000 ALTER TABLE `gat_freearticle_hello` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_freearticle_test`
--

DROP TABLE IF EXISTS `gat_freearticle_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_freearticle_test` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_freearticle_test`
--

LOCK TABLES `gat_freearticle_test` WRITE;
/*!40000 ALTER TABLE `gat_freearticle_test` DISABLE KEYS */;
INSERT INTO `gat_freearticle_test` VALUES (5,'N','안녕하세요뚱냥이예용','관리자','<p>ㅎㅇㅎㅇ12312311111111111111</p>\r\n','2021-01-30 21:48:00',14,NULL,NULL,NULL,1,0,0),(6,'Y','11','관리자','&lt;p>11&lt;/p>\r<br />','2021-01-30 21:33:00',1,NULL,NULL,NULL,2,0,0),(7,'Y','11','관리자','<p>11</p>\r\n\r\n<p>1234</p>\r\n','2021-01-30 21:36:58',0,NULL,NULL,NULL,3,0,0);
/*!40000 ALTER TABLE `gat_freearticle_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_freecomment_hello`
--

DROP TABLE IF EXISTS `gat_freecomment_hello`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_freecomment_hello` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_freecomment_hello`
--

LOCK TABLES `gat_freecomment_hello` WRITE;
/*!40000 ALTER TABLE `gat_freecomment_hello` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_freecomment_hello` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_freecomment_test`
--

DROP TABLE IF EXISTS `gat_freecomment_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_freecomment_test` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_freecomment_test`
--

LOCK TABLES `gat_freecomment_test` WRITE;
/*!40000 ALTER TABLE `gat_freecomment_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_freecomment_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_noticearticle_notice`
--

DROP TABLE IF EXISTS `gat_noticearticle_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_noticearticle_notice` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_noticearticle_notice`
--

LOCK TABLES `gat_noticearticle_notice` WRITE;
/*!40000 ALTER TABLE `gat_noticearticle_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_noticearticle_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_noticecomment_notice`
--

DROP TABLE IF EXISTS `gat_noticecomment_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_noticecomment_notice` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_noticecomment_notice`
--

LOCK TABLES `gat_noticecomment_notice` WRITE;
/*!40000 ALTER TABLE `gat_noticecomment_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_noticecomment_notice` ENABLE KEYS */;
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
  `empNum` varchar(30) NOT NULL,
  PRIMARY KEY (`cal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_calendar`
--

LOCK TABLES `grp_calendar` WRITE;
/*!40000 ALTER TABLE `grp_calendar` DISABLE KEYS */;
INSERT INTO `grp_calendar` VALUES (1,'2021-01-12','2021-01-19','1234','admin'),(2,'2021-01-05','2021-01-06','1234','admin'),(3,'2021-01-05','2021-01-13','1234','admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_comcalendar`
--

LOCK TABLES `grp_comcalendar` WRITE;
/*!40000 ALTER TABLE `grp_comcalendar` DISABLE KEYS */;
INSERT INTO `grp_comcalendar` VALUES (14,'2021-02-03','2021-02-06','앨범mv촬영');
/*!40000 ALTER TABLE `grp_comcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_emp_others`
--

DROP TABLE IF EXISTS `grp_emp_others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_emp_others` (
  `emp_gender` char(2) DEFAULT NULL,
  `emp_birth` char(8) DEFAULT NULL,
  `emp_cp` char(15) DEFAULT NULL,
  `emp_in` char(15) DEFAULT NULL,
  `emp_tel` char(15) DEFAULT NULL,
  `emp_recruit` char(8) DEFAULT NULL,
  `emp_unique` varchar(30) DEFAULT NULL,
  `emp_uniquedetail` varchar(30) DEFAULT NULL,
  `emp_military` char(8) DEFAULT NULL,
  `emp_hobby` varchar(20) DEFAULT NULL,
  `emp_disability` char(3) DEFAULT NULL,
  `emp_reward` char(3) DEFAULT NULL,
  `emp_married` char(3) DEFAULT NULL,
  `emp_level` char(14) DEFAULT NULL,
  `emp_school` varchar(20) DEFAULT NULL,
  `emp_major` varchar(20) DEFAULT NULL,
  `emp_email` varchar(20) DEFAULT NULL,
  `emp_address` char(14) DEFAULT NULL,
  `emp_license1` varchar(20) DEFAULT NULL,
  `emp_license2` varchar(20) DEFAULT NULL,
  `emp_license3` varchar(20) DEFAULT NULL,
  `emp_lang1` varchar(20) DEFAULT NULL,
  `emp_lang2` varchar(20) DEFAULT NULL,
  `emp_award1` varchar(20) DEFAULT NULL,
  `emp_award2` varchar(20) DEFAULT NULL,
  `emp_award3` varchar(20) DEFAULT NULL,
  `emp_award4` varchar(20) DEFAULT NULL,
  `emp_award5` varchar(20) DEFAULT NULL,
  `emp_num` varchar(30) NOT NULL,
  `emp_comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_emp_others`
--

LOCK TABLES `grp_emp_others` WRITE;
/*!40000 ALTER TABLE `grp_emp_others` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_emp_others` ENABLE KEYS */;
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
  `emp_photo` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_employee`
--

LOCK TABLES `grp_employee` WRITE;
/*!40000 ALTER TABLE `grp_employee` DISABLE KEYS */;
INSERT INTO `grp_employee` VALUES (1,'','','admin',NULL,'관리자','1234',10,'Y',NULL,NULL),(2,'200','1','202020012','2021-01-13','김사원','1234',3,'Y','2020-03-16',NULL),(3,'700','3','201970033','2021-01-13','박주임','4567',3,'Y','2019-05-13',NULL),(4,'100','9','201610094','2021-01-14','박이사','4567',3,'Y','2016-06-13',NULL);
/*!40000 ALTER TABLE `grp_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_freeboard`
--

DROP TABLE IF EXISTS `grp_freeboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_freeboard` (
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
  `boardType` varchar(20) DEFAULT '1',
  `boardReference` varchar(20) DEFAULT 'Y',
  `boardRegdate` date DEFAULT NULL,
  `boardDetail` varchar(100) NOT NULL,
  PRIMARY KEY (`boardID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_freeboard`
--

LOCK TABLES `grp_freeboard` WRITE;
/*!40000 ALTER TABLE `grp_freeboard` DISABLE KEYS */;
INSERT INTO `grp_freeboard` VALUES (6,'100','test','Orange','관리자','안녕하세요. 게시판 테스트중입니다.','1','1','1','1','100','yes','2021-01-30','');
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
  `BGNO` int DEFAULT NULL,
  `BRDNO` int NOT NULL AUTO_INCREMENT,
  `BRDTITLE` varchar(255) DEFAULT NULL,
  `BRDWRITER` varchar(20) DEFAULT NULL,
  `BRDMEMO` varchar(4000) DEFAULT NULL,
  `BRDDATE` datetime DEFAULT NULL,
  `BRDHIT` int DEFAULT NULL,
  `BRDDELETEFLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`BRDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_notice`
--

LOCK TABLES `grp_notice` WRITE;
/*!40000 ALTER TABLE `grp_notice` DISABLE KEYS */;
INSERT INTO `grp_notice` VALUES (NULL,2,'1234','관리자','<p>1234</p>\r\n','2021-02-05 11:50:13',0,'N');
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
  `boardType` varchar(20) DEFAULT '1',
  `boardReference` varchar(20) DEFAULT 'Y',
  `boardRegdate` date DEFAULT NULL,
  `boardDetail` varchar(100) NOT NULL,
  PRIMARY KEY (`boardID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_teamboard`
--

LOCK TABLES `grp_teamboard` WRITE;
/*!40000 ALTER TABLE `grp_teamboard` DISABLE KEYS */;
INSERT INTO `grp_teamboard` VALUES (16,'100','finalfantasy','red','관리자','안녕하세요 ','1','1','1','1','100','yes','2021-01-30','');
/*!40000 ALTER TABLE `grp_teamboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_trainee`
--

DROP TABLE IF EXISTS `grp_trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_trainee` (
  `trainee_id` int NOT NULL AUTO_INCREMENT,
  `trainee_name` varchar(10) DEFAULT NULL,
  `trainee_gender` char(2) DEFAULT NULL,
  `trainee_birth` char(10) DEFAULT NULL,
  `trainee_hight` char(5) DEFAULT NULL,
  `trainee_weight` char(5) DEFAULT NULL,
  `trainee_phon` char(15) DEFAULT NULL,
  `trainee_tell` char(15) DEFAULT NULL,
  `trainee_hire` char(10) DEFAULT NULL,
  `trainee_hiredate` date DEFAULT NULL,
  `trainee_unique` varchar(10) DEFAULT NULL,
  `trainee_unique_detail` varchar(10) DEFAULT NULL,
  `trainee_military` char(5) DEFAULT NULL,
  `trainee_hobby` varchar(20) DEFAULT NULL,
  `trainee_speciality` varchar(20) DEFAULT NULL,
  `trainee_manager` char(10) DEFAULT NULL,
  `trainee_rewarding` char(5) DEFAULT NULL,
  `trainee_structue` char(5) DEFAULT NULL,
  `trainee_level` char(10) DEFAULT NULL,
  `trainee_school` char(15) DEFAULT NULL,
  `trainee_major` char(15) DEFAULT NULL,
  `trainee_email` varchar(20) DEFAULT NULL,
  `trainee_address` varchar(50) DEFAULT NULL,
  `trainee_home` varchar(50) DEFAULT NULL,
  `trainee_license1` varchar(20) DEFAULT NULL,
  `trainee_license2` varchar(20) DEFAULT NULL,
  `trainee_license3` varchar(20) DEFAULT NULL,
  `trainee_languge1` varchar(20) DEFAULT NULL,
  `trainee_languge2` varchar(20) DEFAULT NULL,
  `trainee_languge3` varchar(20) DEFAULT NULL,
  `trainee_award1` varchar(20) DEFAULT NULL,
  `trainee_award2` varchar(20) DEFAULT NULL,
  `trainee_award3` varchar(20) DEFAULT NULL,
  `trainee_award4` varchar(20) DEFAULT NULL,
  `trainee_photo` varchar(100) DEFAULT NULL,
  `trainee_comment` text,
  `trainee_id_fk` int DEFAULT NULL,
  PRIMARY KEY (`trainee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_trainee`
--

LOCK TABLES `grp_trainee` WRITE;
/*!40000 ALTER TABLE `grp_trainee` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_trainee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-08 15:29:22
