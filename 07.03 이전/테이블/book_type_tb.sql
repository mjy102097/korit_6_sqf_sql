DROP TABLE IF EXISTS `book_type_tb`;

CREATE TABLE `book_type_tb` (
  `book_type_id` int NOT NULL AUTO_INCREMENT,
  `book_type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`book_type_id`),
  UNIQUE KEY `book_type_name_UNIQUE` (`book_type_name`)
);

INSERT INTO `book_type_tb` VALUES (1,'EB');
