-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema MMD_facsenac
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `MMD_facsenac` ;

-- -----------------------------------------------------
-- Schema MMD_facsenac
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `MMD_facsenac` DEFAULT CHARACTER SET utf8 ;
USE `MMD_facsenac` ;
CREATE DATABASE `staging_facsenac` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

-- -----------------------------------------------------
-- Table `MMD_facsenac`.`DimTempo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MMD_facsenac`.`DimTempo` (
        idDimtempo         INTEGER PRIMARY KEY,  -- year*10000+month*100+day
        data                DATE NOT NULL,
        ano                 INTEGER NOT NULL,
        mes                 INTEGER NOT NULL, -- 1 to 12
        dia                 INTEGER NOT NULL, -- 1 to 31
        bimestre            INTEGER NOT NULL, -- 1 to 4
        semestre            INTEGER NOT NULL, -- 1 to 4
        NomeDia             VARCHAR(9) NOT NULL, -- 'Monday', 'Tuesday'...
        NomeMes             VARCHAR(9) NOT NULL, -- 'January', 'February'...
        FinaldeSemana       CHAR(1) DEFAULT 'F' CHECK (finaldesemana in ('T', 'F'))
) Engine=InnoDB;
-- -----------------------------------------------------
-- Table `MMD_facsenac`.`DimCondicaoEconomica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MMD_facsenac`.`DimCondicaoEconomica` (
  `idDimCondicaoEconomica` INT NOT NULL AUTO_INCREMENT,
  `DeCondicaoEconomica` VARCHAR(45) NULL,
  PRIMARY KEY (`idDimCondicaoEconomica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMD_facsenac`.`DimRaca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MMD_facsenac`.`DimRaca` (
  `idDimRaca` INT NOT NULL AUTO_INCREMENT,
  `DeRaca` VARCHAR(45) NULL,
  PRIMARY KEY (`idDimRaca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMD_facsenac`.`DimSexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MMD_facsenac`.`DimSexo` (
  `idDimSexo` INT NOT NULL AUTO_INCREMENT,
  `DeSexo` VARCHAR(45) NULL,
  PRIMARY KEY (`idDimSexo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMD_facsenac`.`DimCurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MMD_facsenac`.`DimCurso` (
  `idDimCurso` INT NOT NULL AUTO_INCREMENT,
  `DeCurso` VARCHAR(45) NULL,
  PRIMARY KEY (`idDimCurso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMD_facsenac`.`DimTurno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MMD_facsenac`.`DimTurno` (
  `idDimTurno` INT NOT NULL AUTO_INCREMENT,
  `DeTurno` VARCHAR(45) NULL,
  PRIMARY KEY (`idDimTurno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MMD_facsenac`.`FatoMatricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MMD_facsenac`.`FatoMatricula` (
  `idDimTempo` INT NOT NULL,
  `idDimSexo` INT NOT NULL,
  `idDimCurso` INT NOT NULL,
  `idDimRaca` INT NOT NULL,
  `idDimTurno` INT NOT NULL,
  `idDimCondicaoEconomica` INT NOT NULL,
  `Quantidade` INT NULL,
  PRIMARY KEY (`idDimTempo`, `idDimSexo`, `idDimCurso`, `idDimRaca`, `idDimTurno`, `idDimCondicaoEconomica`),
  INDEX `fk_FatoMatricula_DimSexo1_idx` (`idDimSexo` ASC) VISIBLE,
  INDEX `fk_FatoMatricula_DimCurso1_idx` (`idDimCurso` ASC) VISIBLE,
  INDEX `fk_FatoMatricula_DimRaca1_idx` (`idDimRaca` ASC) VISIBLE,
  INDEX `fk_FatoMatricula_DimTurno1_idx` (`idDimTurno` ASC) VISIBLE,
  INDEX `fk_FatoMatricula_DimCondicaoEconomica1_idx` (`idDimCondicaoEconomica` ASC) VISIBLE,
  CONSTRAINT `fk_FatoMatricula_DimTempo`
    FOREIGN KEY (`idDimTempo`)
    REFERENCES `MMD_facsenac`.`DimTempo` (`idDimTempo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoMatricula_DimSexo1`
    FOREIGN KEY (`idDimSexo`)
    REFERENCES `MMD_facsenac`.`DimSexo` (`idDimSexo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoMatricula_DimCurso1`
    FOREIGN KEY (`idDimCurso`)
    REFERENCES `MMD_facsenac`.`DimCurso` (`idDimCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoMatricula_DimRaca1`
    FOREIGN KEY (`idDimRaca`)
    REFERENCES `MMD_facsenac`.`DimRaca` (`idDimRaca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoMatricula_DimTurno1`
    FOREIGN KEY (`idDimTurno`)
    REFERENCES `MMD_facsenac`.`DimTurno` (`idDimTurno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FatoMatricula_DimCondicaoEconomica1`
    FOREIGN KEY (`idDimCondicaoEconomica`)
    REFERENCES `MMD_facsenac`.`DimCondicaoEconomica` (`idDimCondicaoEconomica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
