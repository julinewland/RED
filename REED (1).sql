CREATE DATABASE  IF NOT EXISTS `The_network` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `The_network`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (31,1,'a','increible','2020-09-03 19:00:00'),(32,1,'aa','excelente imagen','2010-10-02 11:00:00'),(33,1,'aaa','asombroso!','2011-09-06 15:00:00'),(34,1,'aaaa','no me gusto tanto!','2019-11-30 10:00:00'),(35,1,'b','hermosa','2003-07-28 20:00:00'),(36,1,'c','linda imagen','2002-11-03 19:00:00'),(37,1,'g','increiblee!','2020-09-03 19:00:00'),(38,1,'d','me encanto!','2001-08-17 16:00:00'),(39,1,'fasdfa','hermoso todo','2008-01-03 13:00:00'),(40,1,'twrwtr','no me gusto tanto','2007-09-03 11:00:00'),(121,2,'gkhj;lkw','bomba!','2020-09-03 19:00:00'),(122,2,'afdsg','que linda!','2009-02-14 09:00:00'),(123,2,'asdfas','mala luz','2007-05-03 12:00:00'),(124,2,'fdas','buena luz','2020-11-19 01:00:00'),(125,2,'fdasdf','mal fondo','2011-06-13 02:00:00'),(126,2,'fasdf','buen fondo','2020-03-03 16:00:00'),(127,2,'fgh','mal enfoque','2020-09-03 19:00:00'),(128,2,'lkhlg','bien enfocada','2009-07-19 08:00:00'),(129,2,'ert','salio movida','2020-08-20 07:00:00'),(130,2,'kdjlfk','mucho color','2020-09-03 19:00:00'),(131,3,'iutuiruie','me gustan los tonos','2019-11-30 10:00:00'),(132,3,'khkjgkg','asombrosa!','2002-11-03 19:00:00'),(133,3,'ihjijri','fabulosa','2001-08-17 16:00:00'),(134,3,'utiejigij','horrible','2001-08-17 16:00:00'),(135,3,'j;klgdfj','brillante','2002-11-03 19:00:00'),(136,3,'p04987','foto exportada','2007-09-03 11:00:00'),(137,3,'jgldkfjg','imagen grande','2001-08-17 16:00:00'),(138,3,'adfsasd','dia lluvioso','2007-09-03 11:00:00'),(139,3,'afdsag','tranquilidad','2002-11-03 19:00:00'),(140,3,'kjhkjfh','buena energia','2009-02-14 09:00:00'),(141,4,'iuituie','la mejor forma de disfturar','2002-11-03 19:00:00'),(142,4,'fadfsjf','imagen colorida','2002-11-03 19:00:00'),(143,4,';i65ikg','la felicidad de estar aca','2010-10-02 11:00:00'),(144,4,'jal;kdsfj','foto triste','2005-07-19 15:00:00'),(145,4,'78ihg','foto alegre','2007-06-19 06:00:00'),(146,4,'falsjdfk','imagen abstracta','2008-12-22 10:00:00'),(147,4,'gjk;ldj','imagen cubica','2006-10-25 14:00:00'),(148,4,'pioyurpoie','imagen con resolucion','2002-11-03 19:00:00'),(149,4,'jgkls','imagen simetrica','2020-08-20 07:00:00'),(150,4,'jgl;kf','imagen minimalista','2020-11-19 01:00:00'),(151,5,'fsa;kl','oscuro','2020-03-03 16:00:00'),(152,5,'tttt','expresiva','2010-10-02 11:00:00'),(153,5,'ggggg','emocionante','2010-10-02 11:00:00'),(154,5,'jjjjjj','paisaje increible','2013-11-27 12:00:00'),(155,5,'jgkgjkg','motivante','2014-07-28 10:00:00'),(156,5,'iiiiii','iluminadora','2017-06-29 17:00:00'),(157,5,'4444','demprimente','2016-10-19 14:00:00'),(158,5,'llll','angustiante','2011-09-08 11:00:00'),(159,5,'555','sin palabras','2009-10-02 22:00:00'),(160,5,'6666','foto significativa','2001-10-30 21:00:00'),(161,5,'7777','a','2010-10-02 11:00:00');
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'camille','1999-07-20',2),(2,'jules','1999-09-03',3),(3,'juan','1998-06-04',1),(4,'martina','2000-05-02',3),(5,'pedro','1997-07-08',2);
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

-- Dump completed on 2020-09-26 21:37:29
