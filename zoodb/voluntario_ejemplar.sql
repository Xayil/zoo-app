-- Table structure for table `voluntario_ejemplar`
--

DROP TABLE IF EXISTS `voluntario_ejemplar`;

CREATE TABLE `voluntario_ejemplar` (
  `voluntario_dni` varchar(9) NOT NULL,
  `ejemplar_id` int NOT NULL,
  PRIMARY KEY (`voluntario_dni`,`ejemplar_id`),
  KEY `ejemplar_id` (`ejemplar_id`),
  CONSTRAINT `voluntario_ejemplar_ibfk_1` FOREIGN KEY (`voluntario_dni`) REFERENCES `voluntario` (`dni`),
  CONSTRAINT `voluntario_ejemplar_ibfk_2` FOREIGN KEY (`ejemplar_id`) REFERENCES `ejemplar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table `voluntario_ejemplar`
--

LOCK TABLES `voluntario_ejemplar` WRITE;

INSERT INTO `voluntario_ejemplar` VALUES ('11223344C',1),('44332211D',2),('11223344C',3);

UNLOCK TABLES;
