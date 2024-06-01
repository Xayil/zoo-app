-- Table structure for table `ejemplar`
--

DROP TABLE IF EXISTS `ejemplar`;

CREATE TABLE `ejemplar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `especie_id` int NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_muerte` date DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `madre_id` int DEFAULT NULL,
  `padre_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `especie_id` (`especie_id`),
  KEY `madre_id` (`madre_id`),
  KEY `padre_id` (`padre_id`),
  CONSTRAINT `ejemplar_ibfk_1` FOREIGN KEY (`especie_id`) REFERENCES `especie` (`id`),
  CONSTRAINT `ejemplar_ibfk_2` FOREIGN KEY (`madre_id`) REFERENCES `ejemplar` (`id`),
  CONSTRAINT `ejemplar_ibfk_3` FOREIGN KEY (`padre_id`) REFERENCES `ejemplar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ejemplar`

LOCK TABLES `ejemplar` WRITE;

INSERT INTO `ejemplar` VALUES (1,1,'2019-04-23',NULL,'Raja',NULL,NULL),(2,1,'2015-07-19',NULL,'Kira',NULL,NULL),(3,2,'2008-06-12',NULL,'Dumbo',NULL,NULL),(4,2,'2012-03-15',NULL,'Babar',NULL,NULL);

UNLOCK TABLES;
