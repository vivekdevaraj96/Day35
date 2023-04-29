-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema imdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema imdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `imdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `imdb` ;

-- -----------------------------------------------------
-- Table `imdb`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb`.`movies` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(45) NOT NULL,
  `poster` LONGBLOB NOT NULL,
  `Director` VARCHAR(255) NOT NULL,
  `Producer` VARCHAR(255) NOT NULL,
  `Music` VARCHAR(255) NOT NULL,
  `ReleaseYear` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `imdb`.`moviecast`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb`.`moviecast` (
  `CastId` INT NOT NULL AUTO_INCREMENT,
  `ActorName` VARCHAR(45) NOT NULL,
  `skills` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`CastId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdb`.`ReviewsAndRating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb`.`ReviewsAndRating` (
  `Rid` INT NOT NULL AUTO_INCREMENT,
  `Reviewer1` VARCHAR(45) NULL,
  `Reviewer2` VARCHAR(45) NULL,
  `Rating` INT NULL,
  PRIMARY KEY (`Rid`))
ENGINE = InnoDB
KEY_BLOCK_SIZE = 4;


-- -----------------------------------------------------
-- Table `imdb`.`movies_moviecast`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb`.`movies_moviecast` (
  `movies_id` INT NOT NULL,
  `moviecast_CastId` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `moviecast_CastId`),
  INDEX `fk_movies_has_moviecast_moviecast1_idx` (`moviecast_CastId` ASC) VISIBLE,
  INDEX `fk_movies_has_moviecast_movies_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_moviecast_movies`
    FOREIGN KEY (`movies_id`)
    REFERENCES `imdb`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_moviecast_moviecast1`
    FOREIGN KEY (`moviecast_CastId`)
    REFERENCES `imdb`.`moviecast` (`CastId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `imdb`.`movies_ReviewsAndRating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb`.`movies_ReviewsAndRating` (
  `movies_id` INT NOT NULL,
  `ReviewsAndRating_Rid` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `ReviewsAndRating_Rid`),
  INDEX `fk_movies_has_ReviewsAndRating_ReviewsAndRating1_idx` (`ReviewsAndRating_Rid` ASC) VISIBLE,
  INDEX `fk_movies_has_ReviewsAndRating_movies1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_ReviewsAndRating_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `imdb`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_ReviewsAndRating_ReviewsAndRating1`
    FOREIGN KEY (`ReviewsAndRating_Rid`)
    REFERENCES `imdb`.`ReviewsAndRating` (`Rid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
