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
INSERT INTO `posts` VALUES (1,1,'https://www.internships.com/wp-content/uploads/2019/09/computer_programmer_profile_image.jpg','increible','2018-09-03 19:00:00'),(2,1,'https://miro.medium.com/max/8000/1*kTRbXbHeiRgRbW4BDmhgvg.jpeg','excelente imagen','2010-10-02 11:00:00'),(3,1,'https://www.golders.co/wp-content/uploads/2019/01/5-curiosidades-que-todo-gamer-debe-saber.jpg','asombroso!','2011-09-06 15:00:00'),(4,1,'https://www.dzoom.org.es/wp-content/uploads/2017/07/seebensee-2384369-810x540.jpg','no me gusto tanto! ARHe','2018-11-30 10:00:00'),(5,1,'https://lh3.googleusercontent.com/proxy/b8McqhIGy1QPojdRRVPLyELcteSgYA_TRgmgeCVpBtfcqRMiESd_U3bLjCRvKZcjW3oHqkDzkNxabLG5TXgCouF3UO9D1gNnVnQEhDkqCjIopMv71TIjeQ','hermosa','2003-07-28 20:00:00'),(6,1,'https://concepto.de/wp-content/uploads/2015/03/paisaje-e1549600034372.jpg','linda imagen','2002-11-03 19:00:00'),(7,1,'https://lh3.googleusercontent.com/proxy/AxJ2q6Hz3HP136RzO2fPpMaQEeJ9mbOxw_g39kNLWGR-gQ8qm-xMQ1-ex83sW-ngYJKTnptZz1GzGqkgQNmyATbbfaFl2xkhZv6ehqy8TUrmLEjEzrh1pwl6zZUnxcw','increiblee!','2016-09-03 19:00:00'),(8,1,'https://www.monederosmart.com/wp-content/uploads/2019/12/0-Raton-gamer-Dario-Lo-Presti-61562952_m.jpg','me encanto!','2001-08-17 16:00:00'),(9,1,'https://blog.soltekonline.com/content/images/2019/08/00000.jpg','hermoso todo','2008-01-03 13:00:00'),(10,1,'https://i0.wp.com/www.xanxogaming.com/wp-content/uploads/2019/12/PC-Gamer-Gama-Alta-Peru-Banner.jpg?fit=1200%2C630&ssl=1','no me gusto tanto','2007-09-03 11:00:00'),(11,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSP8d0uotyBWnNDHzoY6NHApdzPLZKCC_9FKA&usqp=CAU','bomba!','2013-09-03 19:00:00'),(12,2,'https://d26lpennugtm8s.cloudfront.net/stores/792/892/products/111-2276791e58c0a7b85115886242117075-480-0.jpg','que linda!','2009-02-14 09:00:00'),(13,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRH7ninJs2RlmjEBcsBooxxOnraQQX9EfNjZA&usqp=CAU','lindo dia','2007-05-03 12:00:00'),(14,2,'https://www.cein.eu/wp-content/uploads/2019/08/cein-vacations.jpg','buena luz','2014-11-19 01:00:00'),(15,2,'https://hoyonline.tv/wp-content/uploads/2017/08/vacaciones-hoy-online.jpg','mal fondo, arhe','2011-06-13 02:00:00'),(16,2,'https://www.gannett-cdn.com/-mm-/9e278bb7a45069f1f034c0d53c4e3e4f7613ea8a/c=0-110-2125-1305/local/-/media/2018/08/15/USATODAY/usatsports/thinkstockphotos-473428732.jpg?width=2125&height=1195&fit=crop&format=pjpg&auto=webp','con los pi','2013-03-03 16:00:00'),(17,2,'https://www.pon.harvard.edu/wp-content/uploads/images/posts/levi-guzman-268866-377x252.jpg','mal enfoque','2011-09-03 19:00:00'),(18,2,'https://unpackingaustralia.files.wordpress.com/2013/05/laurenopinion.jpg','bien enfocada','2009-07-19 08:00:00'),(19,2,'https://cdn6.dissolve.com/p/D943_222_440/D943_222_440_1200.jpg','salio movida','2017-08-20 07:00:00'),(20,2,'https://wordpress.wbur.org/wp-content/uploads/2013/05/0521_programmer-algorithm3.jpg','mucho estudio','2016-09-03 19:00:00'),(21,3,'https://storage.googleapis.com/indie-hackers.appspot.com/post-images/9ea9e50eb1/awB5iMQuAndgguW6iyL672WmKlz2/82fae0b0-1c35-8b5c-56b4-0349075758ee.jpg','jajajja','2019-11-30 10:00:00'),(22,3,'https://static.amazon.jobs/locations/58/thumbnails/NYC.jpg?1547618123','asombrosa!','2002-11-03 19:00:00'),(23,3,'https://upload.wikimedia.org/wikipedia/commons/4/47/New_york_times_square-terabass.jpg','por NY','2001-08-17 16:00:00'),(24,3,'https://joyvacationsclub.com/wp-content/uploads/2019/07/NY.jpg','pasandola mal...','2001-08-17 16:00:00'),(25,3,'https://reloadvisor.org/wp-content/uploads/2019/10/NY-ReloAdvisor.org_.jpg','brillante','2002-11-03 19:00:00'),(26,3,'https://media.istockphoto.com/photos/programmer-working-with-program-code-picture-id1075599562','foto exportada','2007-09-03 11:00:00'),(27,3,'https://miro.medium.com/max/6706/1*eWYm3Dm7s0t8lLWYRW4pow.jpeg','imagen grande','2001-08-17 16:00:00'),(28,3,'https://www.pandasecurity.com/mediacenter/src/uploads/2018/02/1-2.jpg','chips','2007-09-03 11:00:00'),(29,3,'https://bcnfoodieguide.com/wp-content/uploads/2015/03/BeFunky_craft-beer-portada1.jpg1_.jpg','tranquilidad','2002-11-03 19:00:00'),(30,3,'https://postermarket.is/wp-content/uploads/2020/02/Good_Vibes_Only_Text-01-scaled.jpg','buena energia','2009-02-14 09:00:00'),(31,4,'https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/other/dog_cool_summer_slideshow/1800x1200_dog_cool_summer_other.jpg?resize=750px:*','la mejor forma de disfturar','2002-11-03 19:00:00'),(32,4,'https://i.pinimg.com/564x/e7/2b/42/e72b4260ffa358f710e442a1dd7551be.jpg','imagen colorida','2002-11-03 19:00:00'),(33,4,'https://ec.europa.eu/social/BlobServlet?mode=displayPicture&photoId=11068','la felicidad de estar aca','2010-10-02 11:00:00'),(34,4,'https://duplosite.files.wordpress.com/2017/06/netflix-and-chill.png?w=940&h=528&crop=1','quiero esto','2005-07-19 15:00:00'),(35,4,'https://www.raconteur.net/wp-content/uploads/2019/09/RAA_p03_01-1280x720.jpg','asi todo el dia','2007-06-19 06:00:00'),(36,4,'https://lamenteesmaravillosa.com/wp-content/uploads/2019/02/cerebro-coloreado.jpg','imagen abstracta','2008-12-22 10:00:00'),(37,4,'https://luisdegarrido.com/wp-content/uploads/2017/10/CUBIC-Social-Eco-Housing.-Barcelona.-Spain.-PhD-Architect-Luis-De-Garrido-30.jpg','imagen cubica','2006-10-25 14:00:00'),(38,4,'https://images-na.ssl-images-amazon.com/images/I/81ZtuxbYPlL._AC_SX425_.jpg','imagen con resolucion','2002-11-03 19:00:00'),(39,4,'https://c8.alamy.com/compes/pg7tf4/bastidor-abstracta-perspectiva-multiple-amarillo-negro-perfecta-fondo-descendente-pg7tf4.jpg','imagen simetrica','2015-08-20 07:00:00'),(40,4,'https://i.pinimg.com/originals/f3/77/1c/f3771cebf2cf9a6ffc14c3f5deaf90cc.jpg','livingg','2014-11-19 01:00:00'),(41,5,'https://images.techhive.com/images/article/2015/05/programmer-100586647-primary.idge.jpg','oscuro','2011-03-03 16:00:00'),(42,5,'https://www.hola.com/imagenes/estar-bien/20190820147813/razas-perros-pequenos-parecen-grandes/0-711-550/razas-perro-pequenos-grandes-m.jpg','expresiva','2010-10-02 11:00:00'),(43,5,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Green_Park%2C_London_-_April_2007.jpg/1200px-Green_Park%2C_London_-_April_2007.jpg','emocionante','2010-10-02 11:00:00'),(44,5,'https://1.bp.blogspot.com/-JREhSKN8sMM/VmH2B-jmFXI/AAAAAAAAIzg/ScNtA185M88/s1600/02273%2Bpaisajes01.jpg','paisaje increible','2013-11-27 12:00:00'),(45,5,'https://concepto.de/wp-content/uploads/2019/12/paisaje-rural-e1576119288479.jpg','motivante','2014-07-28 10:00:00'),(46,5,'https://previews.123rf.com/images/syntheticmessiah/syntheticmessiah1709/syntheticmessiah170900047/85857397-paisaje-de-oto%C3%B1o-%C3%81rboles-de-oto%C3%B1o-soleado-en-el-parque-iluminado-por-la-luz-del-sol-soleado-paisaje-de-oto.jpg','iluminadora','2017-06-29 17:00:00'),(47,5,'https://www.elcucodigital.com/wp-content/uploads/2020/09/Gotas-de-lluvia-foto-mary-gonzalez.jpg','demprimente','2016-10-19 14:00:00'),(48,5,'https://i.pinimg.com/originals/93/b3/44/93b344124a7a51f84b72737f7c8cda81.jpg','angustiante','2011-09-08 11:00:00'),(49,5,'https://spartangeek.com/blog/content/images/2018/12/computadoras-de-escritorio-gamers.jpg','sin palabras','2009-10-02 22:00:00'),(50,5,'https://images.theconversation.com/files/344455/original/file-20200629-155316-a4avzx.jpg?ixlib=rb-1.1.0&rect=229%2C6%2C4264%2C2970&q=45&auto=format&w=496&fit=clip','foto significativa','2001-10-30 21:00:00');
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
  `contraseña` varchar(300) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pregunta` varchar(120) NOT NULL,
  `respuesta` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'camille','1999-07-20',2,'Rzainfs3','camille1123@gmail.com','Color preferido?','Verde'),(2,'jules','1999-09-03',3,'Pepito123','jules12232@gmail.com','¿Como se llamaba tu perro?','Heidi'),(3,'juan','1998-06-04',1,'hola22331','juan123@gmail.com','Cuantos hermanos tenes?','3'),(4,'martina','2000-05-02',3,'19284034','martina333@gmail.com','Cual es tu color preferido?','Amarillo'),(5,'pedro','1997-07-08',2,'1jdien2','pedro222@gmail.com','¿Cual es el nombre de tu perro?','roberto');
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

-- Dump completed on 2020-11-07 11:02:39
