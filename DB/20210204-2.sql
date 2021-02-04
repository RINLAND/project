-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: grp
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `gat_article_marketing`
--

DROP TABLE IF EXISTS `gat_article_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_marketing` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_marketing`
--

LOCK TABLES `gat_article_marketing` WRITE;
/*!40000 ALTER TABLE `gat_article_marketing` DISABLE KEYS */;
INSERT INTO `gat_article_marketing` VALUES (1,'N','인턴사원&nbsp;모집&nbsp;공고&nbsp;알림','박주임','마케팅 부서 인턴사원 모집공고를 아래 첨부파일에서 확인하실 수 있습니다. ','2021-02-04 11:55:04',0,NULL,NULL,NULL,1,0,0),(2,'N','테스트&nbsp;중입니다.','박주임','','2021-02-04 11:55:36',0,NULL,NULL,NULL,2,0,0);
/*!40000 ALTER TABLE `gat_article_marketing` ENABLE KEYS */;
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
-- Table structure for table `gat_comment_marketing`
--

DROP TABLE IF EXISTS `gat_comment_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_marketing` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_marketing`
--

LOCK TABLES `gat_comment_marketing` WRITE;
/*!40000 ALTER TABLE `gat_comment_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_comment_marketing` ENABLE KEYS */;
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
-- Table structure for table `gat_freearticle_manage`
--

DROP TABLE IF EXISTS `gat_freearticle_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_freearticle_manage` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_freearticle_manage`
--

LOCK TABLES `gat_freearticle_manage` WRITE;
/*!40000 ALTER TABLE `gat_freearticle_manage` DISABLE KEYS */;
INSERT INTO `gat_freearticle_manage` VALUES (1,'Y','자유게시판&nbsp;이용&nbsp;안내','관리자','&lt;p>안녕하세요.&lt;/p>\r<br />\r<br />&lt;p>매니지먼트 부서의 경조사관련 자유게시판 생성이 완료되었습니다.&lt;/p>\r<br />','2021-02-04 11:45:15',1,NULL,NULL,NULL,1,0,0),(2,'N','이번&nbsp;달&nbsp;부서&nbsp;티파티&nbsp;안내드립니다','박주임','&lt;p>안녕하세요. 박주임입니다/&lt;/p>\r<br />\r<br />&lt;p>저희 부서에서는 매달 소소하게 티파티를 진행해왔는데요.&lt;/p>\r<br />\r<br />&lt;p>코로나확산에 의해 당분간 중단합니다! ㅠㅠ&lt;/p>\r<br />\r<br />&lt;p>&nbsp;&lt;/p>\r<br />','2021-02-04 11:50:06',0,NULL,NULL,NULL,2,0,0);
/*!40000 ALTER TABLE `gat_freearticle_manage` ENABLE KEYS */;
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
-- Table structure for table `gat_freecomment_manage`
--

DROP TABLE IF EXISTS `gat_freecomment_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_freecomment_manage` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_freecomment_manage`
--

