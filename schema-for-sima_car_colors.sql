CREATE DATABASE  IF NOT EXISTS `schema-for-sima` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `schema-for-sima`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schema-for-sima
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
-- Table structure for table `car_colors`
--

DROP TABLE IF EXISTS `car_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_colors` (
  `id` int NOT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_colors`
--

LOCK TABLES `car_colors` WRITE;
/*!40000 ALTER TABLE `car_colors` DISABLE KEYS */;
INSERT INTO `car_colors` VALUES (1,'Puce'),(2,''),(3,'Turquoise'),(4,'Purple'),(5,'Mauv'),(6,'Green'),(7,''),(8,'Goldenrod'),(9,'Green'),(10,'Mauv'),(11,'Teal'),(12,'Mauv'),(13,''),(14,'Red'),(15,'Indigo'),(16,'Green'),(17,'Goldenrod'),(18,'Orange'),(19,'Pink'),(20,'Yellow'),(21,'Goldenrod'),(22,'Orange'),(23,'Pink'),(24,''),(25,'Fuscia'),(26,'Puce'),(27,'Aquamarine'),(28,'Mauv'),(29,'Indigo'),(30,'Orange'),(31,'Violet'),(32,'Green'),(33,'Violet'),(34,'Aquamarine'),(35,'Turquoise'),(36,'Pink'),(37,'Blue'),(38,''),(39,''),(40,'Maroon'),(41,'Yellow'),(42,''),(43,'Violet'),(44,'Fuscia'),(45,'Crimson'),(46,'Maroon'),(47,'Yellow'),(48,'Red'),(49,'Mauv'),(50,'Mauv'),(51,'Purple'),(52,'Orange'),(53,'Aquamarine'),(54,'Turquoise'),(55,''),(56,'Orange'),(57,'Teal'),(58,'Red'),(59,'Violet'),(60,'Aquamarine'),(61,'Maroon'),(62,'Maroon'),(63,'Khaki'),(64,''),(65,''),(66,'Orange'),(67,''),(68,''),(69,'Aquamarine'),(70,'Teal'),(71,'Maroon'),(72,'Turquoise'),(73,''),(74,'Puce'),(75,'Maroon'),(76,'Blue'),(77,'Indigo'),(78,'Khaki'),(79,'Blue'),(80,'Fuscia'),(81,'Khaki'),(82,'Mauv'),(83,'Pink'),(84,'Pink'),(85,'Goldenrod'),(86,'Crimson'),(87,'Mauv'),(88,'Aquamarine'),(89,'Yellow'),(90,'Purple'),(91,'Indigo'),(92,''),(93,'Aquamarine'),(94,'Turquoise'),(95,''),(96,'Blue'),(97,'Puce'),(98,'Fuscia'),(99,'Violet'),(100,'Puce'),(101,'Aquamarine'),(102,'Yellow'),(103,'Green'),(104,'Pink'),(105,'Green'),(106,'Indigo'),(107,''),(108,'Pink'),(109,'Puce'),(110,'Fuscia'),(111,'Orange'),(112,'Red'),(113,'Goldenrod'),(114,'Teal'),(115,'Puce'),(116,''),(117,''),(118,'Blue'),(119,'Mauv'),(120,'Red'),(121,'Turquoise'),(122,''),(123,'Puce'),(124,'Teal'),(125,'Yellow'),(126,'Fuscia'),(127,'Pink'),(128,''),(129,'Teal'),(130,'Green'),(131,'Yellow'),(132,'Puce'),(133,''),(134,'Maroon'),(135,''),(136,'Puce'),(137,'Yellow'),(138,''),(139,'Mauv'),(140,'Yellow'),(141,''),(142,'Green'),(143,'Aquamarine'),(144,'Goldenrod'),(145,'Orange'),(146,'Blue'),(147,'Orange'),(148,''),(149,''),(150,''),(151,'Crimson'),(152,'Maroon'),(153,'Mauv'),(154,''),(155,'Yellow'),(156,'Red'),(157,'Green'),(158,'Purple'),(159,''),(160,'Maroon'),(161,'Blue'),(162,'Yellow'),(163,'Violet'),(164,'Pink'),(165,'Maroon'),(166,'Red'),(167,''),(168,'Orange'),(169,'Mauv'),(170,'Yellow'),(171,''),(172,'Puce'),(173,'Blue'),(174,''),(175,''),(176,''),(177,'Indigo'),(178,'Orange'),(179,'Green'),(180,'Puce'),(181,''),(182,'Green'),(183,'Orange'),(184,'Maroon'),(185,'Blue'),(186,'Mauv'),(187,'Violet'),(188,'Puce'),(189,'Violet'),(190,''),(191,'Purple'),(192,'Aquamarine'),(193,''),(194,''),(195,'Violet'),(196,''),(197,''),(198,'Red'),(199,'Teal'),(200,'Pink'),(201,'Blue'),(202,'Violet'),(203,''),(204,'Teal'),(205,'Crimson'),(206,'Violet'),(207,'Khaki'),(208,'Fuscia'),(209,'Puce'),(210,'Indigo'),(211,'Aquamarine'),(212,'Orange'),(213,''),(214,'Purple'),(215,'Orange'),(216,'Yellow'),(217,'Pink'),(218,'Fuscia'),(219,'Pink'),(220,'Goldenrod'),(221,'Maroon'),(222,''),(223,'Orange'),(224,'Teal'),(225,'Yellow'),(226,'Pink'),(227,'Violet'),(228,'Teal'),(229,'Khaki'),(230,''),(231,'Khaki'),(232,'Orange'),(233,'Khaki'),(234,'Aquamarine'),(235,'Indigo'),(236,'Violet'),(237,'Khaki'),(238,'Maroon'),(239,'Puce'),(240,'Crimson'),(241,''),(242,'Red'),(243,'Maroon'),(244,'Yellow'),(245,'Turquoise'),(246,'Teal'),(247,'Purple'),(248,'Fuscia'),(249,''),(250,'Turquoise'),(251,'Orange'),(252,'Indigo'),(253,'Pink'),(254,'Red'),(255,'Aquamarine'),(256,'Pink'),(257,'Red'),(258,''),(259,'Pink'),(260,'Mauv'),(261,'Crimson'),(262,'Khaki'),(263,'Crimson'),(264,''),(265,'Yellow'),(266,'Pink'),(267,'Maroon'),(268,'Mauv'),(269,'Aquamarine'),(270,'Indigo'),(271,'Blue'),(272,''),(273,''),(274,'Orange'),(275,'Indigo'),(276,''),(277,''),(278,''),(279,'Maroon'),(280,'Indigo'),(281,'Mauv'),(282,''),(283,'Maroon'),(284,'Goldenrod'),(285,'Yellow'),(286,'Khaki'),(287,'Crimson'),(288,'Violet'),(289,'Puce'),(290,'Goldenrod'),(291,'Turquoise'),(292,'Red'),(293,'Mauv'),(294,'Orange'),(295,'Fuscia'),(296,'Khaki'),(297,'Khaki'),(298,'Khaki'),(299,'Goldenrod'),(300,'Mauv'),(301,'Green'),(302,'Maroon'),(303,'Turquoise'),(304,'Mauv'),(305,'Turquoise'),(306,''),(307,'Violet'),(308,'Mauv'),(309,'Yellow'),(310,'Puce'),(311,'Mauv'),(312,'Khaki'),(313,'Puce'),(314,'Indigo'),(315,'Turquoise'),(316,'Fuscia'),(317,'Orange'),(318,'Mauv'),(319,'Yellow'),(320,'Aquamarine'),(321,'Blue'),(322,'Blue'),(323,'Fuscia'),(324,'Turquoise'),(325,'Puce'),(326,''),(327,'Maroon'),(328,'Green'),(329,'Maroon'),(330,'Teal'),(331,'Puce'),(332,'Green'),(333,'Crimson'),(334,'Crimson'),(335,''),(336,'Maroon'),(337,'Goldenrod'),(338,'Khaki'),(339,'Crimson'),(340,'Teal'),(341,'Pink'),(342,''),(343,''),(344,''),(345,''),(346,'Fuscia'),(347,'Indigo'),(348,'Red'),(349,'Fuscia'),(350,'Purple'),(351,'Pink'),(352,'Yellow'),(353,'Violet'),(354,'Puce'),(355,'Yellow'),(356,'Aquamarine'),(357,'Red'),(358,''),(359,'Pink'),(360,'Aquamarine'),(361,''),(362,'Puce'),(363,''),(364,'Khaki'),(365,'Khaki'),(366,'Teal'),(367,''),(368,''),(369,'Khaki'),(370,'Mauv'),(371,'Teal'),(372,''),(373,'Fuscia'),(374,'Khaki'),(375,'Yellow'),(376,'Green'),(377,''),(378,'Aquamarine'),(379,'Orange'),(380,'Puce'),(381,'Aquamarine'),(382,'Maroon'),(383,'Turquoise'),(384,'Crimson'),(385,''),(386,'Teal'),(387,'Green'),(388,'Red'),(389,'Pink'),(390,''),(391,'Teal'),(392,'Fuscia'),(393,'Khaki'),(394,'Teal'),(395,'Green'),(396,'Red'),(397,'Yellow'),(398,''),(399,'Yellow'),(400,'Indigo'),(401,'Orange'),(402,'Indigo'),(403,''),(404,'Puce'),(405,'Fuscia'),(406,'Blue'),(407,'Puce'),(408,''),(409,'Indigo'),(410,''),(411,'Yellow'),(412,'Indigo'),(413,''),(414,'Turquoise'),(415,'Orange'),(416,'Khaki'),(417,''),(418,'Yellow'),(419,''),(420,'Indigo'),(421,'Crimson'),(422,'Red'),(423,'Teal'),(424,'Purple'),(425,'Khaki'),(426,'Purple'),(427,'Orange'),(428,'Goldenrod'),(429,'Indigo'),(430,'Yellow'),(431,''),(432,'Green'),(433,''),(434,'Red'),(435,'Turquoise'),(436,''),(437,''),(438,'Yellow'),(439,'Maroon'),(440,''),(441,'Orange'),(442,'Mauv'),(443,'Goldenrod'),(444,'Green'),(445,''),(446,'Indigo'),(447,'Maroon'),(448,'Red'),(449,'Goldenrod'),(450,''),(451,'Violet'),(452,'Red'),(453,'Indigo'),(454,'Blue'),(455,'Green'),(456,''),(457,'Purple'),(458,'Puce'),(459,'Aquamarine'),(460,'Blue'),(461,'Turquoise'),(462,'Mauv'),(463,'Blue'),(464,'Red'),(465,''),(466,'Green'),(467,'Red'),(468,'Indigo'),(469,'Purple'),(470,'Orange'),(471,'Turquoise'),(472,''),(473,'Khaki'),(474,'Pink'),(475,''),(476,'Red'),(477,'Pink'),(478,'Goldenrod'),(479,'Khaki'),(480,'Goldenrod'),(481,'Teal'),(482,'Green'),(483,'Blue'),(484,'Yellow'),(485,'Puce'),(486,'Yellow'),(487,'Fuscia'),(488,'Fuscia'),(489,'Puce'),(490,''),(491,'Fuscia'),(492,'Mauv'),(493,''),(494,'Fuscia'),(495,'Puce'),(496,'Teal'),(497,'Maroon'),(498,'Pink'),(499,'Mauv'),(500,'Yellow'),(501,''),(502,'Goldenrod'),(503,'Puce'),(504,'Aquamarine'),(505,'Indigo'),(506,'Teal'),(507,'Indigo'),(508,'Yellow'),(509,'Blue'),(510,'Goldenrod'),(511,'Green'),(512,''),(513,'Orange'),(514,'Puce'),(515,'Crimson'),(516,'Crimson'),(517,''),(518,'Puce'),(519,'Mauv'),(520,'Fuscia'),(521,'Purple'),(522,'Aquamarine'),(523,'Purple'),(524,'Yellow'),(525,'Red'),(526,'Maroon'),(527,''),(528,'Goldenrod'),(529,'Teal'),(530,'Crimson'),(531,'Pink'),(532,'Puce'),(533,'Maroon'),(534,''),(535,'Mauv'),(536,''),(537,'Crimson'),(538,'Khaki'),(539,''),(540,'Mauv'),(541,'Indigo'),(542,'Blue'),(543,'Goldenrod'),(544,'Fuscia'),(545,'Mauv'),(546,''),(547,'Puce'),(548,'Fuscia'),(549,'Crimson'),(550,'Goldenrod'),(551,'Aquamarine'),(552,''),(553,''),(554,'Purple'),(555,'Violet'),(556,'Purple'),(557,''),(558,'Maroon'),(559,''),(560,''),(561,'Indigo'),(562,'Maroon'),(563,'Puce'),(564,'Yellow'),(565,''),(566,'Blue'),(567,'Turquoise'),(568,'Maroon'),(569,'Goldenrod'),(570,'Mauv'),(571,'Purple'),(572,'Maroon'),(573,'Crimson'),(574,'Crimson'),(575,'Teal'),(576,''),(577,''),(578,'Red'),(579,''),(580,'Puce'),(581,'Indigo'),(582,'Pink'),(583,'Fuscia'),(584,'Blue'),(585,'Yellow'),(586,'Maroon'),(587,'Aquamarine'),(588,'Turquoise'),(589,'Aquamarine'),(590,''),(591,'Puce'),(592,'Fuscia'),(593,'Green'),(594,'Purple'),(595,'Khaki'),(596,'Fuscia'),(597,''),(598,'Aquamarine'),(599,'Khaki'),(600,'Blue'),(601,'Blue'),(602,'Crimson'),(603,'Red'),(604,'Yellow'),(605,'Violet'),(606,''),(607,''),(608,''),(609,'Blue'),(610,'Pink'),(611,'Fuscia'),(612,'Puce'),(613,'Indigo'),(614,'Puce'),(615,'Mauv'),(616,'Pink'),(617,'Red'),(618,''),(619,'Orange'),(620,'Yellow'),(621,'Aquamarine'),(622,'Indigo'),(623,'Yellow'),(624,'Green'),(625,''),(626,''),(627,'Yellow'),(628,'Purple'),(629,'Orange'),(630,'Pink'),(631,'Fuscia'),(632,'Aquamarine'),(633,'Orange'),(634,'Green'),(635,'Yellow'),(636,'Violet'),(637,'Aquamarine'),(638,'Blue'),(639,''),(640,'Orange'),(641,'Green'),(642,'Goldenrod'),(643,'Orange'),(644,'Teal'),(645,'Green'),(646,'Orange'),(647,'Maroon'),(648,'Orange'),(649,'Indigo'),(650,'Blue'),(651,'Blue'),(652,'Crimson'),(653,''),(654,'Orange'),(655,'Pink'),(656,''),(657,'Purple'),(658,'Yellow'),(659,''),(660,'Green'),(661,'Goldenrod'),(662,'Fuscia'),(663,'Puce'),(664,'Maroon'),(665,''),(666,'Indigo'),(667,''),(668,'Turquoise'),(669,'Purple'),(670,'Yellow'),(671,''),(672,'Turquoise'),(673,'Maroon'),(674,''),(675,'Blue'),(676,'Blue'),(677,'Maroon'),(678,'Yellow'),(679,'Khaki'),(680,'Aquamarine'),(681,''),(682,'Crimson'),(683,'Red'),(684,''),(685,''),(686,'Orange'),(687,'Mauv'),(688,'Green'),(689,'Violet'),(690,'Crimson'),(691,''),(692,'Green'),(693,''),(694,'Green'),(695,'Green'),(696,'Purple'),(697,'Teal'),(698,'Violet'),(699,'Goldenrod'),(700,'Indigo'),(701,'Turquoise'),(702,'Puce'),(703,'Yellow'),(704,''),(705,'Violet'),(706,'Orange'),(707,''),(708,''),(709,'Blue'),(710,'Red'),(711,''),(712,'Yellow'),(713,'Green'),(714,'Aquamarine'),(715,'Khaki'),(716,'Puce'),(717,'Puce'),(718,'Mauv'),(719,'Green'),(720,''),(721,'Crimson'),(722,'Violet'),(723,'Indigo'),(724,'Pink'),(725,'Maroon'),(726,'Indigo'),(727,'Aquamarine'),(728,'Pink'),(729,'Turquoise'),(730,'Crimson'),(731,'Mauv'),(732,''),(733,''),(734,''),(735,'Maroon'),(736,'Pink'),(737,'Khaki'),(738,'Goldenrod'),(739,'Turquoise'),(740,'Pink'),(741,'Red'),(742,'Maroon'),(743,'Aquamarine'),(744,'Teal'),(745,'Yellow'),(746,'Green'),(747,''),(748,'Puce'),(749,'Crimson'),(750,'Crimson'),(751,'Fuscia'),(752,'Teal'),(753,'Indigo'),(754,'Indigo'),(755,'Violet'),(756,'Orange'),(757,''),(758,'Green'),(759,'Turquoise'),(760,'Turquoise'),(761,''),(762,'Puce'),(763,'Pink'),(764,'Yellow'),(765,'Blue'),(766,'Goldenrod'),(767,'Green'),(768,''),(769,'Mauv'),(770,'Blue'),(771,''),(772,'Turquoise'),(773,'Crimson'),(774,'Pink'),(775,'Violet'),(776,'Fuscia'),(777,'Goldenrod'),(778,'Goldenrod'),(779,'Orange'),(780,'Pink'),(781,''),(782,'Khaki'),(783,'Puce'),(784,'Red'),(785,'Green'),(786,'Red'),(787,'Maroon'),(788,'Red'),(789,'Khaki'),(790,'Teal'),(791,''),(792,'Goldenrod'),(793,'Red'),(794,'Violet'),(795,'Green'),(796,'Blue'),(797,'Purple'),(798,'Red'),(799,'Crimson'),(800,'Pink'),(801,'Blue'),(802,'Goldenrod'),(803,'Goldenrod'),(804,'Turquoise'),(805,'Yellow'),(806,'Violet'),(807,'Pink'),(808,'Turquoise'),(809,'Violet'),(810,'Fuscia'),(811,'Green'),(812,'Blue'),(813,''),(814,'Khaki'),(815,'Fuscia'),(816,'Indigo'),(817,''),(818,''),(819,'Aquamarine'),(820,'Orange'),(821,''),(822,''),(823,'Crimson'),(824,'Turquoise'),(825,''),(826,''),(827,'Red'),(828,'Mauv'),(829,''),(830,''),(831,'Mauv'),(832,'Khaki'),(833,'Mauv'),(834,'Maroon'),(835,'Maroon'),(836,'Red'),(837,'Aquamarine'),(838,'Red'),(839,'Goldenrod'),(840,'Green'),(841,'Purple'),(842,'Maroon'),(843,''),(844,'Khaki'),(845,''),(846,'Goldenrod'),(847,'Fuscia'),(848,'Khaki'),(849,'Aquamarine'),(850,'Puce'),(851,'Purple'),(852,''),(853,''),(854,'Maroon'),(855,'Fuscia'),(856,'Crimson'),(857,'Puce'),(858,'Aquamarine'),(859,'Teal'),(860,'Orange'),(861,'Aquamarine'),(862,'Puce'),(863,'Purple'),(864,'Pink'),(865,'Orange'),(866,''),(867,''),(868,'Turquoise'),(869,''),(870,'Maroon'),(871,''),(872,'Violet'),(873,''),(874,'Crimson'),(875,'Fuscia'),(876,'Green'),(877,''),(878,'Puce'),(879,''),(880,''),(881,''),(882,'Crimson'),(883,''),(884,'Khaki'),(885,'Fuscia'),(886,''),(887,''),(888,'Turquoise'),(889,''),(890,'Aquamarine'),(891,'Violet'),(892,'Teal'),(893,''),(894,'Crimson'),(895,'Fuscia'),(896,'Khaki'),(897,''),(898,'Puce'),(899,'Maroon'),(900,'Goldenrod'),(901,''),(902,'Aquamarine'),(903,'Mauv'),(904,'Pink'),(905,'Mauv'),(906,''),(907,'Puce'),(908,''),(909,'Violet'),(910,'Puce'),(911,''),(912,'Aquamarine'),(913,'Aquamarine'),(914,'Green'),(915,''),(916,'Crimson'),(917,'Maroon'),(918,'Orange'),(919,'Fuscia'),(920,'Fuscia'),(921,'Goldenrod'),(922,'Green'),(923,''),(924,'Teal'),(925,'Green'),(926,'Green'),(927,''),(928,'Purple'),(929,''),(930,'Purple'),(931,'Goldenrod'),(932,''),(933,'Yellow'),(934,'Blue'),(935,'Mauv'),(936,'Green'),(937,'Puce'),(938,'Fuscia'),(939,'Blue'),(940,'Maroon'),(941,'Teal'),(942,'Indigo'),(943,'Goldenrod'),(944,'Purple'),(945,'Mauv'),(946,''),(947,'Goldenrod'),(948,'Teal'),(949,'Puce'),(950,'Green'),(951,'Crimson'),(952,'Aquamarine'),(953,''),(954,'Khaki'),(955,'Aquamarine'),(956,'Maroon'),(957,''),(958,'Blue'),(959,'Turquoise'),(960,''),(961,''),(962,''),(963,'Teal'),(964,'Turquoise'),(965,'Pink'),(966,'Pink'),(967,'Yellow'),(968,'Orange'),(969,'Orange'),(970,'Blue'),(971,''),(972,'Aquamarine'),(973,'Red'),(974,'Yellow'),(975,'Yellow'),(976,'Turquoise'),(977,'Mauv'),(978,''),(979,'Aquamarine'),(980,'Aquamarine'),(981,'Turquoise'),(982,'Green'),(983,''),(984,'Violet'),(985,''),(986,'Violet'),(987,'Pink'),(988,'Violet'),(989,'Aquamarine'),(990,''),(991,'Crimson'),(992,'Puce'),(993,'Yellow'),(994,'Violet'),(995,'Blue'),(996,'Yellow'),(997,'Fuscia'),(998,'Fuscia'),(999,'Crimson'),(1000,'Red');
/*!40000 ALTER TABLE `car_colors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-28 18:38:07
