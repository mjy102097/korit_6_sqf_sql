DROP TABLE IF EXISTS `library_tb`;

CREATE TABLE `library_tb` (
  `library_id` int NOT NULL AUTO_INCREMENT,
  `library_code` varchar(45) NOT NULL,
  `library_name` varchar(45) NOT NULL,
  `library_url` text NOT NULL,
  PRIMARY KEY (`library_id`),
  UNIQUE KEY `library_code_UNIQUE` (`library_code`)
);

INSERT INTO `library_tb` VALUES (1,'111402','은평구립도서관','www.eplib.or.kr');
