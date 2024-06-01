-- Table structure for table `visita`
--

DROP TABLE IF EXISTS `visita`;

CREATE TABLE `visita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voluntario_dni` varchar(9) NOT NULL,
  `ejemplar_id` int NOT NULL,
  `cuidador_dni` varchar(9) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `incidencia` text,
  PRIMARY KEY (`id`),
  KEY `voluntario_dni` (`voluntario_dni`),
  KEY `ejemplar_id` (`ejemplar_id`),
  KEY `cuidador_dni` (`cuidador_dni`),
  CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`voluntario_dni`) REFERENCES `voluntario` (`dni`),
  CONSTRAINT `visita_ibfk_2` FOREIGN KEY (`ejemplar_id`) REFERENCES `ejemplar` (`id`),
  CONSTRAINT `visita_ibfk_3` FOREIGN KEY (`cuidador_dni`) REFERENCES `cuidador` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visita`

LOCK TABLES `visita` WRITE;

INSERT INTO `visita` VALUES (1,'11223344C',1,'12345678A','2021-04-01','10:00:00',NULL),(2,'44332211D',2,'87654321B','2021-04-02','11:00:00','El voluntario se mostró muy interesado en la alimentación del elefante.'),(3,'11223344C',3,'12345678A','2021-04-03','12:00:00','El tigre estaba algo agitado, se recomendó precaución.');

UNLOCK TABLES;
