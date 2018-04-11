/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.21 : Database - gfly
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gfly` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gfly`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`description`,`pic_url`) values 
(14,'ALL','ALL','all.jpg'),
(15,'3D','3D','3d.jpg'),
(16,'BIPLANE','BIPLANE','biplane.jpg'),
(17,'COPI','COPI','copi.jpeg'),
(18,'FLYWING','FLYWING','flywing.jpg'),
(19,'HIDROPLANE','HIDROPLANE','hidroplane.gif'),
(20,'MULTIROTOR','MULTIROTOR','multirotor.jpg'),
(21,'PLANER','PLANER','planer.png'),
(22,'TRINER','TRINER','triner.jpg');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `image` */

insert  into `image`(`id`,`pic_url`,`product_id`) values 
(10,'images.png',30),
(11,'images (1).jpeg',31),
(12,'images (2).jpeg',32),
(13,'images (3).jpeg',33),
(14,'images (1).jpeg',34),
(15,'images (2).jpeg',35),
(16,'images (3).jpeg',36),
(17,'images.jpeg',37),
(18,'images (1).png',38),
(19,'images (2).jpeg',39),
(20,'images (3).jpeg',40),
(21,'images (1).png',41),
(22,'images (1).png',42);

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`id`,`title`,`description`,`pic_url`,`timestamp`,`user_id`) values 
(1,'fdbdb','fgnfndn','images (1).jpeg','2018-04-08 13:03:58',1),
(2,'sjyrjmy','dtsjryj','images (2).jpeg','2018-04-08 14:05:18',1);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `wingspan` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `engine` enum('DVS','ELECTRO','NON') NOT NULL,
  `material` enum('DEPRON','BALSA') NOT NULL,
  `category_id` int(11) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`wingspan`,`weight`,`engine`,`material`,`category_id`,`pic_url`,`description`,`video_url`) values 
(30,'arhet',846,896,'NON','DEPRON',15,'images.png','rhrheje',''),
(31,'rgR',644,648,'NON','DEPRON',16,'images (1).jpeg','DARB',''),
(32,'REHA',8460,4680,'NON','DEPRON',17,'images (2).jpeg','REAHTDZNGF',''),
(33,'AHTG',640,486,'NON','DEPRON',19,'images (3).jpeg','SHTSRGNFF',''),
(34,'SRAHDFB',468,486,'NON','DEPRON',20,'images (1).jpeg','SFNGDG',''),
(35,'SREHTSGDBF',684,468,'NON','DEPRON',21,'images (2).jpeg','DSHDGDNV C',''),
(36,'EHDF',846,846,'NON','DEPRON',22,'images (3).jpeg','HDGNZVB',''),
(37,'aherh',46,46,'NON','DEPRON',14,'images.jpeg','5\r\n4\r\n',''),
(38,'wrgwh',654,64,'NON','DEPRON',14,'images (1).png','nlk',''),
(39,'rgagre',640,654,'NON','DEPRON',14,'images (2).jpeg','jklgbkn',''),
(40,'rfehar',640,64,'NON','DEPRON',14,'images (3).jpeg','grwhetngz',''),
(41,'ddsngd',489840,948,'NON','DEPRON',14,'images (1).png','ftjerytudj',''),
(42,'rehetad',64,68,'NON','DEPRON',14,'images (1).png','sstjrymhgn','');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('ADMIN','USER') NOT NULL,
  `verify` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`type`,`verify`) values 
(1,'admin','admin','admin','admin','ADMIN',0),
(2,'ghdgd','bxfgb','bxfgb','bxfg','ADMIN',0),
(3,'ytj','ytjeej','yjte','ytje','ADMIN',0);

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_url` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `video` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
