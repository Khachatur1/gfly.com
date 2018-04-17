CREATE DATABASE `gfly`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


insert  into `category`(`id`,`name`,`description`,`pic_url`) values 

(1,'ALL','ALL','all.jpg'),

(2,'3D','3D','3d.jpg'),

(3,'BIPLANE','BIPLANE','biplane.jpg'),

(4,'COPI','COPI','copi.jpeg'),

(5,'FLYWING','FLYWING','flywing.jpg'),

(6,'HIDROPLANE','HIDROPLANE','hidroplane.gif'),

(7,'MULTIROTOR','MULTIROTOR','multirotor.jpg'),

(8,'PLANER','PLANER','planer.png'),

(9,'TRINER','TRINER','triner.jpg');


CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `wingspan` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `engine` enum('DVS','ELECTRO','NON') NOT NULL,
  `material` enum('DEPRON','BALSA') NOT NULL,
  `category_id` int(11) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `short_description` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('ADMIN','USER') NOT NULL,
  `verify` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_url` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

