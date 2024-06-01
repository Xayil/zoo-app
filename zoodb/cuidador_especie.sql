-- Table structure for table 'cuidador_especie'
--

DROP TABLE IF EXISTS 'cuidador_especie';

CREATE TABLE 'cuidador_especie' (
    'cuidador_dni' varchar(9) NOT NULL,
    'especie_id' int NOT NULL,
    'fecha_asignacion' date NOT NULL,
    PRIMARY KEY ('cuidador_dni','especie_id'),
    KEY 'especie_id' ('especie_id'),
    CONSTRAINT 'cuidador_especie_ibfk_1' FOREIGN KEY ('cuidador_dni') REFERENCES 'cuidador' ('dni').
    CONSTRAINT 'cuidador_especie_ibfk_2' FOREIGN KEY ('especie_id') REFERENCES 'especie' ('id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table 'cuidador_especie'

LOCK TABLES 'cuidador_especie' WRITE;

INSERT INTO 'cuidador_especie' VALUES '12345678A',1,'2020-01-01'),('12345678A',2,'2020-02-01'),('87654321B',1,'2020-03-01');

UNLOCK TABLES;