LOCK TABLES `gat_freecomment_manage` WRITE;
/*!40000 ALTER TABLE `gat_freecomment_manage` DISABLE KEYS */;
INSERT INTO `gat_freecomment_manage` VALUES (1,1,'네 감사합니다!\r\n','김사원',NULL);
/*!40000 ALTER TABLE `gat_freecomment_manage` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_comcalendar`
--

LOCK TABLES `grp_comcalendar` WRITE;
/*!40000 ALTER TABLE `grp_comcalendar` DISABLE KEYS */;
INSERT INTO `grp_comcalendar` VALUES (1,'2021-01-05','2021-01-06','1234'),(2,'2021-01-29','2021-01-30','워크샵');
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
  `emp_cp` char(8) DEFAULT NULL,
  `emp_in` char(8) DEFAULT NULL,
  `emp_tel` char(8) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_employee`
--

LOCK TABLES `grp_employee` WRITE;
/*!40000 ALTER TABLE `grp_employee` DISABLE KEYS */;
INSERT INTO `grp_employee` VALUES (1,'','','admin',NULL,'관리자','1234',10,'Y',NULL,NULL),(2,'200','1','202020012','2021-01-13','김사원','1234',3,'Y','2020-03-16',NULL),(3,'700','3','201970033','2021-01-13','박주임','4567',3,'Y','2019-05-13',NULL),(4,'100','9','201610094','2021-01-14','박이사','4567',3,'Y','2016-06-13',NULL),(6,'400','3','201940035','2021-02-04','김시원','4567',1,'N','2019-05-20',NULL),(7,'300','2','202030027','2021-02-04','김지원','3698',1,'N','2020-09-07',NULL),(8,'700','5','201670058','2021-02-04','황혜원','7894',1,'N','2016-03-07',NULL),(9,'800','1','202080019','2021-02-04','박영기','2587',1,'N','2020-10-12',NULL),(10,'500','4','2019500410','2021-02-04','심이영','7895',1,'N','2019-03-04',NULL),(11,'700','2','2020700211','2021-02-04','최보림','6549',1,'N','2020-03-09',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_freeboard`
--

