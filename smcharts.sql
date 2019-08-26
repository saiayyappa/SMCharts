-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema testdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema testdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `testdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `testdb` ;

-- -----------------------------------------------------
-- Table `testdb`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testdb`.`company` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `board_of_director` VARCHAR(255) NULL DEFAULT NULL,
  `brief` VARCHAR(255) NULL DEFAULT NULL,
  `ceo` VARCHAR(255) NULL DEFAULT NULL,
  `company_name` VARCHAR(255) NULL DEFAULT NULL,
  `sector` VARCHAR(255) NULL DEFAULT NULL,
  `stock_exchange` VARCHAR(255) NULL DEFAULT NULL,
  `turnover` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `testdb`.`ipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testdb`.`ipo` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `company_name` VARCHAR(255) NULL DEFAULT NULL,
  `open_date_time` VARCHAR(255) NULL DEFAULT NULL,
  `price_per_pay` VARCHAR(255) NULL DEFAULT NULL,
  `remarks` VARCHAR(255) NULL DEFAULT NULL,
  `stock_exchange_name` VARCHAR(255) NULL DEFAULT NULL,
  `total_number_of_shares` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `testdb`.`sector`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testdb`.`sector` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sector_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `testdb`.`stock_exchange`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testdb`.`stock_exchange` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `brief` VARCHAR(255) NULL DEFAULT NULL,
  `stock_exchange_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `testdb`.`stock_price`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testdb`.`stock_price` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `company_id` BIGINT(20) NULL DEFAULT NULL,
  `current_price` BIGINT(20) NULL DEFAULT NULL,
  `date` VARCHAR(255) NULL DEFAULT NULL,
  `stock_exchange_name` VARCHAR(255) NULL DEFAULT NULL,
  `time` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 101
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `testdb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testdb`.`user` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `mobile` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `user_type` VARCHAR(255) NULL DEFAULT NULL,
  `username` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
