/*
SQLyog Ultimate v12.2.6 (64 bit)
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
(17,'COPI','COPI','copi.jpg'),
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `image` */

insert  into `image`(`id`,`pic_url`,`product_id`) values 
(39,'3d.jpg',59),
(40,'image3_1a_4.jpg',60),
(41,'triner.jpg',61),
(42,'dyn8947r_4 (1).jpg',62),
(43,'dyn8952-4_4.jpg',63),
(44,'flywing.jpg',64),
(45,'image3_1a_4.jpg',65),
(46,'ground_3437.jpg',66),
(47,'4ch-cessna-182-rc-plane-brushless-version-rtf-24ghz-5ce.jpg',67),
(48,'ep-42.jpg.jpg',68),
(49,'multy.jpg',69),
(50,'15239837405167801E-ArtechSU27-RTF-3.jpg',66),
(51,'15239837606077801E-ArtechSU27-RTF-5.jpg',66),
(52,'1523983769228su27-4.jpg',66),
(53,'152398546785773509514.jpg',62),
(54,'1523985476099pitmain.jpg',62),
(55,'1523985484779TopRC_Pitts1400_sm.jpg',62),
(56,'1523985495119pitts-python-aerobatic-biplane-epo-1400mm-pnf-1434-p.jpg',62),
(57,'1523985675235images.jpeg',63),
(58,'1523985684324images (1).jpeg',63),
(59,'1523985694437images (2).jpeg',63),
(60,'1523985705413pitts-python-aerobatic-biplane-epo-1400mm-pnf-[2]-1434-p.jpg',63),
(61,'1523985713066SKU260155-2.jpg',63);

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
  `description` varchar(100) NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`wingspan`,`weight`,`engine`,`material`,`category_id`,`pic_url`,`description`,`video_url`) values 
(59,'Extra',2200,1800,'ELECTRO','DEPRON',15,'3d.jpg','Extra Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/-JSChORQKWg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(60,'Extra330',2300,2500,'DVS','BALSA',15,'image3_1a_4.jpg','Extra330 Մոդելը նախատեսված է 3d թռիչքների  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/-JSChORQKWg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(61,'Piper J-3 Cub GP/EP/GasARF',1900,3000,'DVS','BALSA',22,'triner.jpg','Piper J-3 Cub GP/EP/GasARF Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/kOteoWkYV_g?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(62,'FMS Pitts Biplane ',1400,1200,'ELECTRO','DEPRON',16,'dyn8947r_4 (1).jpg','FMS Pitts Biplane Մոդելը նախատեսված է դանդաղ և 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/lSLNoqxtjXQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(63,'FMS Pitts Biplane',1200,570,'ELECTRO','DEPRON',15,'dyn8952-4_4.jpg','FMS Pitts Biplane  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/Hpw82X7b3HU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(64,'FPV Flywing',1200,780,'ELECTRO','DEPRON',18,'flywing.jpg','FPV Flywing Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/M3iz8LNPV0I?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(65,'Extra 300\'s',1340,780,'ELECTRO','DEPRON',17,'image3_1a_4.jpg','Extra 300\'s Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/1xY7YO-N6YM?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(66,'SU 27',790,450,'ELECTRO','DEPRON',15,'ground_3437.jpg','SU 27 Մոդելը նախատեսված է 3d թռիչքների  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/8Yg8ijjTsJY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(67,'Cessna 182',1100,850,'ELECTRO','DEPRON',22,'4ch-cessna-182-rc-plane-brushless-version-rtf-24ghz-5ce.jpg','CESNA 182  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/dgeNY3P4Zws?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(68,' ISLANDER',1350,850,'ELECTRO','DEPRON',20,'ep-42.jpg.jpg','ISLANDER  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/1rk7PpKm7YM?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(69,'AIRBUS A400M',4500,22,'ELECTRO','BALSA',17,'multy.jpg','AIRBUS A400M Մոդելը նախատեսված է ցուցադրական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/1rJ0YTppb8I?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`type`,`verify`) values 
(4,'admin','admin','admin','admin','ADMIN',1);

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
