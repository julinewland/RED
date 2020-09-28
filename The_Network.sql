-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: The_network
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idpost` int(11) unsigned NOT NULL,
  `idusuario` int(11) unsigned NOT NULL,
  `texto` varchar(120) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comentarioposteo_idx` (`idpost`),
  KEY `comentariousuario_idx` (`idusuario`),
  CONSTRAINT `comentarioposteo` FOREIGN KEY (`idpost`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `comentariousuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,2,'Tremendo','2020-11-19 01:00:00'),(2,1,3,'Bien Ahíii','2020-11-19 01:00:30'),(3,1,4,'Grandee','2020-11-19 01:00:20'),(4,1,5,'Que copado','2020-11-19 01:00:45'),(5,2,5,'Uff que buenoo','2020-12-19 01:00:45'),(6,2,4,'que bienn','2020-12-19 01:00:45'),(7,2,3,'lindisimo','2020-12-19 01:20:45'),(8,2,2,'tremendaaa','2020-12-19 01:30:45'),(9,3,2,'vamos!','2020-12-20 01:30:45'),(10,3,3,'Buenardo','2020-12-20 01:20:45'),(11,3,4,'trememdo','2020-12-24 01:30:45'),(12,3,5,'Fua','2020-12-20 01:20:45'),(13,4,5,'uff','2020-07-10 01:30:45'),(14,4,4,'que copadoo','2020-07-20 01:30:45'),(15,4,3,'Cool','2020-07-20 01:30:45'),(16,4,2,'lindisimo','2020-07-20 01:20:45'),(17,5,3,'Zarpado','2020-08-20 01:30:45'),(18,5,4,'buenismo','2020-08-20 13:30:45'),(19,5,5,'tremendo','2020-08-20 10:30:45'),(20,5,2,'Copadisimo','2020-08-20 20:30:45'),(21,6,2,'Increible','2020-11-20 01:50:45'),(22,6,3,'Nooo','2020-11-05 01:30:45'),(23,6,4,'Fuaaaa','2020-11-20 13:30:45'),(24,6,5,'a buneooo','2020-11-20 13:30:45'),(25,7,4,'trankaa','2020-09-20 01:30:45'),(26,7,3,'que bienn','2020-09-20 01:20:45'),(27,7,2,'disfrutando e','2020-10-19 01:00:45'),(28,7,5,'increible','2020-10-19 01:00:45'),(29,8,5,':)))','2020-10-19 01:00:59'),(30,8,4,'que lindo!!','2020-10-19 01:00:50'),(31,8,3,'<3 <3','2020-10-19 01:00:30'),(32,8,2,'que buen lugar','2020-10-19 01:00:20'),(33,9,4,'Te extrañoo','2020-09-19 01:00:45'),(34,9,3,'que increible','2020-09-19 01:00:20'),(35,9,2,'cuando nos vemos?','2020-09-19 01:00:30'),(36,9,5,'Divino','2020-09-19 01:03:20'),(37,10,5,'que bienn','2020-08-19 01:00:45'),(38,10,4,'Felicitaciones','2020-08-19 01:00:43'),(39,10,3,'Que bien que estass','2020-08-19 01:20:43'),(40,10,2,'Buen enfoquee','2020-08-19 01:10:43'),(41,11,1,'Que grandee','2020-03-19 01:00:45'),(42,11,3,'Que lindoo','2020-03-19 03:00:45'),(43,11,4,'Buensimoo','2020-03-19 05:00:45'),(44,11,5,'Que bienn','2020-03-19 08:00:45'),(45,12,5,'Me encanta','2020-03-19 01:00:50'),(46,12,4,'Que buena foto','2020-03-20 01:00:45'),(47,12,3,'Que increible','2020-03-20 01:00:45'),(48,12,1,'Tremendoo','2020-03-20 01:00:45'),(49,13,3,':D','2020-04-19 01:00:45'),(50,13,4,'Wow!','2020-05-20 01:00:45'),(51,13,5,'Fua','2020-06-20 01:00:45'),(52,13,1,'Me encanto','2020-07-20 01:00:45'),(53,14,1,'No ,lo puedo creer! que bien','2020-08-20 01:00:45'),(54,14,3,'Ufff','2020-09-20 01:00:45'),(55,14,5,'Me encantoo','2020-10-20 01:00:45'),(56,14,4,'Que lindo','2020-11-20 01:00:45'),(57,15,4,'Increible','2020-08-20 01:00:45'),(58,15,5,'Me encantoo','2020-09-20 01:20:45'),(59,15,3,'Que tremendo','2020-09-20 01:30:45'),(60,15,1,'<3<3','2020-07-20 01:04:45'),(61,16,1,'Te extrañoo','2020-08-20 01:32:45'),(62,16,4,'Uf quiero estar ahi','2020-03-19 01:23:45'),(63,16,5,'me encanto','2020-03-20 01:32:45'),(64,16,3,'Fuaa','2020-05-20 01:00:45'),(65,17,5,'tremendoo','2020-11-20 01:00:45'),(66,17,3,'Nooo!','2020-12-20 01:00:45'),(67,17,4,'Lindisimo','2020-09-20 01:22:45'),(68,17,1,'Increible','2020-05-20 20:00:45'),(69,18,1,':P','2019-05-20 01:00:45'),(70,18,3,'Que buen flash','2019-06-20 01:00:45'),(71,18,5,'Me encantoo','2019-07-20 01:00:45'),(72,18,4,'Que buena foto','2019-08-20 01:00:45'),(73,19,3,'Buen enfoqueee','2019-09-20 01:00:45'),(74,19,5,'Lindisimo','2019-10-20 01:00:45'),(75,19,4,'Increible','2019-11-20 01:00:45'),(76,19,1,'Estupendo','2019-12-20 01:00:45'),(77,20,3,'Magnifico','2019-05-20 01:40:45'),(78,20,4,'Increible','2019-05-20 12:39:45'),(79,20,1,'Quiero esooo','2019-05-20 23:00:45'),(80,20,5,'Guaauuuu','2019-05-20 01:20:35'),(81,21,1,'Wow','2019-12-20 01:10:45'),(82,21,2,'Temendoo','2019-11-20 01:20:45'),(83,21,4,'Que lindoo','2020-10-20 01:20:45'),(84,21,5,'uuu','2020-09-20 01:20:45'),(85,22,2,'Quiero esoo','2019-12-10 01:20:45'),(86,22,1,'fuaaa','2019-12-11 01:20:45'),(87,22,5,'Nooo','2020-12-12 01:20:45'),(88,22,4,'Quiero estar ahii','2020-12-13 01:20:45'),(89,23,5,'Grande','2020-12-14 01:20:45'),(90,23,4,'Genio','2020-12-15 01:20:45'),(91,23,2,'Crack','2020-12-16 01:20:45'),(92,23,1,'Que bienn','2020-12-17 01:20:45'),(93,24,1,'Groso','2020-12-18 01:20:45'),(94,24,2,'Buensimo','2020-12-19 01:20:45'),(95,24,4,'que copadoo','2020-12-20 01:20:45'),(96,24,5,'Que bienn','2020-12-21 01:20:45'),(97,25,5,'Me encatoo','2020-12-22 01:20:45'),(98,25,2,'Que lidnoo','2020-12-23 01:20:45'),(99,25,4,'<3<3<3','2020-12-24 01:20:45'),(100,25,1,'Que lindoo','2020-12-25 01:20:45'),(101,26,5,'Tremendo lugar','2020-12-26 01:20:45'),(102,26,4,'UFF','2020-12-27 01:20:45'),(103,26,2,'Que bienn','2020-12-28 01:20:45'),(104,26,1,'me encantoo','2020-12-29 01:20:45'),(105,27,1,'Lindisimo','2020-12-30 01:20:45'),(106,27,2,':)','2020-11-01 01:20:45'),(107,27,4,'Quiero eso','2020-11-02 01:20:45'),(108,27,5,'Divinoo','2020-11-04 01:20:45'),(109,28,5,'Felicitaciones','2020-11-05 01:20:45'),(110,28,1,'Increiblee','2020-11-06 01:20:45'),(111,28,2,'Tremendoo','2020-10-06 01:20:45'),(112,28,4,'Nooo','2020-10-07 01:20:45'),(113,29,5,'Fuaa','2020-10-20 01:20:45'),(114,29,2,'Queiro esoo','2020-10-10 01:20:45'),(115,29,1,'Te extrañooo','2020-10-11 01:20:45'),(116,29,4,'Disfrutaaa','2020-10-12 01:20:45'),(117,30,4,'Disfruta amigoo','2020-10-13 01:20:45'),(118,30,5,'Tremendoo','2020-10-14 01:20:45'),(119,30,2,'Que buena fotoo','2020-10-15 01:20:45'),(120,30,1,'Me encato','2020-10-16 01:20:45'),(121,31,1,'Que lidnoo','2020-10-17 01:20:45'),(122,31,2,'Me mueroo','2020-10-18 01:20:45'),(123,31,3,'Noo<3','2020-10-19 01:20:45'),(124,31,5,'Increible','2020-10-20 01:20:45'),(125,32,5,':D','2020-10-21 01:20:45'),(126,32,3,'Que buen flash','2020-10-22 01:20:45'),(127,32,2,'Me encanto','2020-10-23 01:20:45'),(128,32,1,'Que lindo esooo','2020-10-24 01:20:45'),(129,33,1,'Que grande','2020-10-25 01:20:45'),(130,33,2,'Lindisimo','2020-10-26 01:20:45'),(131,33,5,'Divino','2020-10-27 01:20:45'),(132,33,3,'Buenismo','2020-10-28 01:20:45'),(133,34,5,'Lindismo','2020-10-29 01:20:45'),(134,34,3,'Increible','2020-10-30 01:20:45'),(135,34,2,'Nooo','2020-09-01 01:20:45'),(136,34,1,'Volve!','2020-09-02 01:20:45'),(137,35,1,'Te extraño','2020-09-03 01:20:45'),(138,35,2,'Cuando nos vemos?','2020-09-04 01:20:45'),(139,35,3,'Uff','2020-09-05 01:20:45'),(140,35,5,'Que bien que estas','2020-09-06 01:20:45'),(141,36,3,'Quiero esoo','2020-09-07 01:20:45'),(142,36,2,'Wow','2020-09-08 01:20:45'),(143,36,1,'Increible','2020-09-09 01:20:45'),(144,36,5,'Que lindoooo','2020-09-10 01:20:45'),(145,37,3,'ME encatoo','2020-09-11 01:20:45'),(146,37,2,'Que bienn','2020-09-12 01:20:45'),(147,37,1,'UFF','2020-09-13 01:20:45'),(148,37,5,'Buenardo','2020-09-14 01:20:45'),(149,38,5,'Naaa','2020-09-15 01:20:45'),(150,38,1,'Que grandeee','2020-09-16 01:20:45'),(151,38,2,'fuaaa','2020-09-17 01:20:45'),(152,38,3,'Groso','2020-09-18 01:20:45'),(153,39,3,'Crack','2020-09-19 01:20:45'),(154,39,5,'Genio','2020-09-20 01:20:45'),(155,39,2,'Capo','2020-09-21 01:20:45'),(156,39,1,'Que grande','2020-09-22 01:20:45'),(157,40,2,'Increible','2020-09-23 01:20:45'),(158,40,5,'Nooo','2020-09-24 01:20:45'),(159,40,3,'No lo puedo creer','2020-09-25 01:20:45'),(160,40,1,'Que lindoooo','2020-09-26 01:20:45'),(161,41,1,'Me encanto','2020-09-27 01:20:45'),(162,41,2,'Felicitaciones','2020-09-28 01:20:45'),(163,41,3,'Tremendoo','2020-09-29 01:20:45'),(164,41,4,'Lindisimo','2020-09-29 01:20:45'),(165,42,4,'Quiero eso','2020-08-01 01:20:45'),(166,42,3,'Buenismoo','2020-08-02 01:20:45'),(167,42,2,'Que increible','2020-08-03 01:20:45'),(168,42,1,'Divinoo','2020-08-04 01:20:45'),(169,43,1,'<3 <3','2020-08-05 01:20:45'),(170,43,3,'Tremendo','2020-08-06 01:20:45'),(171,43,2,':D','2020-08-07 01:20:45'),(172,43,4,'Upaa','2020-08-08 01:20:45'),(173,44,2,'que lindoo','2020-08-09 01:20:45'),(174,44,3,'divinoo','2020-08-10 01:20:45'),(175,44,4,'tremendoo','2020-08-11 01:20:45'),(176,44,1,'quiero esoo','2020-08-12 01:20:45'),(177,45,2,'Fua','2020-08-13 01:20:45'),(178,45,1,';)','2020-08-14 01:20:45'),(179,45,3,'Increible','2020-08-15 01:20:45'),(180,45,4,'zarpadoo','2020-08-16 01:20:45'),(181,46,1,'nooo','2020-08-17 01:20:45'),(182,46,3,'que crackk','2020-08-18 01:20:45'),(183,46,2,'que geniooo','2020-08-19 01:20:45'),(184,46,4,'lindisimoo','2020-08-20 01:20:45'),(185,47,3,'me encanto','2020-08-21 01:20:45'),(186,47,2,'wow','2020-08-22 01:20:45'),(187,47,1,'uff','2020-08-23 01:20:45'),(188,47,4,'lindisimo','2020-12-24 01:20:45'),(189,48,2,'nooo','2020-12-25 01:20:45'),(190,48,3,'buena placa','2020-08-26 01:20:45'),(191,48,4,'increible','2020-12-27 01:20:45'),(192,48,1,'<3','2020-08-28 01:20:45'),(193,49,2,':/','2020-08-30 01:20:45'),(194,49,3,'a','2020-07-01 01:20:45'),(195,49,1,'buen enfoque','2020-07-02 01:20:45'),(196,49,4,'uia','2020-07-03 01:20:45'),(197,50,4,'upa','2020-07-04 01:20:45'),(198,50,1,'que diaaa che','2020-07-05 01:20:45'),(199,50,2,':(','2020-07-06 01:20:45'),(200,50,3,'uuuu','2020-12-07 01:20:45');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) unsigned NOT NULL,
  `urlImagen` varchar(300) NOT NULL,
  `texto` varchar(120) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `urlImagen_UNIQUE` (`urlImagen`),
  KEY `usuarioposteo_idx` (`idusuario`),
  CONSTRAINT `usuarioposteo` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'https://images.app.goo.gl/Cu2i6CSTicvkKXag7','increible','2018-09-03 19:00:00'),(2,1,'https://images.app.goo.gl/1uAdGJwUvhUxrrnq5','excelente imagen','2010-10-02 11:00:00'),(3,1,'https://images.app.goo.gl/MfQJ8HqzMkP2Q8JF7','asombroso!','2011-09-06 15:00:00'),(4,1,'https://images.app.goo.gl/EqPVEXe3i5CbZ3RF9','no me gusto tanto! ARHe','2018-11-30 10:00:00'),(5,1,'https://images.app.goo.gl/EjBPZ4oSt9nsMFKA8','hermosa','2003-07-28 20:00:00'),(6,1,'https://images.app.goo.gl/rkpsepdGML654HDa6','linda imagen','2002-11-03 19:00:00'),(7,1,'https://images.app.goo.gl/qzk6ut2Qm1m1x1P18','increiblee!','2016-09-03 19:00:00'),(8,1,'https://images.app.goo.gl/erkctQpwoRzyGKWb6','me encanto!','2001-08-17 16:00:00'),(9,1,'https://images.app.goo.gl/48XKzwxnXeySgCyy9','hermoso todo','2008-01-03 13:00:00'),(10,1,'https://images.app.goo.gl/iuAAFdXPxsqpx7jE7','no me gusto tanto','2007-09-03 11:00:00'),(11,2,'https://images.app.goo.gl/bNpirPGi5UyphwC68','bomba!','2013-09-03 19:00:00'),(12,2,'https://images.app.goo.gl/iL8z22zgcuL1ZKM46','que linda!','2009-02-14 09:00:00'),(13,2,'https://images.app.goo.gl/Qg5bVHy2YrBdAUBv5','lindo dia','2007-05-03 12:00:00'),(14,2,'https://images.app.goo.gl/KPHSVzW1L4LwSM6X6','buena luz','2014-11-19 01:00:00'),(15,2,'https://images.app.goo.gl/qq7htJytAnTQfwJk6','mal fondo, arhe','2011-06-13 02:00:00'),(16,2,'https://images.app.goo.gl/oQYbnuhT5FrognaC9','con los pi','2013-03-03 16:00:00'),(17,2,'https://images.app.goo.gl/eEFtdkYfhLmUrhRPA','mal enfoque','2011-09-03 19:00:00'),(18,2,'https://images.app.goo.gl/zUgcXEpeh9qk9d7N9','bien enfocada','2009-07-19 08:00:00'),(19,2,'https://images.app.goo.gl/Zj76aB6Yp6Ay3LPk7','salio movida','2017-08-20 07:00:00'),(20,2,'https://images.app.goo.gl/UxEpNDcn1sS4nL7o9','mucho estudio','2016-09-03 19:00:00'),(21,3,'https://images.app.goo.gl/Y7hANtTFhDiQTWJP8','jajajja','2019-11-30 10:00:00'),(22,3,'https://images.app.goo.gl/MB52AKEh6NcCbHvq7','asombrosa!','2002-11-03 19:00:00'),(23,3,'https://images.app.goo.gl/EVZc7qMqLwnoSi6Q9','por NY','2001-08-17 16:00:00'),(24,3,'https://images.app.goo.gl/ezj8Mvc94czfhgEh7','pasandola mal...','2001-08-17 16:00:00'),(25,3,'https://images.app.goo.gl/o7rRkSkEuVRkmHde8','brillante','2002-11-03 19:00:00'),(26,3,'https://images.app.goo.gl/tBoGXvYmGkrv7JJMA','foto exportada','2007-09-03 11:00:00'),(27,3,'https://images.app.goo.gl/xqJnr7XjZa6kGjr56','imagen grande','2001-08-17 16:00:00'),(28,3,'https://images.app.goo.gl/gzMoWwV13uiUjYv48','chips','2007-09-03 11:00:00'),(29,3,'https://images.app.goo.gl/UvPkCT8TBjKVptjd7','tranquilidad','2002-11-03 19:00:00'),(30,3,'https://images.app.goo.gl/GrbZQ67znHo3D5Ww7','buena energia','2009-02-14 09:00:00'),(31,4,'https://images.app.goo.gl/wAGctiXT47gvhPHLA','la mejor forma de disfturar','2002-11-03 19:00:00'),(32,4,'https://images.app.goo.gl/eME9iLgtva1acywc6','imagen colorida','2002-11-03 19:00:00'),(33,4,'https://images.app.goo.gl/xhiNGYEpwGbvr2BeA','la felicidad de estar aca','2010-10-02 11:00:00'),(34,4,'https://images.app.goo.gl/Pm3QAWHaFbkB7xir7','quiero esto','2005-07-19 15:00:00'),(35,4,'https://images.app.goo.gl/jonCe8bxpUWLoJW69','asi todo el dia','2007-06-19 06:00:00'),(36,4,'https://images.app.goo.gl/bbXUStssEtedNyM58','imagen abstracta','2008-12-22 10:00:00'),(37,4,'https://images.app.goo.gl/iEVNkWPew2Wm7gEL8','imagen cubica','2006-10-25 14:00:00'),(38,4,'https://images.app.goo.gl/iKUk6joNei9avJeS6','imagen con resolucion','2002-11-03 19:00:00'),(39,4,'https://images.app.goo.gl/https://images.app.goo.gl/nbkABoaXaxGnC9pK7','imagen simetrica','2015-08-20 07:00:00'),(40,4,'https://images.app.goo.gl/nbkABoaXaxGnC9pK7','livingg','2014-11-19 01:00:00'),(41,5,'https://images.app.goo.gl/88gxNjZxN7Mr5WNJ9','oscuro','2011-03-03 16:00:00'),(42,5,'https://images.app.goo.gl/VwJuZ3vqhaiXSW5q7','expresiva','2010-10-02 11:00:00'),(43,5,'https://images.app.goo.gl/yEuy2viJKgXUhXuu6','emocionante','2010-10-02 11:00:00'),(44,5,'https://images.app.goo.gl/7Ljs5k6e6g8AXDVq8','paisaje increible','2013-11-27 12:00:00'),(45,5,'https://images.app.goo.gl/M64yeX9giufHYZLE6','motivante','2014-07-28 10:00:00'),(46,5,'https://images.app.goo.gl/vTV2yDr2MnT1VSJo6','iluminadora','2017-06-29 17:00:00'),(47,5,'https://images.app.goo.gl/T1raB1YUEZVoaEDn8','demprimente','2016-10-19 14:00:00'),(48,5,'https://images.app.goo.gl/Zw1tjK91yG7UKZ5h9','angustiante','2011-09-08 11:00:00'),(49,5,'https://images.app.goo.gl/MnjBKbabA72Lp95E9','sin palabras','2009-10-02 22:00:00'),(50,5,'https://images.app.goo.gl/6VeJBh4ahiQjxvRFA','foto significativa','2001-10-30 21:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(90) NOT NULL,
  `fechaNacim` date NOT NULL,
  `cantidadLengu` int(11) NOT NULL DEFAULT '0',
  `contraseña` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'camille','1999-07-20',2,'Rzainfs3','camille1123@gmail.com'),(2,'jules','1999-09-03',3,'Pepito123','jules12232@gmail.com'),(3,'juan','1998-06-04',1,'hola22331','juan123@gmail.com'),(4,'martina','2000-05-02',3,'19284034','martina333@gmail.com'),(5,'pedro','1997-07-08',2,'1jdien2','pedro222@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-28 10:24:08
