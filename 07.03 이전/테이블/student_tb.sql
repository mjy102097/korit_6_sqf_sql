DROP TABLE IF EXISTS `student_tb`;

CREATE TABLE `student_tb` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `introduce` text,
  `admission_date` datetime NOT NULL,
  `class` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`student_id`)
);

INSERT INTO `student_tb` VALUES (1,'문주영','010-1234-3072','mjy1234@naver.com',NULL,'2024-06-26 11:34:12',1,80),(2,'문주일','010-1235-3072','mjy1235@naver.com',NULL,'2024-06-27 11:34:14',1,70),(3,'문주이','010-1236-3072','mjy1236@naver.com',NULL,'2024-06-28 11:34:14',2,60),(4,'문주삼','010-1237-3072','mjy1237@naver.com',NULL,'2024-06-29 11:34:14',2,60),(8,'손경태','010-1111-2222','aaa@gmail.com',NULL,'2024-07-02 14:46:16',2,80),(9,'김지현','010-1111-3333','bbb@naver.com','bbb를 포함하고 있는 계정입니다.','2024-07-02 14:46:16',3,80),(11,'김정현','010-4444-3333','aaabbb@naver.com','bbb를 포함하고 있는 계정입니다.','2024-07-02 14:46:16',3,40),(12,'권오광','010-5555-2222','bbbccc@kakao.com','bbb를 포함하고 있는 계정입니다.','2024-07-02 14:46:16',3,80),(13,'권혁진','010-1111-5555','aaabbbccc@kakao.com','bbb를 포함하고 있는 계정입니다.','2024-07-02 14:46:16',3,60);
