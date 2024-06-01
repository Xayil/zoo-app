-- Table structure for table `voluntario`
--

DROP TABLE IF EXISTS `voluntario`;

CREATE TABLE `voluntario` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voluntario`

LOCK TABLES `voluntario` WRITE;

INSERT INTO `voluntario` VALUES ('11223344C','Carlos','Sánchez','Ruiz','555-9012','1990-05-15'),('44332211D','María','Hernández','Díaz','555-3456','1985-11-23');

UNLOCK TABLES;
