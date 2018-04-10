CREATE TABLE IF NOT EXISTS `passports` (
  `passport_id` int(11) NOT NULL,
  `passport_number` varchar(50) NOT NULL,
  PRIMARY KEY (`passport_id`),
  UNIQUE KEY `passport_number` (`passport_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.
-- Dumping structure for table test.persons
CREATE TABLE IF NOT EXISTS `persons` (
  `person_id` int(11) NOT NULL,
  `salary` double NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `passport_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `person_passport` (`passport_id`),
  CONSTRAINT `person_passport` FOREIGN KEY (`passport_id`) REFERENCES `passports` (`passport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO passports VALUES(101,'N34FG21B'),(102,'K65LO4R7'),(103,'ZE657QP2');
INSERT INTO persons VALUES(1,'Roberto',43300,102),(2,'Tom',56100,103),(3,'Yana',60200,101);
