-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: j8a509.p.ssafy.io    Database: ssafy_cow_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `user_test_result`
--

DROP TABLE IF EXISTS `user_test_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_test_result` (
  `test_result_id` bigint NOT NULL AUTO_INCREMENT COMMENT '회원 별 오늘의 Quiz 결과 ID(seq)',
  `regtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Quiz를 푼 시간 [YYYY-mm-DD HH:mm:ss]',
  `test_result_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Quiz 결과 : true-성공(1), false-실패(0)',
  `article_id` bigint DEFAULT NULL COMMENT '[FK] 기사 ID(seq)',
  `user_id` bigint DEFAULT NULL COMMENT '[FK] 회원 ID(seq)',
  PRIMARY KEY (`test_result_id`),
  KEY `FKfu5bgscy6r6q3e2d0aiswwik1` (`article_id`),
  KEY `FK9n4qxrsgvq5pc59cptbiiumvn` (`user_id`),
  CONSTRAINT `FK9n4qxrsgvq5pc59cptbiiumvn` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKfu5bgscy6r6q3e2d0aiswwik1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_test_result`
--

LOCK TABLES `user_test_result` WRITE;
/*!40000 ALTER TABLE `user_test_result` DISABLE KEYS */;
INSERT INTO `user_test_result` VALUES (1,'2023-04-05 22:28:03',0,2,4),(2,'2023-04-05 22:28:03',0,600,4),(3,'2023-04-05 22:28:03',0,76,4),(5,'2023-04-05 01:09:51',1,66,2),(6,'2023-04-05 01:09:51',1,67,2),(7,'2023-04-05 01:09:51',1,76,2),(8,'2023-04-05 01:09:51',1,89,2),(9,'2023-04-05 01:09:51',1,107,2),(10,'2023-04-05 01:09:51',1,129,2),(11,'2023-04-05 01:09:51',1,128,2),(12,'2023-04-05 01:09:51',1,108,2),(13,'2023-04-05 01:09:51',1,105,2),(14,'2023-04-05 01:09:51',1,124,2),(15,'2023-04-05 01:09:51',1,120,2),(16,'2023-04-05 01:09:51',1,525,2),(17,'2023-04-05 01:09:51',1,530,2),(18,'2023-04-05 01:09:51',1,541,2),(19,'2023-04-05 01:09:51',1,578,2),(20,'2023-04-05 01:09:51',1,738,2),(21,'2023-04-06 01:21:17',1,153,2),(22,'2023-04-06 01:21:17',1,156,2),(23,'2023-04-05 01:09:51',1,200,2),(24,'2023-04-05 01:09:51',1,212,2),(25,'2023-04-05 01:09:51',1,213,2),(26,'2023-04-05 01:09:51',1,214,2),(27,'2023-04-05 01:09:51',1,231,2),(28,'2023-04-05 01:09:51',1,232,2),(29,'2023-04-05 01:09:51',1,233,2),(30,'2023-04-05 01:09:51',1,238,2),(31,'2023-04-05 01:09:51',0,4641,2),(32,'2023-04-05 01:09:51',0,4516,2),(34,'2023-04-05 12:18:22',0,4672,7),(35,'2023-04-05 12:18:22',0,4081,7),(36,'2023-04-05 12:18:22',0,4301,7),(43,'2023-04-06 12:26:48',0,1424,7),(44,'2023-04-06 12:26:48',0,4672,7),(45,'2023-04-06 12:26:48',0,3250,7),(46,'2023-04-06 12:26:48',0,4594,7),(54,'2023-04-06 13:07:17',1,64,1),(55,'2023-04-06 13:07:18',1,4672,1),(56,'2023-04-06 13:07:18',1,4641,1),(57,'2023-04-06 13:07:18',1,4568,1),(58,'2023-04-06 13:07:18',1,4301,1),(59,'2023-04-06 13:39:34',1,834,4),(60,'2023-04-06 13:39:34',1,20,4),(61,'2023-04-06 13:39:34',1,470,4),(62,'2023-04-06 13:39:34',1,4908,4),(63,'2023-04-06 13:39:34',1,4301,4),(64,'2023-04-06 13:39:34',1,14,4),(65,'2023-04-06 14:05:46',1,4301,11),(66,'2023-04-06 16:56:52',0,5889,12),(67,'2023-04-06 16:56:52',0,5880,12),(68,'2023-04-06 17:20:47',0,1,2),(69,'2023-04-06 17:20:47',0,4641,2),(70,'2023-04-06 17:20:47',0,4516,2),(71,'2023-04-06 17:20:47',0,4665,2),(73,'2023-04-06 23:47:34',0,5890,6),(74,'2023-04-06 23:47:34',0,6340,6),(75,'2023-04-06 23:47:34',0,6551,6),(76,'2023-04-06 23:47:34',0,6334,6),(77,'2023-04-07 01:43:59',1,6847,14),(83,'2023-04-07 03:41:47',0,8915,15),(84,'2023-04-07 03:41:47',0,8917,15),(85,'2023-04-07 03:41:47',0,8918,15),(86,'2023-04-07 03:41:47',0,4301,15),(92,'2023-04-07 04:50:55',0,4516,2),(93,'2023-04-07 04:50:55',0,1640,2),(94,'2023-04-07 04:50:55',0,8794,2),(95,'2023-04-07 04:50:55',0,4301,2),(96,'2023-04-07 04:56:57',1,2241,17),(97,'2023-04-07 04:56:57',1,1426,17),(98,'2023-04-07 04:56:57',1,579,17),(99,'2023-04-07 04:56:57',1,9114,17),(100,'2023-04-07 04:56:58',1,1426,17),(101,'2023-04-07 04:56:58',1,579,17),(102,'2023-04-07 04:56:58',1,9114,17),(103,'2023-04-07 05:00:10',1,4672,7),(104,'2023-04-07 05:00:10',1,6000,7),(105,'2023-04-07 05:00:10',1,50,7),(106,'2023-04-07 05:00:10',1,4594,7),(107,'2023-04-07 05:00:10',1,5029,7),(108,'2023-04-07 05:00:10',1,4303,7);
/*!40000 ALTER TABLE `user_test_result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 14:04:38
