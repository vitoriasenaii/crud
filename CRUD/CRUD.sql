-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para catalogo_midia
CREATE DATABASE IF NOT EXISTS `catalogo_midia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `catalogo_midia`;

-- Copiando estrutura para tabela catalogo_midia.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(110) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `sexo` enum('Masculino','Feminino','Outro') NOT NULL,
  `data_nasc` date NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` char(45) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela catalogo_midia.usuarios: ~3 rows (aproximadamente)
INSERT IGNORE INTO `usuarios` (`id`, `nome`, `email`, `telefone`, `sexo`, `data_nasc`, `cidade`, `estado`, `endereco`, `senha`) VALUES
	(1, 'Alexandre', 'alexandre@gmail.com', '82567070', 'Masculino', '1982-02-01', 'BH', 'Minas', 'Justinopólis', '123'),
	(10, 'Jardel', 'Jardel@gmail.com', '40028922', 'Feminino', '2004-02-01', 'Belo Horizonte', 'MG', 'Cracolandia', '1234'),
	(11, 'Matheus', 'matheus@hotmail.com', '31998254712', 'Masculino', '2003-04-03', 'Belo Horizonte', 'Minas Gerais', 'Barreiro', '123');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
