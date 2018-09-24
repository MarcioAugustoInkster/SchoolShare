CREATE DATABASE  IF NOT EXISTS `schoolshare` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `schoolshare`;
-- MySQL dump 10.13  Distrib 5.5.24, for Win64 (x86)
--
-- Host: 127.0.0.1    Database: schoolshare
-- ------------------------------------------------------
-- Server version	5.5.24

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_aluno_pessoa1_idx` (`pessoa_id`),
  CONSTRAINT `fk_aluno_pessoa1` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instituicao_id` int(11) NOT NULL,
  `curso` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_curso_Instituicao_idx` (`instituicao_id`),
  CONSTRAINT `fk_curso_Instituicao` FOREIGN KEY (`instituicao_id`) REFERENCES `instituicao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES 
(1,1,'Preparatório para certificação ITIL'),
(2,2,'Programação C#'),
(3,2,'Programação JAVA'),
(4,1,'Java Script e JQuery'),
(5,1,'Formação Linux'),
(6,2,'Lógica de Programação'),
(7,2,'Desenvolvimento de líderes'),
(8,1,'Preparatório ITIL V3'),
(9,1,'Facebook e Instagram para Negócios'),
(10,2,'Teste de Software - Fundamentos e Prática'),
(11,2,'Língua Portuguesa em Comunicação Empresarial'),
(12,1,'Curso Técnico Subsequente em Informática para a Internet'),
(13,1,'Cursos de Informática Básica'),
(14,2,'Curso: Administração de Cargos e Salários'),
(15,2,'Curso de Oratória - Blusoft'),
(16,1,'MATEMÁTICA FINANCEIRA COM APLICAÇÃO NA HP12C E EXEL'),
(17,1,'ASSISTENTE ADMINISTRATIVO E FINANCEIRO'),
(18,1,'CONTABILIDADE COMO INSTRUMENTO DE DECISÃO PARA NÃO CONTADORES - 21H'),
(19,2,'ESTOQUES - 15H'),
(20,1,'SUBSTITUIÇÃO TRIBUTÁRIA - ICMS - 24h'),
(21,2,'Gerenciamento de Projetos com MS Project'),
(22,2,'Formação Web Design e Develop'),
(23,2,'Curso de eletrônica Layout de Placas'),
(24,2,'Curso Eletrônica Arduino Básico'),
(25,1,'PCP - CONCEITOS GERAIS DE PROGRAMAÇÃO E CONTROLE DA PRODUÇÃO - 12H'),
(26,2,'PRÁTICAS NA APURAÇÃO DE CUSTOS INDUSTRIAIS');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequencia`
--

DROP TABLE IF EXISTS `frequencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frequencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aluno_id` int(11) NOT NULL,
  `turma_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `falta` tinyint(1) NOT NULL,
  `data_frequencia` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_frequencia_aluno1_idx` (`aluno_id`),
  KEY `fk_frequencia_turma1_idx` (`turma_id`),
  KEY `fk_frequencia_curso1_idx` (`curso_id`),
  CONSTRAINT `fk_frequencia_aluno1` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_frequencia_turma1` FOREIGN KEY (`turma_id`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_frequencia_curso1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequencia`
--

LOCK TABLES `frequencia` WRITE;
/*!40000 ALTER TABLE `frequencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `frequencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicao`
--

DROP TABLE IF EXISTS `instituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituicao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instituicao` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicao`
--

LOCK TABLES `instituicao` WRITE;
/*!40000 ALTER TABLE `instituicao` DISABLE KEYS */;
INSERT INTO `instituicao` VALUES 
(1,'Proway Informática','7 de Setembro','1231','Centro','Blumenau','SC'),
(2,'CEDUP Hermann Hering','Benjamin Constant','857','Escola Agricola','Blumenau','SC');
/*!40000 ALTER TABLE `instituicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aluno_id` int(11) NOT NULL,
  `turma_id` int(11) NOT NULL,
  `data_matricula` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_matricula_aluno1_idx` (`aluno_id`),
  KEY `fk_matricula_turma1_idx` (`turma_id`),
  CONSTRAINT `fk_matricula_aluno1` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_matricula_turma1` FOREIGN KEY (`turma_id`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aluno_id` int(11) NOT NULL,
  `turma_id` int(11) NOT NULL,
  `nota_1` float DEFAULT NULL,
  `nota_2` float DEFAULT NULL,
  `nota_3` float DEFAULT NULL,
  `nota_4` float DEFAULT NULL,
  `data_nota` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_avaliacao_aluno1_idx` (`aluno_id`),
  KEY `fk_avaliacao_turma1_idx` (`turma_id`),
  CONSTRAINT `fk_avaliacao_aluno1` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_turma1` FOREIGN KEY (`turma_id`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `sexo` char(1) NOT NULL,
  `data_nascimento` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES 
(1,'Admin','-','-','01-08-2018','admin@email.com','-','admin','C7AD44CBAD762A5DA0A452F9E854FDC1E0E7A52A38015F23F3EAB1D80B931DD472634DFAC71CD34EBC35D16AB7FB8A90C81F975113D6C7538DC69DD8DE9077EC',1,1),
(2,'Francisco','Lucas Sens','M','1992-01-01','francisgod@email.com','(12) 2343-4345','fransgod','77009CBB5AA5B2ACB40FC7FBBC6766B6B0C02B65475A79DD73E05F754C48B086FF8D067095B1C8446AEC6418D6E562567418AFB37D9681F1F1D50E2972E12F5F',2,1),
(3,'João','de Silva Sauro','M','1992-01-01','joaosauro','(20) 9219-8221','joao','0CC357EC192AD6A4432707492649CED1485EA760EBFBCB31674D1753F2C914AA9D9609AEF9130856C93485628B510DBF37804443023A11DA438E58411465A537',3,1),
(4,'Claudia','Maceda','F','1992-03-18','claudiamaceda@email.com','(47) 2389-2389','claudia','CF2F4080AC572653AC7C239DE012C7C135E3849653D0E77BC8B149CAC2FB6512BE4CF3D80DDD722A3812A00B1E6159AE2332BF07EDF83C5AA5C0EEB9E2BF1E60',3,1),
(5,'Bruno','Silva Armando','M','1989-07-23','brunoarmando@email.com','(47) 2983-2398','bruno','11E8246F3BC1CB9292F1BB2873645280F6B44C8A579FDC1585135F8BA762CE767AC4A15C9A0D0B9104AFCA8E69250FD7CB8C6A6D0ACDBAC891837F9D87ACDFD0',3,1),
(6,'Vanessa','Elzina','F','1992-12-12','vanessaelzina@email.com','(47) 3832-4902','vanessa','6E5A03A88D9CAFC94539B25A352560073476FB2731E0B0B02409AC7D49EBDCBEB36D32991480DE7EEDF56C66CF358B9360361EDE08E95BB9D715835A205BBFB2',3,1),
(7,'Clóvis','Pedro Souza','M','1991-04-16','clovissouza@email.com','(47) 3483-3093','clovis','904D92C0DAEAE6CD5DF409D3E0AD01230C8E1157AAAD15B8625F773DAFC9920091784B34C4EB353A92A2E53607B0A6BD699E51993EB8CF478C2E65E7F51773F9',2,1),
(8,'Guilherme','Fonseca','M','1990-05-06','ghifonsa@email.com','(47) 2183-3873','guilherme','683CD4656571CA9A619E7B51CB8BE1BA6C3412012AEDE21C9C45468B1D2AB52ECDA7FC27F323DD0EB10071367FAFA1E0D7D2202CF7081AF32B3CBBD1C33D691C',3,1),
(9,'Pedro','Luiz Hajima','M','1994-09-11','pedrohajima@email.com','(47) 3843-2093','pedro','4E5E355D481EF1426C8960EBC275B7B0D6C508C7F777C7688972C6A9BA084B6A309BBBC1DF366329FE82BF1310DD6FAA48A41E1A931751F8D86F3BFC16BABE70',3,1),
(10,'Thiago','Franz Reinaldo','M','1991-03-21','thiagorenaldo@email.com','(47) 3093-0923','thiago','C02ADE2BB91BDF3B3FBCCA08967420BB5421486C30166EEA552B96C6E9E4B926A83AA690DE717D0865BE6A963DD6473E01F5C4967D0F553FC421042B8D57FB5C',3,1),
(11,'Marcos','Uzuri de Melo','M','1989-02-19','marcosmelo@email.com','(47) 1092-2387','marcos','36A9B317289E4C6540E4207B7A138697C55ECDB1C0318A9389335AC09A422193F8B30B0A6F4EA730BA74926DD055280C9A7004C4A0D506AA195591E52EAE4A2F',3,1),
(12,'Patrício','Palma Costa','M','1993-09-01','patriciocosta@email.com','(47) 3209-2398','patricio','ECB2FD57D5D6FEF7B10B7B5B95FDB0496788B588A1ADBEDB9C750F6E8DA1C296834630295A631735477860DA6889C71A2F5E0021C364D46A0567779B38E4744B',3,1),
(13,'Janaina','Lara Mariz','F','1992-11-25','janamariz@email.com','(47) 4309-2983','janaina','1AA02D7ACF7BDE64A03CB9A449E92DB7BFC29823B2837CF3F97C3D9AC09FE6E31D5F822F402FC9635BB9DBEB8EB30CBEA92322E67FC916DCE1D18C547DD7C507',2,1),
(14,'Rafael','Aluizio Rocha','M','1991-08-17','rafaelrocha@email.com','(47) 3209-2398','rafael','C5663337DF01FE3AB80478E78963534956A7E5446D72B16DB9F33A36C787954414FEA6DE37A02D5F32AC2FE18F010068688D707E6DD260CA1F0A255F6D2F1959',3,1),
(15,'Silvana','Gisa Matos','F','1992-07-03','silvanamatos@email.com','(47) 2309-2398','silvana','C8A18A22D17AC22A443567B226A414B1E3FC10C239DBE495CB601FCC3A11574B032D8650C084D4CCA103B461C1ADC76E95087B8D41D0BF098AB0770A4E892312',3,1),
(16,'Claudemir','Matheus Russo','M','1992-08-13','clademirrusso@email.com','(47) 2309-2398','claudemir','91AA914FBD3FE6F57511AD51FEFB2E9C021615B26D23392EC766B776EBEE26DA10A9FE8BAFD63CA30BE2F69E0672C6044BF78442659679D043104A5354C411CC',3,1),
(17,'Diego','da Costa Melo','M','1991-12-21','diegomelo@email.com','(47) 2309-2398','diego','D6D3370465FCF929E8FA1C832020D879A781EDF2863F409F36F8BA7EDB6D849B7388C5339C257A16E23637C60194C841600119213BCB95AC8AC4B70612C89B73',3,1),
(18,'Fernanda','de Alagoas','F','1993-03-28','fermamdaalagoas@email.com','(47) 3209-3498','fernanda','50F7E79988A894DD83F61370AFBF3882A80AB4215F0BE088FD1197B43ABB24641D2711D0ADA4CDF71C29718D549A9F90F82B2A0C9E1CD4ADF28C0EB79816D862',3,1),
(19,'Gabriel','Ribeiro Souza','M','1992-06-09','gabrielsouza@email.com','(47) 4309-4398','gabriel','5DBE7D079067809BB06F7C80DE78ECB9D914F5735265148CD704F85353FC0B5114EBBFC960539CD3F430E7B12EB3FDC261726BB756BAB9658C6DB6A302913DF1',2,1),
(20,'Rafaela','Souza Dalanna','F','1991-10-14','rafadalanna@email.com','(47) 4398-3984','rafaela','4E2EDDDBCD873DD39F744A5C646D42BD47C961D7A9C97C1FF23E85D0D39EC86BB147C32217EBFAFFDF6968F55917C5385CBA205B0216AE5CAA1965AAEC9A34B2',3,1);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pessoa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_professor_pessoa1_idx` (`pessoa_id`),
  CONSTRAINT `fk_professor_pessoa1` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `professor_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `turma` varchar(100) NOT NULL,
  `data_inicio` varchar(10) NOT NULL,
  `data_final` varchar(10) NOT NULL,
  `carga_horaria` smallint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_turma_professor1_idx` (`professor_id`),
  KEY `fk_turma_curso1_idx` (`curso_id`),
  CONSTRAINT `fk_turma_professor1` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_turma_curso1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-23 20:57:08
