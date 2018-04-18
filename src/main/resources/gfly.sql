/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 5.7.21-log : Database - gfly
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

insert  into `category`(`id`,`name`,`description`,`pic_url`) values (14,'ALL','ALL','all.jpg'),(15,'3D','3D','3d.jpg'),(16,'BIPLANE','BIPLANE','biplane.jpg'),(17,'COPI','COPI','copi.jpeg'),(18,'FLYWING','FLYWING','flywing.jpg'),(19,'HIDROPLANE','HIDROPLANE','hidroplane.gif'),(20,'MULTIROTOR','MULTIROTOR','multirotor.jpg'),(21,'PLANER','PLANER','planer.png'),(22,'TRINER','TRINER','triner.jpg');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

/*Data for the table `image` */

insert  into `image`(`id`,`pic_url`,`product_id`) values (39,'3d.jpg',59),(40,'image3_1a_4.jpg',60),(41,'triner.jpg',61),(42,'dyn8947r_4 (1).jpg',62),(43,'dyn8952-4_4.jpg',63),(44,'flywing.jpg',64),(45,'image3_1a_4.jpg',65),(46,'ground_3437.jpg',66),(47,'4ch-cessna-182-rc-plane-brushless-version-rtf-24ghz-5ce.jpg',67),(48,'ep-42.jpg.jpg',68),(49,'multy.jpg',69),(50,'image3_1a_4.jpg',70),(51,'c47f_2.jpg',71),(52,'planer.png',72),(53,'image2_2_4.jpg',73),(54,'Без названия.jpg',74),(55,'images (1).jpg',75),(56,'Без названия (1).jpg',76),(57,'Piper J-3.jpg',77),(58,'cesna.jpg',78),(59,'dyn8947r_4 (1).jpg',79),(60,'biplane.jpg',80),(61,'dyn8952-4_4.jpg',81),(62,'26395481_324320161413472_7724119754071343104_n.jpg',82),(63,'skywalker x8 2200mm.jpg',83),(64,'19425495_1931514337093732_5050570700427886592_n.jpg',84),(65,'hidroplane.gif',85),(66,'indexj.jpg',86),(67,'b_3.jpg',87),(68,'parkzone-hydroplan-Icon-A5.jpg',88),(69,'113684s1.jpg',89),(70,'multy.jpg',90),(71,'c47c_2.jpg',91);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`wingspan`,`weight`,`engine`,`material`,`category_id`,`pic_url`,`description`,`video_url`) values (59,'Extra',2200,1800,'ELECTRO','DEPRON',15,'3d.jpg','Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/-JSChORQKWg?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(60,'Extra330',2300,2500,'DVS','BALSA',15,'image3_1a_4.jpg','Մոդելը նախատեսված է 3d թռիչքների  համար','<iframe src=\"https://www.youtube.com/embed/-JSChORQKWg?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(61,'Piper J-3 Cub GP/EP/GasARF',1900,3000,'DVS','BALSA',22,'triner.jpg','Piper J-3 Cub GP/EP/GasARF Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/kOteoWkYV_g?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(62,'FMS Pitts Biplane ',1400,1200,'ELECTRO','DEPRON',16,'dyn8947r_4 (1).jpg','FMS Pitts Biplane Մոդելը նախատեսված է դանդաղ և 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/lSLNoqxtjXQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(63,'FMS Pitts Biplane',1200,570,'ELECTRO','DEPRON',15,'dyn8952-4_4.jpg','Piper J-3  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/Hpw82X7b3HU?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(64,'FPV Flywing',1200,780,'ELECTRO','DEPRON',18,'flywing.jpg','FPV Flywing Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/M3iz8LNPV0I?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(65,'Extra 300\'s',1340,780,'ELECTRO','DEPRON',17,'image3_1a_4.jpg','Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/1xY7YO-N6YM?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(66,'SU 27',790,450,'ELECTRO','DEPRON',15,'ground_3437.jpg','Մոդելը նախատեսված է 3d թռիչքների  համար','<iframe src=\"https://www.youtube.com/embed/8Yg8ijjTsJY?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(67,'Cessna 182',1100,850,'ELECTRO','DEPRON',22,'4ch-cessna-182-rc-plane-brushless-version-rtf-24ghz-5ce.jpg','CESNA 182  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/dgeNY3P4Zws?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(68,' ISLANDER',1350,850,'ELECTRO','DEPRON',20,'ep-42.jpg.jpg','ISLANDER  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/1rk7PpKm7YM?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(69,'AIRBUS A400M',4500,22,'ELECTRO','BALSA',17,'multy.jpg','AIRBUS A400M Մոդելը նախատեսված է ցուցադրական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/1rJ0YTppb8I?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(70,'Extra330',1300,1200,'DVS','BALSA',17,'image3_1a_4.jpg','Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/3FSUfBcpNVk?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(71,'Embraer EMB 312',2300,2500,'DVS','BALSA',17,'c47f_2.jpg','Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/n1MvnAm-X7s?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(72,'F1A',2200,400,'NON','BALSA',21,'planer.png','f1A Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/1TiaXlWWyes?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(73,'F1A',2000,450,'DVS','BALSA',21,'image2_2_4.jpg','f1A Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/VicsuaaeFo8?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(74,'HLG',600,40,'NON','BALSA',21,'Без названия.jpg','HLG planer Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/pP-T5RvIl6U?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(75,'HLG mini',400,28,'NON','BALSA',21,'images (1).jpg','HLG Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/ijcJ9wipSOQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(76,'HLG F3K',1300,235,'NON','BALSA',21,'Без названия (1).jpg','F3K Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/w5Mb2qPP6nQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(77,'Cessna 180',1200,1200,'ELECTRO','DEPRON',22,'Piper J-3.jpg','CESNA 180  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/aLJ3UapWOIk?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(78,'Piper J-3 ',1700,1400,'DVS','BALSA',22,'cesna.jpg','Piper J-3  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/kOteoWkYV_g?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"640\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(79,'UMX',1400,1000,'ELECTRO','DEPRON',16,'dyn8947r_4 (1).jpg','  Pitts S-1S Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/SHW-1m3vKzQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(80,'UMX',1255,580,'ELECTRO','DEPRON',16,'biplane.jpg','  Pitts S-1S Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/SHW-1m3vKzQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(81,'UMX 230',1255,580,'ELECTRO','DEPRON',16,'dyn8952-4_4.jpg','umx 230 Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/SHW-1m3vKzQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(82,'Skaywalker',1300,600,'ELECTRO','DEPRON',18,'26395481_324320161413472_7724119754071343104_n.jpg','FPV Flywing Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/SHW-1m3vKzQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(83,'Skaywalker 2',1500,1000,'ELECTRO','DEPRON',18,'skywalker x8 2200mm.jpg','FPV Flywing Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/SHW-1m3vKzQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(84,'Drak 2',1500,1000,'ELECTRO','DEPRON',18,'19425495_1931514337093732_5050570700427886592_n.jpg','FPV Flywing Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/SHW-1m3vKzQ?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(85,'hidrofoam',800,450,'ELECTRO','DEPRON',19,'hidroplane.gif','Մոդելը նախատեսված է ջրի վրայից 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/VRy9a_Vonww?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(86,'hidrofoam',800,450,'ELECTRO','DEPRON',19,'indexj.jpg','Մոդելը նախատեսված է ջրի վրայից 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/VRy9a_Vonww?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(87,'hidro',1200,450,'ELECTRO','DEPRON',19,'b_3.jpg','Մոդելը նախատեսված է ջրի վրայից 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/VRy9a_Vonww?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(88,'Cesna ',1200,450,'ELECTRO','DEPRON',19,'parkzone-hydroplan-Icon-A5.jpg','Մոդելը նախատեսված է ջրի վրայից 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/VRy9a_Vonww?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(89,'islang',1350,890,'DVS','BALSA',20,'113684s1.jpg','Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/akoJ2zBwX1o?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(90,'islang',1350,890,'DVS','BALSA',20,'multy.jpg','Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/akoJ2zBwX1o?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(91,'B2',1800,890,'DVS','BALSA',20,'c47c_2.jpg','Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe src=\"https://www.youtube.com/embed/akoJ2zBwX1o?ecver=2\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"641\" height=\"360\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

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

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`type`,`verify`) values (4,'admin','admin','admin','admin','ADMIN',1);

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
