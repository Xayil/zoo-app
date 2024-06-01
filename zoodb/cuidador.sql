-- Table structure for table 'cuidador'
--

DROP TABLE IF EXISTS `cuidador`;

CREATE TABLE `cuidador` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `telefonos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cuidador`

LOCK TABLES `cuidador` WRITE;

INSERT INTO `cuidador` VALUES ('12345678A','Juan','Pérez','Gomez','555-1234'),('87654321B','Ana','Lopez','Martinez','555-5678');

UNLOCK TABLES;
