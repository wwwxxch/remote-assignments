-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(70) NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `user_chk_1` CHECK ((`name` <> _utf8mb4'')),
  CONSTRAINT `user_chk_2` CHECK ((`email` <> _utf8mb4'')),
  CONSTRAINT `user_chk_3` CHECK ((`password` <> _utf8mb4'')),
  CONSTRAINT `user_chk_4` CHECK ((`email` <> _utf8mb4'')),
  CONSTRAINT `user_chk_5` CHECK ((`password` <> _big5''))
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ajay Mccann','test1@gomail.com','1234','2023-01-28 10:38:01'),(2,'Amelie Miranda','new3@ntu.edu.tw','wwww','2023-01-28 10:42:48'),(34,'test test','yyy@yahooo.com','kkkk','2023-01-28 11:19:44'),(35,'Kevin','kkk@outloook.com','test','2023-01-28 12:21:46'),(36,'Ellen','new@ntu.edu.tw','xxxx','2023-01-28 12:22:42'),(37,'Aryan Banks','test2@gomail.com','1234','2023-01-28 14:13:19'),(38,'Bernice Farrell','test3@gomail.com','1234','2023-01-28 14:13:19'),(39,'Celine Buck','test4@gomail.com','1234','2023-01-28 14:13:19'),(40,'Daniyal Ochoa','test5@gomail.com','1234','2023-01-28 14:13:19'),(41,'Fergus Roach','test6@gomail.com','1234','2023-01-28 14:13:19'),(42,'Grace Lynn','test7@gomail.com','1234','2023-01-28 14:13:19'),(43,'Harris Schwartz','test8@gomail.com','1234','2023-01-28 14:13:19'),(44,'Jazmine Peck','test9@gomail.com','1234','2023-01-28 14:13:19'),(45,'Katy Daugherty','test10@gomail.com','1234','2023-01-28 14:13:19'),(46,'Matteo Lam','test11@gomail.com','1234','2023-01-28 14:13:19'),(47,'Nannie Chapman','test12@gomail.com','1234','2023-01-28 14:13:19'),(48,'Omer Jones','test13@gomail.com','1234','2023-01-28 14:13:19'),(49,'Oskar Hull','test14@gomail.com','1234','2023-01-28 14:13:19'),(50,'Rayhan Frye','test15@gomail.com','0000','2023-01-28 14:13:19'),(51,'Rhys Montes','test16@gomail.com','0001','2023-01-28 14:13:19'),(52,'Roger Bell','test17@gomail.com','0002','2023-01-28 14:13:19'),(53,'Ronnie Snow','test18@gomail.com','0003','2023-01-28 14:13:19'),(54,'Ruben Harding','test19@gomail.com','0004','2023-01-28 14:13:19'),(55,'Samir Atkinson','test20@gomail.com','0005','2023-01-28 14:13:19'),(56,'Seren Bishop','test21@gomail.com','0006','2023-01-28 14:13:19'),(57,'Sion Rogers','test22@gomail.com','0007','2023-01-28 14:13:19'),(58,'Sonny Carter','test23@gomail.com','0008','2023-01-28 14:13:19'),(59,'Syed O\'Moore','test24@gomail.com','ppppp','2023-01-28 14:13:19'),(60,'Wade Noble','test25@gomail.com','ppppp','2023-01-28 14:13:19'),(61,'Zaki Bridges','test26@gomail.com','ppppp','2023-01-28 14:13:19'),(68,'Angel','test999@ntu.edu.tw','dddd','2023-01-28 15:56:05'),(69,'UUUU','uni@gomail.com','9000','2023-01-30 07:17:49'),(70,'Ellen','newnew@yahooo.com.tw','xyz','2023-02-01 15:58:53'),(71,'Mindy','mindy@gomail.com','wwww','2023-02-01 16:02:04'),(72,'Amy','abc@','test','2023-02-02 14:12:27'),(73,'Leo','leo','kkk','2023-02-02 14:13:00'),(74,'Leo2','abcd','xxxx','2023-02-02 14:18:18'),(75,'Leo3','leoxx','sss','2023-02-02 14:22:16'),(76,'Leo4','leo@ntu.edu.tw','xyz','2023-02-02 14:34:16'),(77,'Sarah','sarah@goomail.com','$2b$05$pgQp.raQY03fgZlRoVXhiebGNAdimwQ3l/nlM8BtWmK5GF1c/mHRm','2023-02-03 02:37:52'),(78,'Wendy','wwwee@yahoo.com','$2b$05$A9QKPE.QRQddu2nYubkBFeuRzOkTvriIl4vX0m9j/M.i8iyKV58sO','2023-02-03 02:39:27'),(79,'Ruby','rrrxxx@gamil.com','$2b$05$JnYplhg6UnRSjg.7KuaohuiSWnSzS9hDzkX94kLiONy9jCDMc.Dse','2023-02-03 02:42:11'),(80,'Lisa','lisa@gmail.com','$2b$05$Sn2vAZkAEFunQQbaL0DEUeuC2VcH5w.PccyVBuMQcOcNIzRT1SxcC','2023-02-03 04:31:42'),(81,'Rolin','iii@gmail.com','$2b$05$LXrBFrYm3ulaPgR39X2ZhuXpTI85eIF3IRoDHaRtP1mV94l/6WCUC','2023-02-03 14:17:32'),(82,'Mary','marytest@gmail.com','$2b$05$ASQa69odk5LTlxSUnt6aeePfRAk6iSlGdc62Mp.WcmRNpj7y9FKEG','2023-02-03 15:59:10'),(83,'Joe','jojojo@gmail.com','$2b$05$4Ztr1.77v0KGsN9X2Brf2uUSjsoqki4T/cVpZM8gXoVcOVLsbGO8m','2023-02-03 16:04:38'),(84,'Jack','jjjwww@yahooo.com','$2b$05$uimSf6ParLrl7kpgPH0BKe2nQi2AGIpY7L1DkAIU/rbd/NamiHREe','2023-02-03 16:07:09'),(85,'TEST123','test123@outloook.com','$2b$05$NQ2WS75odPLeQT2n2jlRuusEEPAoXXVRcjxqiUfi4bkOtw4Ou5IWS','2023-02-04 01:24:14'),(86,'test456','test456@outloook.com','$2b$05$/Z2jMP/09S1clyxbb6ECJO60kC3gIWzVM1Vqf7lsob8gJf7XELnYW','2023-02-04 01:26:30'),(87,'yooooo','hello@yahooo.com','$2b$05$f9LttB1qFNnbo2Ne3xsrYejpVYIi8I.T8tE3f3g1er7Xe65LHnCNO','2023-02-04 01:28:59'),(88,'YEAH','yyyeee@goomail.com','$2b$05$v9uQ239eQIUYbR4BdyG48uNxOR87Vufp.x5wzkYDkGPMr7nk1DU6q','2023-02-04 01:30:15'),(89,'testagainnn','testkkk@gomail.com','$2b$05$qS9QWoE9spIJCGK44rOa6e6bQkdyIdX08Llr1kfkI41/aQsZ5Ftkq','2023-02-04 01:36:11'),(90,'xxxx','xxxx@msn.com','$2b$05$xpt.LlibVNMHv6D/ECkPMeeDgWpVcXDY3Qc8A242xFPmh0zV197eK','2023-02-04 01:37:37'),(91,'ppppp','testmail@msn.com','$2b$05$LiHf1uCUXT4Wtt0nkMm49edFOpvQjQqI5xLS0Mv9ti8F2L2y.oV9G','2023-02-04 01:38:18'),(92,'Penny','pppeeeooo@xyz.com','$2b$05$mQxD3q3fKAdpSvG81Q8ew.nCzBja8bi40LefZ17Aq/ytl0XO82HG.','2023-02-04 01:42:35'),(93,'oreo','oooeee@msn.com','$2b$05$r8/B6JVQLhiiBKWWRgr6keJbEDWNVSdQs9TlC7H.zTioNIrYJGFaq','2023-02-04 01:48:31'),(94,'WWW','fffqq@edu.tw','$2b$05$c6JKXTEJXG9DIsrDLfaKg.OPGJdaqu/gFKlmi/7lsRTb.5wlMIGHm','2023-02-04 02:03:42');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `sysid` int NOT NULL AUTO_INCREMENT,
  `author` varchar(70) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`sysid`),
  CONSTRAINT `article_chk_1` CHECK ((`author` <> _big5'')),
  CONSTRAINT `article_chk_2` CHECK ((`title` <> _big5'')),
  CONSTRAINT `article_chk_3` CHECK ((`content` <> _big5''))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Zaki Bridges','ALIEN And The Chuck Norris Effect','Praesent euismod. Donec nulla '),(2,'Fergus Roach','Improve(Increase) Your ALIEN In 3 Days','Proin pharetra nonummy pede. M'),(3,'Ruben Harding','Here\'s A Quick Way To Solve A Problem with ALIEN','Nunc lacus metus'),(4,'Sonny Carter','How To Win Buyers And Influence Sales with ALIEN','Donec elit est'),(5,'Syed O\'Moore','9 Ways ALIEN Can Make You Invincible','Sed velit urna'),(6,'Grace Lynn','Sexy ALIEN','Quisque ornare placerat risus.'),(7,'Jazmine Peck','27 Ways To Improve ALIEN','Nam vulputate. Duis a quam non'),(8,'Rhys Montes','How To Turn ALIEN Into Success','Duis a quam non neque lobortis'),(9,'Amelie Miranda','Why You Really Need (A) ALIEN','Etiam at ligula et tellus ulla'),(10,'Aryan Banks','Take The Stress Out Of ALIEN','Lorem ipsum dolor sit amet'),(11,'Katy Daugherty','Master (Your) ALIEN in 5 Minutes A Day','Donec blandit feugiat ligula. '),(12,'Roger Bell','52 Ways To Avoid ALIEN Burnout','Fusce iaculis'),(13,'Fergus Roach','If ALIEN Is So Terrible, Why Don\'t Statistics Show It?','Aliquam at eros. Etiam at ligu'),(14,'Oskar Hull','How To Sell ALIEN','Aenean nec lorem. In porttitor'),(15,'Ronnie Snow','Make Your ALIENA Reality','Donec hendrerit'),(16,'Nannie Chapman','Why ALIEN Is The Only Skill You Really Need','Donec metus massa'),(17,'Ajay Mccann','Little Known Ways To Rid Yourself Of ALIEN','In in nunc. Class aptent tacit'),(18,'Roger Bell','Read This Controversial Article And Find Out More About ALIEN','Nullam hendrerit bibendum just'),(19,'Rayhan Frye','14 Days To A Better ALIEN','Donec ut est in lectus consequ'),(20,'Grace Lynn','Top 10 Tips To Grow Your ALIEN','Aliquam nonummy adipiscing aug'),(21,'Sion Rogers','Here Is A Quick Cure For ALIEN','Pellentesque porttitor'),(22,'Matteo Lam','5 Ways You Can Get More ALIEN While Spending Less','Nunc ac magna. Maecenas odio d'),(23,'Daniyal Ochoa','How To Make Your ALIEN Look Amazing In 5 Days','Ut tincidunt volutpat urna. Ma'),(24,'Seren Bishop','5 Things To Do Immediately About ALIEN','In porttitor. Donec laoreet no'),(25,'Omer Jones','How To Make Your ALIEN Look Like A Million Bucks','Proin semper'),(26,'Harris Schwartz','ALIEN? It\'s Easy If You Do It Smart','In fermentum'),(27,'Celine Buck','How To Make Your Product Stand Out With ALIEN','Integer nulla. Donec blandit f'),(28,'Samir Atkinson','The Number One Reason You Should (Do) ALIEN','Pellentesque cursus sagittis f'),(29,'Wade Noble','Your Key To Success: ALIEN','Lorem ipsum dolor sit amet'),(30,'Bernice Farrell','3 Easy Ways To Make ALIEN Faster','Mauris et orci. Aenean nec lor'),(31,'Roger Bell','How To Find The Right ALIEN For Your Specific Service.','Maecenas odio dolor');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_ver2`
--

DROP TABLE IF EXISTS `article_ver2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_ver2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `article_ver2_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `article_ver2_chk_1` CHECK ((`user_id` > 0)),
  CONSTRAINT `article_ver2_chk_2` CHECK ((`title` <> _big5'')),
  CONSTRAINT `article_ver2_chk_3` CHECK ((`content` <> _big5''))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_ver2`
