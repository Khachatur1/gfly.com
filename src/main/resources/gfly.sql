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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

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
(50,'image3_1a_4.jpg',70),
(51,'c47f_2.jpg',71),
(52,'planer.png',72),
(53,'image2_2_4.jpg',73),
(54,'Без названия.jpg',74),
(55,'images (1).jpg',75),
(56,'Без названия (1).jpg',76),
(57,'Piper J-3.jpg',77),
(58,'cesna.jpg',78),
(59,'dyn8947r_4 (1).jpg',79),
(60,'biplane.jpg',80),
(61,'dyn8952-4_4.jpg',81),
(62,'26395481_324320161413472_7724119754071343104_n.jpg',82),
(63,'skywalker x8 2200mm.jpg',83),
(64,'19425495_1931514337093732_5050570700427886592_n.jpg',84),
(65,'hidroplane.gif',85),
(66,'indexj.jpg',86),
(67,'b_3.jpg',87),
(68,'parkzone-hydroplan-Icon-A5.jpg',88),
(69,'113684s1.jpg',89),
(70,'multy.jpg',90),
(71,'c47c_2.jpg',91);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`id`,`title`,`description`,`pic_url`,`timestamp`,`user_id`) values 
(1,'Piper J-3 Cub GP/EP/GasARF','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sem tortor, mollis sit amet eleifend in, sollicitudin vulputate lectus. Curabitur eleifend risus sit amet massa aliquam iaculis. Suspendisse bibendum dolor id tristique consectetur. Maecenas sollicitudin pretium erat nec commodo. Fusce scelerisque dui quis ante efficitur pretium. Praesent aliquam non erat at sodales. Aliquam erat volutpat. Pellentesque ligula velit, porta nec nisi non, ullamcorper lacinia nisi. Maecenas ante augue, pretium non fermentum in, vulputate ut tortor. Etiam sed semper nulla. Phasellus feugiat blandit quam, ac aliquam dolor malesuada sed. Sed neque dui, dictum ac tellus nec, pharetra luctus arcu. Suspendisse ac feugiat dolor. Sed lorem leo, sodales eget aliquet sed, accumsan non nibh.\r\n\r\nMauris at justo nec risus elementum pulvinar id ac elit. Donec molestie sed arcu sit amet tristique. Nulla ultrices sodales ullamcorper. Vestibulum dapibus erat vitae rhoncus commodo. Cras laoreet nibh sed nisi facilisis, mollis volutpat dolor lacinia. Aliquam sapien magna, vehicula ut est in, tincidunt sollicitudin justo. Nullam efficitur felis non tristique facilisis. In hac habitasse platea dictumst. Fusce in molestie neque. Curabitur ac orci nec lectus euismod dignissim ac vel mi. Fusce eget libero vitae nibh fermentum scelerisque. Pellentesque imperdiet odio et tortor porttitor, placerat iaculis dolor faucibus. Curabitur pellentesque placerat lorem, nec maximus purus. Mauris pharetra, ante nec lacinia feugiat, mi lacus congue lectus, a cursus lorem metus nec nibh.\r\n\r\nProin tempus eros sit amet eleifend malesuada. Cras venenatis, tortor a tristique bibendum, nibh metus accumsan justo, a commodo massa libero at lacus. Pellentesque nec mauris velit. Nullam mi eros, condimentum vitae pretium id, fringilla nec nunc. Suspendisse at lacinia odio. Nullam finibus hendrerit augue vel ultricies. Donec vel pharetra diam. Duis erat magna, consectetur sagittis diam a, efficitur feugiat metus. Cras vulputate nulla et tempor cursus. Pellentesque velit erat, scelerisque ac orci non, aliquet sollicitudin nulla. Nullam efficitur erat ex, et mollis eros molestie a. In suscipit mauris vel ex fringilla, quis malesuada dui luctus.\r\n\r\nAliquam sit amet cursus dolor. Nunc eu fringilla risus. Nunc molestie erat nisi, sit amet venenatis diam eleifend id. Curabitur id lorem condimentum, sagittis magna sed, congue lorem. Aliquam id tincidunt nisl, sit amet pretium dui. Morbi porttitor viverra neque, quis semper turpis porttitor a. Proin blandit ex vel consectetur pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nQuisque eget aliquam ante. Vestibulum suscipit quam nibh, quis volutpat libero accumsan at. Morbi tincidunt viverra pharetra. Suspendisse sem ipsum, sodales non laoreet non, faucibus sed quam. Duis sodales lacus vel quam pretium, in venenatis turpis tempor. Maecenas cursus maximus dui, ac gravida justo. Pellentesque fermentum lobortis turpis, vitae imperdiet justo volutpat eu. Praesent eget est condimentum, commodo nisl quis, aliquet lorem. Quisque congue tincidunt iaculis. Quisque nibh quam, consequat a dui in, maximus faucibus ex. Etiam ornare elementum diam, nec eleifend enim tempus eget. Nullam hendrerit mi ac leo luctus, imperdiet facilisis velit dictum.\r\n\r\nVivamus ac velit est. Proin nec dolor et diam sagittis rutrum. Sed mauris quam, volutpat vel erat egestas, eleifend varius nulla. Sed venenatis ultrices commodo. Integer.','triner.jpg','2018-04-19 00:40:31',4),
(2,'Embraer EMB 312','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin fringilla consequat volutpat. Aliquam dapibus quam quis elementum euismod. Integer vel nisl felis. In hac habitasse platea dictumst. Etiam maximus malesuada facilisis. Phasellus a egestas massa. Nulla non pharetra urna, nec rutrum dui. Suspendisse blandit, tellus eget egestas finibus, purus turpis eleifend risus, non mattis elit arcu a ante. Suspendisse volutpat semper dolor non rutrum. Nunc suscipit accumsan orci. Curabitur pretium faucibus convallis.\r\n\r\nAenean luctus felis justo, eu imperdiet enim mattis id. Morbi condimentum tempor molestie. Ut finibus nunc nec aliquet vestibulum. In hac habitasse platea dictumst. Fusce feugiat sapien volutpat venenatis hendrerit. Pellentesque ut venenatis magna. Morbi sed sapien feugiat, commodo nisi et, egestas tortor. Nulla accumsan eros at fringilla fermentum. Sed auctor dui imperdiet imperdiet accumsan. Phasellus pharetra sem id nibh ultrices iaculis. Duis vestibulum tincidunt tellus, in volutpat nisl malesuada vulputate. Ut venenatis massa nunc, eget dictum leo scelerisque non. Duis hendrerit tempor consequat.\r\n\r\nDonec nulla nunc, scelerisque et aliquam eu, bibendum a turpis. Ut feugiat eleifend tortor. Sed blandit lectus orci, eget efficitur augue rutrum in. Nulla vitae sapien in lectus blandit vulputate. Proin dignissim massa ultricies, eleifend justo a, feugiat diam. Suspendisse tincidunt sed risus eu tempor. Etiam nec ex convallis neque tincidunt rutrum. Donec mi urna, ullamcorper a lorem at, sagittis hendrerit eros. Fusce scelerisque, velit ac congue vehicula, dolor tellus lobortis leo, sit amet eleifend lectus dui a nisi. Nunc rutrum tincidunt gravida. Ut viverra ex sapien, non vestibulum libero fringilla at. Sed dignissim leo ac risus vestibulum sodales.\r\n\r\nPraesent maximus velit ante, eget sodales metus fringilla nec. Morbi a lectus dui. Donec dui nibh, fermentum non quam et, tincidunt volutpat elit. Nam suscipit blandit leo, id eleifend eros luctus nec. Pellentesque ac urna congue, feugiat diam posuere, lobortis erat. Aliquam erat volutpat. Cras sagittis, odio vitae rutrum feugiat, lacus nisi blandit augue, ac pretium orci erat sodales tellus. Cras in semper ex, eget tristique urna. Morbi quis viverra lectus, at posuere nibh. Nullam sed facilisis lorem. Nulla tincidunt fringilla ipsum non fringilla. Integer imperdiet quis risus eu pharetra. Nunc volutpat sollicitudin magna at tempus. Cras a tempus felis, quis sodales sapien. Phasellus consequat commodo turpis at imperdiet.\r\n\r\nNunc pharetra aliquam lectus et eleifend. Vivamus dignissim turpis at finibus cursus. Aliquam sagittis dictum finibus. Curabitur est erat, finibus id dolor sed, ultricies commodo elit. Curabitur maximus suscipit dui a pharetra. Vivamus at leo ut risus egestas blandit eu in purus. Nunc tincidunt pulvinar leo sed hendrerit. Nunc nec odio efficitur, porta neque a, tincidunt arcu. Nulla facilisi. Praesent purus est, imperdiet sed gravida facilisis, accumsan eu libero.\r\n\r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam vitae lorem at turpis iaculis consequat sed vitae nisi. Vivamus sit amet dui eu urna tempor rhoncus. Suspendisse vulputate metus neque, et sagittis tellus volutpat consequat. Sed eu bibendum purus, sit amet tristique velit. Curabitur pulvinar in sapien mattis finibus. Donec interdum luctus aliquam. Vestibulum placerat sapien in dui rutrum, in pulvinar leo convallis. Curabitur vel ultrices tortor, quis malesuada arcu.\r\n\r\nMauris suscipit pellentesque magna nec porta. Maecenas laoreet elit ac urna blandit, non auctor enim auctor. Integer iaculis cursus odio vel venenatis. Donec purus tortor, tempus a mauris eu, pharetra condimentum tellus. Sed faucibus justo sed sollicitudin malesuada. Phasellus lobortis eleifend finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent et mauris et nulla porta mollis. Nunc ante nunc, tincidunt quis nibh eu, molestie sollicitudin massa.\r\n\r\nVivamus ac purus quis nisi posuere dictum et at nunc. Nullam aliquam tincidunt lorem sed viverra. Donec blandit urna a metus.','cida2001.jpg','2018-04-19 00:43:47',4),
(3,'AIRBUS A400M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed semper consequat est, vel pulvinar augue rutrum sit amet. Phasellus nulla velit, elementum at orci eget, semper rutrum massa. Morbi hendrerit dui arcu. Aliquam ultricies tempor mi ut auctor. Etiam eget porttitor dui, nec semper libero. Morbi quam urna, viverra quis pharetra eget, rutrum non ante. Etiam rutrum in velit ac lacinia. Phasellus dui dolor, eleifend sit amet cursus nec, tristique iaculis leo. Praesent ornare, urna in ornare bibendum, felis ipsum hendrerit leo, in vehicula nisi lectus eu massa. Aenean nisi mauris, mattis ut massa vestibulum, cursus finibus leo. Integer dui massa, gravida suscipit finibus ut, egestas id ex. Duis nibh diam, hendrerit id urna convallis, pretium luctus lacus. Morbi molestie, dolor sit amet fermentum placerat, diam diam egestas justo, non finibus nulla magna sit amet ligula.\r\n\r\nAliquam a justo urna. In sodales, justo fermentum facilisis elementum, leo magna volutpat urna, id faucibus neque justo ac lectus. Proin non purus faucibus, cursus neque nec, blandit orci. Sed ultrices sapien at justo tempor scelerisque. Etiam in mi ornare, tempor mauris quis, dictum eros. Nulla non fringilla orci. Suspendisse interdum auctor justo, auctor rutrum ante hendrerit ut. Sed laoreet eleifend nunc, volutpat euismod dolor volutpat quis. Curabitur id massa magna.\r\n\r\nNullam gravida mollis leo id consequat. Nullam ut tempus elit, ac porta turpis. Aenean nec nunc vestibulum, malesuada arcu et, luctus neque. Nunc vitae vehicula diam. Sed justo velit, luctus a augue sed, vestibulum dapibus nulla. Ut ultricies molestie mauris a mollis. Phasellus convallis lorem eget mollis mollis. Vestibulum sit amet porttitor dolor. Proin bibendum dolor nec euismod pulvinar. Maecenas maximus, lectus quis convallis vulputate, odio elit rutrum nisl, eget mattis justo enim ac lectus. Phasellus ullamcorper justo mauris, ac congue quam congue ac. Duis vel fermentum dolor. Pellentesque consectetur, mi sit amet viverra efficitur, dui eros imperdiet massa, non dapibus justo sapien euismod orci. Vestibulum nisl nibh, viverra id est tristique, pharetra luctus orci.\r\n\r\nMauris laoreet dui vitae augue scelerisque, in ullamcorper ligula rhoncus. Pellentesque ac nisi tincidunt neque feugiat gravida. Cras semper consectetur malesuada. Nam finibus diam eu luctus ultrices. Etiam dictum, orci eget gravida imperdiet, felis libero pellentesque nibh, in pulvinar neque nulla ut libero. Duis quis purus dolor. Aliquam erat volutpat. Donec sed augue vel nulla dapibus hendrerit.\r\n\r\nNulla id fermentum dui. Nunc justo risus, ultrices sit amet lacinia id, sollicitudin sit amet nibh. Fusce semper velit dignissim nunc.','3d0faf66-7ca9-4733-bbe4-d87b3ee06f98.jpg','2018-04-19 00:44:51',4),
(4,'Extra 300\'s','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque congue nulla at risus semper molestie. Nulla magna elit, commodo eu aliquam a, varius ut arcu. Sed aliquam accumsan augue, at pharetra quam efficitur sed. Vivamus convallis lorem tincidunt elit posuere condimentum sit amet sit amet mauris. Mauris eu faucibus nisl. Nulla at efficitur turpis. Nullam nisi est, pellentesque a ante eget, ultricies ullamcorper sapien. Nunc volutpat nulla turpis, id dictum nisl lobortis nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus rutrum convallis tellus eu ultricies. Nunc a nisi ex. Nam pharetra ante libero, id pellentesque sapien tincidunt ac. Nam condimentum auctor rutrum.\r\n\r\nQuisque ultrices dictum commodo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris vel rutrum velit. Duis leo ligula, elementum laoreet eros nec, varius porta ex. Duis porta vitae nibh a cursus. Vivamus nibh diam, consequat nec molestie et, vestibulum eu ante. Vestibulum aliquam gravida scelerisque.\r\n\r\nIn viverra porttitor erat vitae imperdiet. Nulla dignissim ultricies lorem ut rutrum. Quisque sodales tristique felis, eu scelerisque erat mollis sit amet. Pellentesque velit enim, fermentum nec lacus sed, tempor ornare mauris. Vivamus tempor a felis vitae elementum. In eleifend eget diam in dapibus. Proin vel tortor sed massa lacinia facilisis eget eu lectus. Sed sed turpis quis ante rhoncus tempus. Cras eu lorem ultrices, dignissim nibh ut, tincidunt risus. Fusce viverra, lacus ut volutpat accumsan, massa massa pulvinar ipsum, at convallis odio massa non lorem. Cras suscipit nunc nunc, in ullamcorper augue ornare quis. Nam nulla velit, hendrerit interdum fringilla nec, tincidunt nec nulla. Phasellus suscipit, est sit amet hendrerit auctor, nulla libero lacinia augue, vel feugiat augue erat ac felis. Curabitur in posuere libero, id rhoncus diam. Sed vitae elit turpis. Integer bibendum turpis at est suscipit, at vehicula nulla fringilla.\r\n\r\nAenean fringilla sed justo eu tempor. Integer quis cursus lorem. Integer at cursus ligula. Suspendisse dignissim ante semper purus eleifend sagittis. In posuere lacus ac est imperdiet suscipit. Sed ornare blandit accumsan. Nulla vulputate a justo at tempus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec eu nisl felis. Ut quis diam eu velit auctor convallis eget malesuada eros. Donec mattis congue sapien, ac rhoncus turpis pellentesque sit amet. Quisque tincidunt nibh in magna eleifend semper. Duis eget sodales lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed convallis mollis.','pitts-python-aerobatic-biplane-epo-1400mm-pnf-[2]-1434-p.jpg','2018-04-19 00:45:49',4);

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

