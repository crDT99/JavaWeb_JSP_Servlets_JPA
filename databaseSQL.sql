-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema javaweb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema javaweb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `javaweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `javaweb` ;

-- -----------------------------------------------------
-- Table `javaweb`.`sequence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `javaweb`.`sequence` (
  `SEQ_NAME` VARCHAR(50) NOT NULL,
  `SEQ_COUNT` DECIMAL(38,0) NULL DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `javaweb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `javaweb`.`usuario` (
  `ID` INT NOT NULL,
  `APELLIDO` VARCHAR(255) NULL DEFAULT NULL,
  `DNI` VARCHAR(255) NULL DEFAULT NULL,
  `NOMBRE` VARCHAR(255) NULL DEFAULT NULL,
  `TELEFONO` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
