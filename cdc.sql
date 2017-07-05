-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: casadocodigo
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `livro` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `preco_ebook` varchar(255) DEFAULT NULL,
  `preco_livro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES ('Node.js','Bernardo Lima','44,50','84,81'),('Scratch','Giovanna Pereira','19,80','74,88'),('Haskell','Bernardo Nascimento','34,10','95,92'),('Metricas Ageis','Vitor Almeida','32,12','94,48'),('Angular 2','Walewska Souza','49,57','92,95'),('Vue.js','Clara Fernandes','35,83','88,29'),('Elixir','Eduardo Lima','34,0','56,11'),('PostgreSQL','Guilherme Gomes','42,28','87,73'),('Algoritmos','Isabelly Santos','41,71','54,13'),('Big Data','Eduardo Nascimento','10,94','59,34'),('Scala','Melissa Rocha','26,78','62,93'),('Amazon AWS','Rafaela Rodrigues','10,95','94,69'),('CSS','Joao Araujo','44,63','52,31'),('Arduino','Pietro Souza','12,35','59,84'),('SASS','Leticia Costa','35,5','94,4'),('Android','Isabelly Martins','25,90','67,33'),('IOS','Giovanna Lima','10,55','54,92'),('Windows Server 2012','Pedro Ribeiro','13,12','57,21'),('NoSQL','Miguel Lima','13,35','77,25'),('ASP.NET','Pietro Pereira','19,69','66,44'),('Elasticsearch','Alice Rocha','39,3','54,7'),('Cordova e PhoneGap','Heitor Costa','23,66','75,60'),('Jenkins','Isaac Silva','31,59','90,73'),('Azure','Samuel Lima','36,37','54,61'),('Docker','Benjamin Almeida','48,90','91,30'),('Python','Guilherme Fernandes','32,4','90,80'),('MySQL','Leonardo Costa','34,88','60,20'),('PHP','Felipe Lima','21,30','85,87'),('Spring MVC','Heloisa Gomes','18,19','89,61'),('SEO','Yasmin Costa','37,71','71,78'),('APIs Java','Miguel Araujo','25,63','51,45'),('TDD PHP','Pedro Souza','47,28','83,25'),('TDD Java','Gabriel Nascimento','24,86','91,58'),('MongoDB','Guilherme Silva','11,21','54,21'),('SWift','Lorenzo Carvalho','34,58','97,38'),('Git','Enzo Almeida','31,79','99,48'),('UX Design','Giovanna Santos','19,90','63,16'),('Windows Phone','Pietro Pereira','15,29','83,67'),('Java 8','Manuela Martins','49,91','74,86'),('Linux','Nicolas Pereira','26,96','85,46'),('Photoshop','Rafaela Nascimento','42,87','58,7'),('JPA','Lara Santos','49,19','97,0'),('CDI','Daniel Ribeiro','40,6','52,93'),('REST','Luiza Rodrigues','45,28','67,26'),('JavaFX','Daniel Ribeiro','20,47','52,13'),('Scrum','Leticia Gomes','33,33','60,95'),('VRaptor','Isaac Pereira','33,3','80,23'),('JQuery','Gustavo Araujo','10,39','80,69'),('SOA','Leticia Ribeiro','40,17','88,26'),('Web Design responsivo','Leticia Araujo','24,92','92,65');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('Bernardo Lima','bernardo.lima@gmail.com','9917-3235','Vitoria'),('Giovanna Pereira','giovanna.pereira@gmail.com','9401-7769','Curitiba'),('Bernardo Nascimento','bernardo.nascimento@gmail.com','9082-9740','Porto Alegre'),('Vitor Almeida','vitor.almeida@gmail.com','9572-5488','Brasilia'),('Walewska Souza','walewska.souza@gmail.com','9967-8643','Salvador'),('Clara Fernandes','clara.fernandes@gmail.com','9771-4972','Vitoria'),('Eduardo Lima','eduardo.lima@gmail.com','9428-8234','Manaus'),('Guilherme Gomes','guilherme.gomes@gmail.com','9222-3433','Florianopolis'),('Isabelly Santos','isabelly.santos@gmail.com','9048-2548','Manaus'),('Eduardo Nascimento','eduardo.nascimento@gmail.com','9016-9901','Manaus'),('Melissa Rocha','melissa.rocha@gmail.com','9942-7411','Brasilia'),('Rafaela Rodrigues','rafaela.rodrigues@gmail.com','9822-5280','Brasilia'),('Joao Araujo','joao.araujo@gmail.com','9801-5426','Curitiba'),('Pietro Souza','pietro.souza@gmail.com','9298-6877','Sao Paulo'),('Leticia Costa','leticia.costa@gmail.com','9211-9568','Curitiba'),('Isabelly Martins','isabelly.martins@gmail.com','9424-3211','Porto Alegre'),('Giovanna Lima','giovanna.lima@gmail.com','9884-7877','Sao Paulo'),('Pedro Ribeiro','pedro.ribeiro@gmail.com','9819-5643','Rio de Janeiro'),('Miguel Lima','miguel.lima@gmail.com','9540-1650','Sao Paulo'),('Pietro Pereira','pietro.pereira@gmail.com','9585-9284','Porto Alegre'),('Alice Rocha','alice.rocha@gmail.com','9472-3898','Sao Paulo'),('Heitor Costa','heitor.costa@gmail.com','9417-2557','Manaus'),('Isaac Silva','isaac.silva@gmail.com','9223-7925','Vitoria'),('Samuel Lima','samuel.lima@gmail.com','9511-9400','Porto Alegre'),('Benjamin Almeida','benjamin.almeida@gmail.com','9798-8336','Florianopolis'),('Guilherme Fernandes','guilherme.fernandes@gmail.com','9176-2973','Vitoria'),('Leonardo Costa','leonardo.costa@gmail.com','9838-7235','Salvador'),('Felipe Lima','felipe.lima@gmail.com','9288-5315','Curitiba'),('Heloisa Gomes','heloisa.gomes@gmail.com','9410-3280','Vitoria'),('Yasmin Costa','yasmin.costa@gmail.com','9782-4360','Porto Alegre'),('Miguel Araujo','miguel.araujo@gmail.com','9713-9832','Vitoria'),('Pedro Souza','pedro.souza@gmail.com','9698-3787','Salvador'),('Gabriel Nascimento','gabriel.nascimento@gmail.com','9314-6768','Porto Alegre'),('Guilherme Silva','guilherme.silva@gmail.com','9639-5569','Florianopolis'),('Lorenzo Carvalho','lorenzo.carvalho@gmail.com','9218-2993','Vitoria'),('Enzo Almeida','enzo.almeida@gmail.com','9898-4568','Manaus'),('Giovanna Santos','giovanna.santos@gmail.com','9921-7211','Manaus'),('Pietro Pereira','pietro.pereira@gmail.com','9515-9259','Vitoria'),('Manuela Martins','manuela.martins@gmail.com','9229-1514','Manaus'),('Nicolas Pereira','nicolas.pereira@gmail.com','9632-3135','Salvador'),('Rafaela Nascimento','rafaela.nascimento@gmail.com','9517-1748','Sao Paulo'),('Lara Santos','lara.santos@gmail.com','9273-6425','Rio de Janeiro'),('Daniel Ribeiro','daniel.ribeiro@gmail.com','9639-6550','Salvador'),('Luiza Rodrigues','luiza.rodrigues@gmail.com','9328-5412','Porto Alegre'),('Daniel Ribeiro','daniel.ribeiro@gmail.com','9353-4692','Porto Alegre'),('Leticia Gomes','leticia.gomes@gmail.com','9943-8967','Porto Alegre'),('Isaac Pereira','isaac.pereira@gmail.com','9003-6882','Florianopolis'),('Gustavo Araujo','gustavo.araujo@gmail.com','9495-7673','Salvador'),('Leticia Ribeiro','leticia.ribeiro@gmail.com','9232-2454','Sao Paulo'),('Leticia Araujo','leticia.araujo@gmail.com','9253-1769','Rio de Janeiro'),('Yasmin Oliveira','yasmin.oliveira@gmail.com','9887-1209','Vitoria'),('Lorena Carvalho','lorena.carvalho@gmail.com','9569-4457','Vitoria'),('Walewska Pereira','walewska.pereira@gmail.com','9137-9121','Brasilia'),('Sophia Martins','sophia.martins@gmail.com','9968-6870','Curitiba'),('Enzo Lima','enzo.lima@gmail.com','9144-7929','Florianopolis'),('Bernardo Santos','bernardo.santos@gmail.com','9761-6691','Salvador'),('Miguel Rocha','miguel.rocha@gmail.com','9421-9140','Curitiba'),('Valentina Carvalho','valentina.carvalho@gmail.com','9125-9608','Manaus'),('Matheus Silva','matheus.silva@gmail.com','9406-4821','Curitiba'),('Samuel Almeida','samuel.almeida@gmail.com','9483-2448','Brasilia'),('Cecilia Silva','cecilia.silva@gmail.com','9836-3662','Rio de Janeiro'),('Gustavo Oliveira','gustavo.oliveira@gmail.com','9413-3723','Brasilia'),('Matheus Souza','matheus.souza@gmail.com','9784-5364','Vitoria'),('Pedro Carvalho','pedro.carvalho@gmail.com','9474-6607','Manaus'),('Arthur Nascimento','arthur.nascimento@gmail.com','9289-2677','Sao Paulo'),('Luiza Souza','luiza.souza@gmail.com','9325-7466','Porto Alegre'),('Isabelly Santos','isabelly.santos@gmail.com','9281-3479','Manaus'),('Theo Rodrigues','theo.rodrigues@gmail.com','9307-6832','Belo Horizonte'),('Samuel Santos','samuel.santos@gmail.com','9115-6045','Brasilia'),('Clara Costa','clara.costa@gmail.com','9484-4136','Salvador'),('Isabella Pereira','isabella.pereira@gmail.com','9727-8295','Curitiba'),('Nicolas Santos','nicolas.santos@gmail.com','9668-4814','Manaus'),('Lorena Costa','lorena.costa@gmail.com','9003-3587','Sao Paulo'),('Yasmin Costa','yasmin.costa@gmail.com','9210-7648','Porto Alegre'),('Pedro Santos','pedro.santos@gmail.com','9805-3399','Brasilia'),('Joao Araujo','joao.araujo@gmail.com','9507-6598','Rio de Janeiro'),('Vitor Oliveira','vitor.oliveira@gmail.com','9629-9170','Brasilia'),('Pedro Carvalho','pedro.carvalho@gmail.com','9936-5207','Florianopolis'),('Eriberto Almeida','eriberto.almeida@gmail.com','9377-4359','Sao Paulo'),('Luiza Pereira','luiza.pereira@gmail.com','9882-1705','Belo Horizonte'),('Samuel Silva','samuel.silva@gmail.com','9362-4952','Sao Paulo'),('Murilo Ribeiro','murilo.ribeiro@gmail.com','9781-4667','Rio de Janeiro'),('Laura Costa','laura.costa@gmail.com','9179-4638','Porto Alegre'),('Vitor Almeida','vitor.almeida@gmail.com','9930-1750','Sao Paulo'),('Ana Araujo','ana.araujo@gmail.com','9332-8008','Belo Horizonte'),('Ana Ribeiro','ana.ribeiro@gmail.com','9552-3888','Sao Paulo'),('Murilo Pereira','murilo.pereira@gmail.com','9096-6341','Brasilia'),('Sarah Pereira','sarah.pereira@gmail.com','9193-4452','Brasilia'),('Luiza Rocha','luiza.rocha@gmail.com','9827-2184','Curitiba'),('Nicole Martins','nicole.martins@gmail.com','9032-6678','Brasilia'),('Eduarda Gomes','eduarda.gomes@gmail.com','9006-1908','Belo Horizonte'),('Murilo Costa','murilo.costa@gmail.com','9231-6187','Curitiba'),('Lorena Ribeiro','lorena.ribeiro@gmail.com','9933-7488','Vitoria'),('Arthur Rocha','arthur.rocha@gmail.com','9128-2974','Florianopolis'),('Bernardo Lima','bernardo.lima@gmail.com','9059-1816','Curitiba'),('Walewska Almeida','walewska.almeida@gmail.com','9837-1167','Rio de Janeiro'),('Clara Martins','clara.martins@gmail.com','9906-3271','Vitoria'),('Isabella Pereira','isabella.pereira@gmail.com','9680-6169','Brasilia'),('Alice Martins','alice.martins@gmail.com','9546-2001','Belo Horizonte'),('Samuel Costa','samuel.costa@gmail.com','9497-7764','Brasilia');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-05  8:55:33