insert  into `product`(`id`,`name`,`wingspan`,`weight`,`engine`,`material`,`category_id`,`pic_url`,`description`,`video_url`) values 
(59,'Extra',2200,1800,'ELECTRO','DEPRON',15,'3d.jpg','Extra Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/-JSChORQKWg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(60,'Extra330',2300,2500,'DVS','BALSA',15,'image3_1a_4.jpg','Extra 330 Մոդելը նախատեսված է 3d թռիչքների  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/-JSChORQKWg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(61,'Piper J-3 Cub GP/EP/GasARF',1900,3000,'DVS','BALSA',22,'triner.jpg','Piper J-3 Cub GP/EP/GasARF Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/kOteoWkYV_g\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(62,'FMS Pitts Biplane ',1400,1200,'ELECTRO','DEPRON',16,'dyn8947r_4 (1).jpg','FMS Pitts Biplane Մոդելը նախատեսված է դանդաղ և 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/lSLNoqxtjXQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(63,'FMS Pitts Biplane',1200,570,'ELECTRO','DEPRON',15,'dyn8952-4_4.jpg','Piper J-3  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/Hpw82X7b3HU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(64,'FPV Flywing',1200,780,'ELECTRO','DEPRON',18,'flywing.jpg','FPV Flywing Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe width=\"570\" height=\"432\" src=\"https://www.youtube.com/embed/M3iz8LNPV0I\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(65,'Extra 300\'s',1340,780,'ELECTRO','DEPRON',17,'image3_1a_4.jpg','Extra 300\'s Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/1xY7YO-N6YM\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(66,'SU 27',790,450,'ELECTRO','DEPRON',15,'ground_3437.jpg','SU 27 Մոդելը նախատեսված է 3d թռիչքների  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/8Yg8ijjTsJY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(67,'Cessna 182',1100,850,'ELECTRO','DEPRON',22,'4ch-cessna-182-rc-plane-brushless-version-rtf-24ghz-5ce.jpg','CESNA 182  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"570\" height=\"432\" src=\"https://www.youtube.com/embed/dgeNY3P4Zws\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(68,' ISLANDER',1350,850,'ELECTRO','DEPRON',20,'ep-42.jpg.jpg','ISLANDER  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/1rk7PpKm7YM\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(69,'AIRBUS A400M',4500,22,'ELECTRO','BALSA',17,'multy.jpg','AIRBUS A400M Մոդելը նախատեսված է ցուցադրական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/1rJ0YTppb8I\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(70,'Extra330',1300,1200,'DVS','BALSA',17,'image3_1a_4.jpg','Extra330 Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/3FSUfBcpNVk\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(71,'Embraer EMB 312',2300,2500,'DVS','BALSA',17,'c47f_2.jpg','Embraer EMB 312 Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/n1MvnAm-X7s\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(72,'F1A',2200,400,'NON','BALSA',21,'planer.png','F1A Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/1TiaXlWWyes\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(73,'F1A',2000,450,'DVS','BALSA',21,'image2_2_4.jpg','F1A Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/VicsuaaeFo8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(74,'HLG',600,40,'NON','BALSA',21,'Без названия.jpg','HLG Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/wKEDQS2I0PM\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(75,'HLG mini',400,28,'NON','BALSA',21,'images (1).jpg','HLG mini Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/ijcJ9wipSOQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(76,'HLG F3K',1300,235,'NON','BALSA',21,'Без названия (1).jpg','HLG F3K Մոդելը նախատեսված է սպորտային թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/w5Mb2qPP6nQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(77,'Cessna 180',1200,1200,'ELECTRO','DEPRON',22,'Piper J-3.jpg','Cessna 180  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"570\" height=\"432\" src=\"https://www.youtube.com/embed/aLJ3UapWOIk\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(78,'Piper J-3 ',1700,1400,'DVS','BALSA',22,'cesna.jpg','Piper J-3  Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/kOteoWkYV_g\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(79,'UMX',1400,1000,'ELECTRO','DEPRON',16,'dyn8947r_4 (1).jpg','UMX Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/SHW-1m3vKzQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(80,'UMX',1255,580,'ELECTRO','DEPRON',16,'biplane.jpg','UMX Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/SHW-1m3vKzQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(81,'UMX 230',1255,580,'ELECTRO','DEPRON',16,'dyn8952-4_4.jpg','UMX 230 Մոդելը նախատեսված է դանդաղ և ուսումնական թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/SHW-1m3vKzQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(82,'Skaywalker',1300,600,'ELECTRO','DEPRON',18,'26395481_324320161413472_7724119754071343104_n.jpg','Skaywalker Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/SHW-1m3vKzQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(83,'Skaywalker 2',1500,1000,'ELECTRO','DEPRON',18,'skywalker x8 2200mm.jpg','Skaywalker 2 Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/SHW-1m3vKzQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(84,'Drak 2',1500,1000,'ELECTRO','DEPRON',18,'19425495_1931514337093732_5050570700427886592_n.jpg','Drak 2 Մոդելը նախատեսված է օդատեսանկարահանում  իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/SHW-1m3vKzQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(85,'Hidrofoam',800,450,'ELECTRO','DEPRON',19,'hidroplane.gif','Hidrofoam Մոդելը նախատեսված է ջրի վրայից 3D թռիչքներ իրականացնելու  համար','<iframe width=\"570\" height=\"432\" src=\"https://www.youtube.com/embed/VRy9a_Vonww\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(86,'Hidrofoam',800,450,'ELECTRO','DEPRON',19,'indexj.jpg','Hidrofoam Մոդելը նախատեսված է ջրի վրայից 3D թռիչքներ իրականացնելու  համար','<iframe width=\"570\" height=\"432\" src=\"https://www.youtube.com/embed/VRy9a_Vonww\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(87,'Hidro',1200,450,'ELECTRO','DEPRON',19,'b_3.jpg','Hidro Մոդելը նախատեսված է ջրի վրայից 3D թռիչքներ իրականացնելու  համար','<iframe width=\"570\" height=\"432\" src=\"https://www.youtube.com/embed/VRy9a_Vonww\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(88,'Cesna ',1200,450,'ELECTRO','DEPRON',19,'parkzone-hydroplan-Icon-A5.jpg','Cesna Մոդելը նախատեսված է ջրի վրայից 3D թռիչքներ իրականացնելու  համար','<iframe width=\"570\" height=\"432\" src=\"https://www.youtube.com/embed/VRy9a_Vonww\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(89,'Islang',1350,890,'DVS','BALSA',20,'113684s1.jpg','Islang Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/akoJ2zBwX1o\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(90,'Islang',1350,890,'DVS','BALSA',20,'multy.jpg','Islang Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/akoJ2zBwX1o\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(91,'B2',1800,890,'DVS','BALSA',20,'c47c_2.jpg','B2 Մոդելը նախատեսված է 3D թռիչքներ իրականացնելու  համար','<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/akoJ2zBwX1o\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

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