LOCK TABLES `grp_freeboard` WRITE;
/*!40000 ALTER TABLE `grp_freeboard` DISABLE KEYS */;
INSERT INTO `grp_freeboard` VALUES (6,'100','test','Orange','관리자','안녕하세요. 게시판 테스트중입니다.','1','1','1','1','100','yes','2021-01-30',''),(7,'300','manage','red','관리자','매니지먼트부서 자유게시판','1','1','1','1','600','yes','2021-02-04','매니지먼트 부서 경조사관련 자유게시판입니다.');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_notice`
--

LOCK TABLES `grp_notice` WRITE;
/*!40000 ALTER TABLE `grp_notice` DISABLE KEYS */;
INSERT INTO `grp_notice` VALUES (NULL,1,'11','11','11','2021-02-01 18:10:22',1,'Y'),(NULL,2,'123','123','123','2021-02-01 18:11:37',2,'Y'),(NULL,3,'1111112341231123','111','111111','2021-02-01 18:11:54',2,'Y'),(NULL,4,'1234','1234','123124','2021-02-01 18:19:04',1,'Y'),(NULL,5,'1','111','11','2021-02-02 02:57:08',35,'Y'),(NULL,6,'11','111','1111','2021-02-02 03:12:39',1,'Y'),(NULL,7,'11','11','111','2021-02-02 03:14:42',0,'Y'),(NULL,8,'1234','1234','1234','2021-02-02 03:16:50',2,'Y'),(NULL,9,NULL,NULL,NULL,'2021-02-02 03:18:15',40,'Y'),(NULL,10,NULL,NULL,NULL,'2021-02-02 03:34:37',1,'Y'),(NULL,11,NULL,NULL,NULL,'2021-02-02 03:36:19',1,'Y'),(NULL,12,NULL,NULL,NULL,'2021-02-02 03:41:05',17,'Y'),(NULL,13,NULL,NULL,NULL,'2021-02-02 03:42:44',1,'Y'),(NULL,14,NULL,NULL,NULL,'2021-02-02 03:44:04',1,'Y'),(NULL,15,'1111111111111','1234121','<p>123456</p>\r\n','2021-02-02 03:44:27',3,'Y'),(NULL,16,'1233455','1134','<p>12323131111</p>\r\n','2021-02-02 03:46:56',2,'Y'),(NULL,17,'1234','관리자','<p>1234</p>\r\n','2021-02-02 04:01:21',0,'Y'),(NULL,18,'12','관리자11','<p>1234</p>\r\n','2021-02-02 04:01:29',0,'Y'),(NULL,19,'1','관리자','<p>1</p>\r\n','2021-02-02 04:02:41',0,'Y'),(NULL,20,'2','관리자','<p>2</p>\r\n','2021-02-02 04:03:01',0,'Y'),(NULL,21,'1','관리자','<p>1</p>\r\n','2021-02-02 04:03:20',0,'Y'),(NULL,22,'2','관리자','<p>2</p>\r\n','2021-02-02 04:03:23',1,'Y'),(NULL,23,'3','관리자','<p>3</p>\r\n','2021-02-02 04:03:29',0,'Y'),(NULL,24,'4','관리자','<p>4</p>\r\n','2021-02-02 04:03:33',0,'Y'),(NULL,25,'5','관리자','<p>5</p>\r\n','2021-02-02 04:03:35',0,'Y'),(NULL,26,'123','관리자','<p>123</p>\r\n','2021-02-02 04:03:39',2,'Y'),(NULL,27,'1','관리자','<p>1RRR</p>\r\n','2021-02-02 04:06:31',2,'Y'),(NULL,28,'2021년 신년회 행사 알림','관리자','<p>안녕하십니까.</p>\r\n\r\n<p>2021년 신년회 행사에 관해 안내드립니다.</p>\r\n\r\n<p>금년 행사는 지속되는 코로나의 확산으로 취소되었음을 알려드립니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n','2021-02-04 10:47:32',0,'N'),(NULL,29,'2020년 연말정산 알림','관리자','<p>안녕하십니까 2020년도분 연말정산과 관련해 안내드립니다.</p>\r\n\r\n<p>모든 임직원께서는 국세청 홈페이지에서&nbsp;</p>\r\n\r\n<p>연말정산을 하시고&nbsp;</p>\r\n\r\n<p>자료 PDF 파일을 해당 부서 담당자에게 전달해주시길 바랍니다.</p>\r\n\r\n<p>마감기간 : 2021년 2월 10일까지</p>\r\n','2021-02-04 10:49:25',0,'N'),(NULL,30,'코로나 확산에 따른 사내 복지시설사용안내','관리자','<p>안녕하십니까 계속 되는 코로나 확산에 따른 사내 복지시설 사용에 관해 알려드립니다.</p>\r\n\r\n<p>저희 회사에서 휴게실을 비롯한 다양한 복지시설을 갖추고 있습니다.</p>\r\n\r\n<p>하지면 지속되는 코로나확산과 더불어 변이바이러스의 국내유입에 의해</p>\r\n\r\n<p>모든 복지시설의 사용을 금일부로 중단합니다.</p>\r\n\r\n<p>카페테리아의 경우는 테이크아웃만 가능합을 알려드립니다.</p>\r\n','2021-02-04 10:53:55',0,'N'),(NULL,31,'코로나 확산에 따른 탄력적 근무 시행 ','관리자','<p>안녕하십니까&nbsp;</p>\r\n\r\n<p>지속되는 코로나 확산에 따른 탄력적 근무 시행에 관해 알려드립니다.</p>\r\n\r\n<p>각 부서에서는 부서인원은 50%만 회사에 출근하시어 근무 해주시고,</p>\r\n\r\n<p>그 외의 인원은 재택근무로 전환해주시길 바랍니다.</p>\r\n\r\n<p>더불어 출근하셔서 근무를 하시는 분들의 1일 근무시간은 7시간(점심식사 시간 제외)으로 하여&nbsp;</p>\r\n\r\n<p>퇴근이 오후 5시까지 이루어지도록 협조부탁드립니다.</p>\r\n','2021-02-04 11:09:07',0,'N'),(NULL,32,'그룹웨어 시스템 점검알림','관리자','<p>안녕하십니까</p>\r\n\r\n<p>그룹웨어 시스템 점검에 따라 아래의 기간동안 사용이 제한됨을 알려드립니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-시스템 점검&nbsp;</p>\r\n\r\n<p>: 2021년 2월 6일(토요일) 오전 10:00 ~ 오후 18:00</p>\r\n','2021-02-04 11:11:29',0,'N'),(NULL,33,'해외출장자 업무 안내','관리자','<p>안녕하십니까&nbsp;</p>\r\n\r\n<p>해외출장자 업무에 관해 각 부서에 안내드립니다.</p>\r\n\r\n<p>저희 회사는 업무 특성상 해외바이어들과의 만남을 위해 해외출장이 많이 이루어집니다.</p>\r\n\r\n<p>하지만 전 세계적으로 계속되는 코로나 확산에 따라</p>\r\n\r\n<p>되도록 화상회의로 진행해 주시기 부탁드리며</p>\r\n\r\n<p>부득이하게 출국을 하셔야 할 경우 부서장께서는 해당인원과 출장사유에 관해&nbsp;</p>\r\n\r\n<p>운영부서로 보고 부탁드립니다.</p>\r\n\r\n<p>더불어 입국시 정부지침에 따라 14일간의 격리기간을 가지셔야 하며</p>\r\n\r\n<p>코로나 음성 확인서를 제출하셔야</p>\r\n\r\n<p>정상 출근이 가능합니다.</p>\r\n\r\n<p>격리 기간동안은 재택근무로 업무에 임해주시기 부탁드립니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n','2021-02-04 11:14:58',0,'N'),(NULL,34,'2021년 연차사용','관리자','<p>안녕하십니까</p>\r\n\r\n<p>2021년 직원분들의 연차사용에&nbsp;관해 아래에 첨부된 파일을 확인해주시길 바랍니다.</p>\r\n','2021-02-04 11:16:32',0,'N'),(NULL,35,'2021년 연간계획','관리자','<p>안녕하십니까</p>\r\n\r\n<p>2021년 연간계획을 아래의 첨부파일와 함께 알려드립니다.</p>\r\n\r\n<p>각 부서장께서는 첨부파일을 확인하시고&nbsp;</p>\r\n\r\n<p>각 부서 계획에 관한 수정과 의견이 있으시다면 2월 부서장회의에서&nbsp;</p>\r\n\r\n<p>말씀해주시면 됩니다.</p>\r\n\r\n<p>감사합니다.</p>\r\n','2021-02-04 11:19:30',0,'N'),(NULL,36,'2021년 2월 임원회의 안내','관리자','<p>안녕하십니까</p>\r\n\r\n<p>2021년 2월 임원회의 일정을 아래와 같이 안내드립니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-일시 : 2021년 2월 10일(수)</p>\r\n\r\n<p>-시간 : 오전 10:00&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n','2021-02-04 11:20:40',0,'N'),(NULL,37,'2021년 2월 부서장회의 안내','관리자','<p>안녕하십니까</p>\r\n\r\n<p>2021년 2월 부서장회의 일정을 아래와 같이 안내드립니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-일시 : 2021년 2월 15일(월)</p>\r\n\r\n<p>-시간 : 오후 14:00&nbsp;</p>\r\n','2021-02-04 11:21:39',0,'N'),(NULL,38,'2021년 설연휴 안내','관리자','<p>안녕하십니까</p>\r\n\r\n<p>2021년 설연휴에 관한 명절연휴를 아래와 같이 안내드립니다.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-연휴 일정</p>\r\n\r\n<p>: 2021년 2월 11일(사내 임시휴무일)</p>\r\n\r\n<p>: 2021년 2월 12일 ~ 14일 (명절연휴)&nbsp;</p>\r\n','2021-02-04 11:23:35',0,'N');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_teamboard`
--

LOCK TABLES `grp_teamboard` WRITE;
/*!40000 ALTER TABLE `grp_teamboard` DISABLE KEYS */;
INSERT INTO `grp_teamboard` VALUES (16,'100','finalfantasy','red','관리자','안녕하세요 ','1','1','1','1','100','yes','2021-01-30',''),(17,'100','marketing','red','박주임','마케팅 부서 게시판','1','1','1','1','300','yes','2021-02-04','마케팅 부서 인사관리 게시판입니다.');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_trainee`
--

LOCK TABLES `grp_trainee` WRITE;
/*!40000 ALTER TABLE `grp_trainee` DISABLE KEYS */;
INSERT INTO `grp_trainee` VALUES (2,'연습생','M','20021015','185','56','01012345678','01012345678','2','2020-04-15','노래','잘함','N','독서','달리기','김지원','N','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2021-02-04 12:02:40
