-- Table structure for table `especie`
--

DROP TABLE IF EXISTS `especie`;

CREATE TABLE `especie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_generico` varchar(100) NOT NULL,
  `nombre_cientifico` varchar(100) NOT NULL,
  `familia` varchar(100) NOT NULL,
  `cuidados_especificos` text,
  `info_trabajadores` text,
  `explicacion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `especie`

LOCK TABLES `especie` WRITE;

INSERT INTO `especie` VALUES (1,'Tigre de Bengala','Panthera tigris tigris','Felidae','Necesitan amplios espacios y una dieta rica en carne.','Vigilar su comportamiento y alimentación de cerca.','El tigre de Bengala es una especie en peligro de extinción.'),(2,'Elefante Africano','Loxodonta africana','Elephantidae','Requieren grandes cantidades de agua y vegetación.','Asegurarse de que tengan suficiente espacio para moverse.','Los elefantes africanos son los animales terrestres más grandes del planeta.');

UNLOCK TABLES;
