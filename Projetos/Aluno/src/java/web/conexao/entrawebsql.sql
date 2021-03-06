-- MySQL Script generated by MySQL Workbench
-- 09/03/18 10:36:00
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pessoa` (
  `id_pessoa` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `tipo` TINYINT NOT NULL,
  `login` VARCHAR(20) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `ativo` TINYINT(1) NULL,
  `cpf` VARCHAR(45) NOT NULL,
  `rg` VARCHAR(45) NOT NULL,
  `nome_pai` VARCHAR(45) NOT NULL,
  `nome_mae` VARCHAR(45) NOT NULL,
  `cidade_nascimento` VARCHAR(45) NOT NULL,
  `estado_nascimento` VARCHAR(45) NOT NULL,
  `nacionalidade` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `complemento` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `celular` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pessoa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`aluno` (
  `id_matricula` INT UNSIGNED NOT NULL,
  `pessoa_id_pessoa` INT UNSIGNED NOT NULL,
  `grau_escolariedade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pessoa_id_pessoa`, `id_matricula`),
  CONSTRAINT `fk_aluno_pessoa1`
    FOREIGN KEY (`pessoa_id_pessoa`)
    REFERENCES `mydb`.`pessoa` (`id_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`professor` (
  `id_pessoa` INT NULL,
  `pessoa_id_pessoa` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`pessoa_id_pessoa`),
  CONSTRAINT `fk_professor_pessoa1`
    FOREIGN KEY (`pessoa_id_pessoa`)
    REFERENCES `mydb`.`pessoa` (`id_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`instituicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`instituicao` (
  `id_instituicao` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cidade` VARCHAR(50) NOT NULL,
  `bairro` VARCHAR(50) NOT NULL,
  `estado` CHAR(2) NOT NULL,
  PRIMARY KEY (`id_instituicao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`turma` (
  `id_turma` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_inicio` DATE NOT NULL,
  `data_final` DATE NOT NULL,
  `carga_horaria` SMALLINT(4) NOT NULL,
  `pessoa_id_pessoa` INT UNSIGNED NOT NULL,
  `professor_pessoa_id_pessoa` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_turma`, `pessoa_id_pessoa`, `professor_pessoa_id_pessoa`),
  INDEX `fk_turma_pessoa1_idx` (`pessoa_id_pessoa` ASC),
  INDEX `fk_turma_professor1_idx` (`professor_pessoa_id_pessoa` ASC),
  CONSTRAINT `fk_turma_pessoa1`
    FOREIGN KEY (`pessoa_id_pessoa`)
    REFERENCES `mydb`.`pessoa` (`id_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_turma_professor1`
    FOREIGN KEY (`professor_pessoa_id_pessoa`)
    REFERENCES `mydb`.`professor` (`pessoa_id_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`matricula` (
  `id_matricula` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_matricula` DATE NOT NULL,
  `instituicao_id_instituicao` INT NOT NULL,
  `turma_id_turma` INT UNSIGNED NOT NULL,
  `aluno_pessoa_id_pessoa` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_matricula`, `instituicao_id_instituicao`, `turma_id_turma`, `aluno_pessoa_id_pessoa`),
  INDEX `fk_matricula_instituicao_idx` (`instituicao_id_instituicao` ASC),
  INDEX `fk_matricula_turma1_idx` (`turma_id_turma` ASC),
  INDEX `fk_matricula_aluno1_idx` (`aluno_pessoa_id_pessoa` ASC),
  CONSTRAINT `fk_matricula_instituicao`
    FOREIGN KEY (`instituicao_id_instituicao`)
    REFERENCES `mydb`.`instituicao` (`id_instituicao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_matricula_turma1`
    FOREIGN KEY (`turma_id_turma`)
    REFERENCES `mydb`.`turma` (`id_turma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_matricula_aluno1`
    FOREIGN KEY (`aluno_pessoa_id_pessoa`)
    REFERENCES `mydb`.`aluno` (`pessoa_id_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`admin` (
  `id_admin` INT NOT NULL AUTO_INCREMENT,
  `pessoa_id_pessoa` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_admin`, `pessoa_id_pessoa`),
  INDEX `fk_admin_pessoa1_idx` (`pessoa_id_pessoa` ASC),
  CONSTRAINT `fk_admin_pessoa1`
    FOREIGN KEY (`pessoa_id_pessoa`)
    REFERENCES `mydb`.`pessoa` (`id_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`pessoa`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;


COMMIT;

