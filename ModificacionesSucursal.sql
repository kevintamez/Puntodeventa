-- MySQL Script generated by MySQL Workbench
-- 10/14/15 18:51:53
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema puntodeventa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema puntodeventa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `puntodeventa` DEFAULT CHARACTER SET utf8 ;
USE `puntodeventa` ;

-- -----------------------------------------------------
-- Table `puntodeventa`.`departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`departamento` (
  `idDepartamento` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `nombreDepartamento` VARCHAR(30) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`idDepartamento`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`empresa` (
  `idEmpresa` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `nombreEmpresa` VARCHAR(25) NULL DEFAULT NULL COMMENT '',
  `logoEmpresa` MEDIUMBLOB NULL DEFAULT NULL COMMENT '',
  `imagenEmpresa1` MEDIUMBLOB NULL DEFAULT NULL COMMENT '',
  `sloganEmpresa` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`idEmpresa`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`pais` (
  `idPais` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `nombrePais` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`idPais`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`estado` (
  `idEstado` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `nombreEstado` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `idPais` INT(10) UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`idEstado`)  COMMENT '',
  INDEX `idPais` (`idPais` ASC)  COMMENT '',
  CONSTRAINT `estado_ibfk_1`
    FOREIGN KEY (`idPais`)
    REFERENCES `puntodeventa`.`pais` (`idPais`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`producto` (
  `idProducto` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `nombreProducto` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `descripcionLarga` TEXT NULL DEFAULT NULL COMMENT '',
  `descripcionCorta` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `precio` DOUBLE NULL DEFAULT NULL COMMENT '',
  `imagenProducto` MEDIUMBLOB NULL DEFAULT NULL COMMENT '',
  `Departamento_id` INT(10) UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`idProducto`)  COMMENT '',
  INDEX `Departamento_id` (`Departamento_id` ASC)  COMMENT '',
  CONSTRAINT `producto_ibfk_1`
    FOREIGN KEY (`Departamento_id`)
    REFERENCES `puntodeventa`.`departamento` (`idDepartamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`municipio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`municipio` (
  `idMunicipio` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `nombreMunicipio` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `idEstado` INT(10) UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`idMunicipio`)  COMMENT '',
  INDEX `idEstado` (`idEstado` ASC)  COMMENT '',
  CONSTRAINT `municipio_ibfk_1`
    FOREIGN KEY (`idEstado`)
    REFERENCES `puntodeventa`.`estado` (`idEstado`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`sucursal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`sucursal` (
  `idSucursal` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `nombreSucursal` VARCHAR(25) NULL DEFAULT NULL COMMENT '',
  `calleSucursal` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `numeroSucursal` INT(11) NULL DEFAULT NULL COMMENT '',
  `idEmpresa` INT(10) UNSIGNED NOT NULL COMMENT '',
  `numeroExtSucursal` INT(11) NULL DEFAULT NULL COMMENT '',
  `codigoPostalSucursal` INT(11) NULL DEFAULT NULL COMMENT '',
  `coloniaSucursal` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `idMunicipio` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`idSucursal`)  COMMENT '',
  INDEX `idEmpresa` (`idEmpresa` ASC)  COMMENT '',
  INDEX `idMunicipio` (`idMunicipio` ASC)  COMMENT '',
  CONSTRAINT `sucursal_ibfk_1`
    FOREIGN KEY (`idEmpresa`)
    REFERENCES `puntodeventa`.`empresa` (`idEmpresa`),
  CONSTRAINT `sucursal_ibfk_2`
    FOREIGN KEY (`idMunicipio`)
    REFERENCES `puntodeventa`.`municipio` (`idMunicipio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`inventario` (
  `idInventario` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `idProducto` INT(10) UNSIGNED NOT NULL COMMENT '',
  `idSucursal` INT(10) UNSIGNED NOT NULL COMMENT '',
  `existencia` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`idInventario`)  COMMENT '',
  INDEX `idProducto` (`idProducto` ASC)  COMMENT '',
  INDEX `idSucursal` (`idSucursal` ASC)  COMMENT '',
  CONSTRAINT `inventario_ibfk_1`
    FOREIGN KEY (`idProducto`)
    REFERENCES `puntodeventa`.`producto` (`idProducto`),
  CONSTRAINT `inventario_ibfk_2`
    FOREIGN KEY (`idSucursal`)
    REFERENCES `puntodeventa`.`sucursal` (`idSucursal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`usuario` (
  `idUsuario` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `nombreUsuario` VARCHAR(25) NULL DEFAULT NULL COMMENT '',
  `email` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `contraseña` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `apellidoMaternoUsuario` VARCHAR(25) NULL DEFAULT NULL COMMENT '',
  `apellidoPaternoUsuario` VARCHAR(25) NULL DEFAULT NULL COMMENT '',
  `tipoUsuario` ENUM('Manager','Cajero') NULL DEFAULT NULL COMMENT '',
  `CURP` VARCHAR(18) NULL DEFAULT NULL COMMENT '',
  `RFC` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `nivelDeEstudios` ENUM('Universidad','Preparatoria','Secundaria','Primaria') NULL DEFAULT NULL COMMENT '',
  `idMunicipio` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '',
  `colonia` VARCHAR(25) NULL DEFAULT NULL COMMENT '',
  `codigoPostal` INT(11) NULL DEFAULT NULL COMMENT '',
  `calle` VARCHAR(10) NULL DEFAULT NULL COMMENT '',
  `numero` INT(11) NULL DEFAULT NULL COMMENT '',
  `fechaNacimiento` DATE NULL DEFAULT NULL COMMENT '',
  `fotoUsuario` MEDIUMBLOB NULL DEFAULT NULL COMMENT '',
  `idSucursal` INT(10) UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`idUsuario`)  COMMENT '',
  INDEX `idSucursal` (`idSucursal` ASC)  COMMENT '',
  INDEX `idMunicipio` (`idMunicipio` ASC)  COMMENT '',
  CONSTRAINT `usuario_ibfk_2`
    FOREIGN KEY (`idSucursal`)
    REFERENCES `puntodeventa`.`sucursal` (`idSucursal`),
  CONSTRAINT `usuario_ibfk_3`
    FOREIGN KEY (`idMunicipio`)
    REFERENCES `puntodeventa`.`municipio` (`idMunicipio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`venta` (
  `folio` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `Usuario_id` INT(10) UNSIGNED NOT NULL COMMENT '',
  `Producto_id` INT(10) UNSIGNED NOT NULL COMMENT '',
  `fechaCompra` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '',
  `totalVenta` DOUBLE NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`folio`)  COMMENT '',
  INDEX `Usuario_id` (`Usuario_id` ASC)  COMMENT '',
  CONSTRAINT `venta_ibfk_1`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `puntodeventa`.`usuario` (`idUsuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`ventadetalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`ventadetalle` (
  `idVentaDetalle` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `venta` INT(10) UNSIGNED NOT NULL COMMENT '',
  `idProducto` INT(10) UNSIGNED NOT NULL COMMENT '',
  PRIMARY KEY (`idVentaDetalle`)  COMMENT '',
  INDEX `idProducto` (`idProducto` ASC)  COMMENT '',
  INDEX `venta` (`venta` ASC)  COMMENT '',
  CONSTRAINT `ventadetalle_ibfk_1`
    FOREIGN KEY (`idProducto`)
    REFERENCES `puntodeventa`.`producto` (`idProducto`),
  CONSTRAINT `ventadetalle_ibfk_2`
    FOREIGN KEY (`venta`)
    REFERENCES `puntodeventa`.`venta` (`folio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `puntodeventa`.`videos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puntodeventa`.`videos` (
  `idVideo` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '',
  `video` LONGBLOB NULL DEFAULT NULL COMMENT '',
  `nombreVideo` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `duraciónVideo` TIME NULL DEFAULT NULL COMMENT '',
  `inicioPlay` DATETIME NULL DEFAULT NULL COMMENT '',
  `finPlay` DATETIME NULL DEFAULT NULL COMMENT '',
  `imagenVideo` TINYBLOB NULL DEFAULT NULL COMMENT '',
  `idUsuario` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`idVideo`)  COMMENT '',
  INDEX `idUsuario` (`idUsuario` ASC)  COMMENT '',
  CONSTRAINT `videos_ibfk_1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `puntodeventa`.`usuario` (`idUsuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;