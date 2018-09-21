-- MySQL Script generated by MySQL Workbench
-- 09/21/18 10:32:39
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema schoolshare
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `schoolshare` ;
CREATE SCHEMA IF NOT EXISTS `schoolshare` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `schoolshare` ;

-- -----------------------------------------------------
-- Table `schoolshare`.`instituicao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`instituicao` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`instituicao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `instituicao` VARCHAR(100) NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `numero` VARCHAR(10) NOT NULL,
  `bairro` VARCHAR(50) NOT NULL,
  `cidade` VARCHAR(50) NOT NULL,
  `estado` CHAR(2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schoolshare`.`curso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`curso` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`curso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `instituicao_id` INT NOT NULL,
  `curso` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_curso_Instituicao_idx` (`instituicao_id` ASC),
  CONSTRAINT `fk_curso_Instituicao`
    FOREIGN KEY (`instituicao_id`)
    REFERENCES `schoolshare`.`instituicao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schoolshare`.`pessoa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`pessoa` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`pessoa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `sobrenome` VARCHAR(100) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `data_nascimento` VARCHAR(10) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `telefone` VARCHAR(14) NULL,
  `login` VARCHAR(20) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `tipo` TINYINT(1) NOT NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schoolshare`.`professor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`professor` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`professor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pessoa_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_professor_pessoa1_idx` (`pessoa_id` ASC),
  CONSTRAINT `fk_professor_pessoa1`
    FOREIGN KEY (`pessoa_id`)
    REFERENCES `schoolshare`.`pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schoolshare`.`turma`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`turma` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`turma` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `professor_id` INT NOT NULL,
  `curso_id` INT NOT NULL,
  `turma` VARCHAR(100) NOT NULL,
  `data_inicio` VARCHAR(10) NOT NULL,
  `data_final` VARCHAR(10) NOT NULL,
  `carga_horaria` SMALLINT(4) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_turma_professor1_idx` (`professor_id` ASC),
  INDEX `fk_turma_curso1_idx` (`curso_id` ASC),
  CONSTRAINT `fk_turma_professor1`
    FOREIGN KEY (`professor_id`)
    REFERENCES `schoolshare`.`professor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_turma_curso1`
    FOREIGN KEY (`curso_id`)
    REFERENCES `schoolshare`.`curso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schoolshare`.`aluno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`aluno` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`aluno` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pessoa_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_aluno_pessoa1_idx` (`pessoa_id` ASC),
  CONSTRAINT `fk_aluno_pessoa1`
    FOREIGN KEY (`pessoa_id`)
    REFERENCES `schoolshare`.`pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schoolshare`.`matricula`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`matricula` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`matricula` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `aluno_id` INT NOT NULL,
  `turma_id` INT NOT NULL,
  `data_matricula` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_matricula_aluno1_idx` (`aluno_id` ASC),
  INDEX `fk_matricula_turma1_idx` (`turma_id` ASC),
  CONSTRAINT `fk_matricula_aluno1`
    FOREIGN KEY (`aluno_id`)
    REFERENCES `schoolshare`.`aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_matricula_turma1`
    FOREIGN KEY (`turma_id`)
    REFERENCES `schoolshare`.`turma` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schoolshare`.`notas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`notas` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `aluno_id` INT NOT NULL,
  `turma_id` INT NOT NULL,
  `nota` FLOAT NULL,
  `data_nota` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_avaliacao_aluno1_idx` (`aluno_id` ASC),
  INDEX `fk_avaliacao_turma1_idx` (`turma_id` ASC),
  CONSTRAINT `fk_avaliacao_aluno1`
    FOREIGN KEY (`aluno_id`)
    REFERENCES `schoolshare`.`aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_turma1`
    FOREIGN KEY (`turma_id`)
    REFERENCES `schoolshare`.`turma` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `schoolshare`.`frequencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `schoolshare`.`frequencia` ;

CREATE TABLE IF NOT EXISTS `schoolshare`.`frequencia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `aluno_id` INT NOT NULL,
  `turma_id` INT NOT NULL,
  `curso_id` INT NOT NULL,
  `falta` TINYINT(1) NOT NULL,
  `data_frequencia` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_frequencia_aluno1_idx` (`aluno_id` ASC),
  INDEX `fk_frequencia_turma1_idx` (`turma_id` ASC),
  INDEX `fk_frequencia_curso1_idx` (`curso_id` ASC),
  CONSTRAINT `fk_frequencia_aluno1`
    FOREIGN KEY (`aluno_id`)
    REFERENCES `schoolshare`.`aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_frequencia_turma1`
    FOREIGN KEY (`turma_id`)
    REFERENCES `schoolshare`.`turma` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_frequencia_curso1`
    FOREIGN KEY (`curso_id`)
    REFERENCES `schoolshare`.`curso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `schoolshare`.`pessoa` (`id`, `nome`, `sobrenome`, `sexo`, `data_nascimento`, `email`, `telefone`, `login`, `senha`, `tipo`, `ativo`) VALUES 
('1', 'Admin', '-', '-', '01-08-2018', 'admin@email.com', '-', 'admin', 'C7AD44CBAD762A5DA0A452F9E854FDC1E0E7A52A38015F23F3EAB1D80B931DD472634DFAC71CD34EBC35D16AB7FB8A90C81F975113D6C7538DC69DD8DE9077EC', '1', '1'),
('2', 'Francisco', 'Sens', 'M', '01-01-1990', 'francisco@email.com', '(47)9876-5432', 'francisco', '4C195F107450360704F65104D77273D7EA447DA361218CEBA28F142BC38BC800ADB2F17ED92222E28BC560403E790B76474CA3B72D54DE8FC021AC94412B495F', '2', '1'),
('3', 'João', 'de Silva Sauro', 'M', '01-01-1990', 'joao@email.com', '(47)9876-5431', 'joao', '0CC357EC192AD6A4432707492649CED1485EA760EBFBCB31674D1753F2C914AA9D9609AEF9130856C93485628B510DBF37804443023A11DA438E58411465A537', '3', '1');

INSERT INTO `schoolshare`.`instituicao` (`id`, `instituicao`, `endereco`, `numero`, `bairro`, `cidade`, `estado`) VALUES 
('1', 'CEDUP Herman Hering', 'Benjamin Constant', '1231', 'Escola Agricola', 'Blumenau', 'SC'),
('2', 'Proway Informática', '7 de Setembro', '857', 'Centro', 'Blumenau', 'SC'),
('3', 'Blusoft', '2 de Setembro', '733', 'Itoupava Norte', 'Blumenau', 'SC');

INSERT INTO `schoolshare`.`curso` (`id`, `instituicao_id`, `curso`) VALUES 
('1', '1', 'Programação C#'),
('2', '3', 'Programação JAVA'),
('3', '2', 'Preparação para Certificação ITIL'),
('4', '1', 'Java Script e JQuery');

INSERT INTO `schoolshare`.`turma` (`id`, `professor_id`, `curso_id`, `turma`, `data_inicio`, `data_final`, `carga_horaria`) VALUES 
('1', '2', '3', 'ITIL-01', '01-03-2018', '01-10-2018', '200'),
('2', '2', '1', 'CS-01', '01-03-2018', '01-10-2018', '300');

INSERT INTO `schoolshare`.`matricula` (`id`, `aluno_id`, `turma_id`, `data_matricula`) VALUES 
('1', '3', '2', '01-04-2018');

INSERT INTO `schoolshare`.`notas` (`id`, `aluno_id`, `turma_id`, `nota`, `data_nota`) VALUES 
('1', '1', '2', '6.7', '01-04-2018'),
('2', '1', '2', '8.2', '03-05-2018'),
('3', '1', '2', '7.5', '05-04-2018'),
('4', '1', '2', '6.2', '01-04-2018');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