--

LOCK TABLES `article_ver2` WRITE;
/*!40000 ALTER TABLE `article_ver2` DISABLE KEYS */;
INSERT INTO `article_ver2` VALUES (1,61,'ALIEN And The Chuck Norris Effect','Praesent euismod. Donec nulla '),(2,41,'Improve(Increase) Your ALIEN In 3 Days','Proin pharetra nonummy pede. M'),(3,54,'Here\'s A Quick Way To Solve A Problem with ALIEN','Nunc lacus metus'),(4,58,'How To Win Buyers And Influence Sales with ALIEN','Donec elit est'),(5,59,'9 Ways ALIEN Can Make You Invincible','Sed velit urna'),(6,42,'Sexy ALIEN','Quisque ornare placerat risus.'),(7,44,'27 Ways To Improve ALIEN','Nam vulputate. Duis a quam non'),(8,51,'How To Turn ALIEN Into Success','Duis a quam non neque lobortis'),(9,2,'Why You Really Need (A) ALIEN','Etiam at ligula et tellus ulla'),(10,37,'Take The Stress Out Of ALIEN','Lorem ipsum dolor sit amet'),(11,45,'Master (Your) ALIEN in 5 Minutes A Day','Donec blandit feugiat ligula. '),(12,52,'52 Ways To Avoid ALIEN Burnout','Fusce iaculis'),(13,41,'If ALIEN Is So Terrible, Why Don\'t Statistics Show It?','Aliquam at eros. Etiam at ligu'),(14,49,'How To Sell ALIEN','Aenean nec lorem. In porttitor'),(15,53,'Make Your ALIENA Reality','Donec hendrerit'),(16,47,'Why ALIEN Is The Only Skill You Really Need','Donec metus massa'),(17,1,'Little Known Ways To Rid Yourself Of ALIEN','In in nunc. Class aptent tacit'),(18,52,'Read This Controversial Article And Find Out More About ALIEN','Nullam hendrerit bibendum just'),(19,50,'14 Days To A Better ALIEN','Donec ut est in lectus consequ'),(20,42,'Top 10 Tips To Grow Your ALIEN','Aliquam nonummy adipiscing aug'),(21,57,'Here Is A Quick Cure For ALIEN','Pellentesque porttitor'),(22,46,'5 Ways You Can Get More ALIEN While Spending Less','Nunc ac magna. Maecenas odio d'),(23,40,'How To Make Your ALIEN Look Amazing In 5 Days','Ut tincidunt volutpat urna. Ma'),(24,56,'5 Things To Do Immediately About ALIEN','In porttitor. Donec laoreet no'),(25,48,'How To Make Your ALIEN Look Like A Million Bucks','Proin semper'),(26,43,'ALIEN? It\'s Easy If You Do It Smart','In fermentum'),(27,39,'How To Make Your Product Stand Out With ALIEN','Integer nulla. Donec blandit f'),(28,55,'The Number One Reason You Should (Do) ALIEN','Pellentesque cursus sagittis f'),(29,60,'Your Key To Success: ALIEN','Lorem ipsum dolor sit amet'),(30,38,'3 Easy Ways To Make ALIEN Faster','Mauris et orci. Aenean nec lor'),(31,52,'How To Find The Right ALIEN For Your Specific Service.','Maecenas odio dolor');
/*!40000 ALTER TABLE `article_ver2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-04 10:58:01
