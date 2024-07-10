DROP TABLE IF EXISTS `car_tb`;

CREATE TABLE `car_tb` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `car_name` varchar(45) NOT NULL,
  `car_color` varchar(45) NOT NULL,
  `manufacture_date` date NOT NULL,
  PRIMARY KEY (`car_id`)
);

INSERT INTO `car_tb` VALUES (1,'G70','white','2021-07-01'),(2,'G70','black','2021-07-01');
