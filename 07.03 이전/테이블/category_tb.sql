DROP TABLE IF EXISTS `category_tb`;

CREATE TABLE `category_tb` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name_UNIQUE` (`category_name`)
);

INSERT INTO `category_tb` VALUES (1,'가정과생활'),(2,'경제/경영'),(8,'기술/공학'),(18,'만화/잡지'),(16,'문학'),(17,'수험서/자격증'),(10,'여행'),(6,'역사/문화/지리'),(11,'예술/대중문화'),(13,'외국어'),(14,'유아/어린이'),(3,'인문'),(7,'자연/과학'),(5,'정치/사회'),(4,'종교'),(15,'청소년'),(9,'취미/실용/스포츠'),(12,'컴퓨터/IT');
