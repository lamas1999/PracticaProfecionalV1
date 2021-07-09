-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_rus
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_rus
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_rus` ;
USE `bd_rus` ;

-- -----------------------------------------------------
-- Table `bd_rus`.`lic_vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`lic_vehiculo` (
  `id_lic_vehiculo` BIGINT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_lic_vehiculo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`pais` (
  `id_pais` BIGINT NOT NULL AUTO_INCREMENT,
  `pais` VARCHAR(45) NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`industria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`industria` (
  `id_industria` BIGINT NOT NULL AUTO_INCREMENT,
  `industria` VARCHAR(45) NULL,
  PRIMARY KEY (`id_industria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`empresa` (
  `id_empresa` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(150) NOT NULL,
  `nit` BIGINT NOT NULL,
  `direccion` VARCHAR(150) NOT NULL,
  `id_pais` BIGINT NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `e-mail` VARCHAR(150) NOT NULL,
  `cod_fundaempresa` BIGINT NOT NULL,
  `id_industria` BIGINT NOT NULL,
  `sitio-web` TEXT NULL,
  `descripcion` VARCHAR(3000) NULL,
  `logo` TEXT NULL,
  PRIMARY KEY (`id_empresa`),
  INDEX `fk_empresa_pais1_idx` (`id_pais` ASC) ,
  INDEX `fk_empresa_industria1_idx` (`id_industria` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`persona` (
  `id_persona` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(150) NOT NULL,
  `apellido` VARCHAR(150) NOT NULL,
  `e-mail` VARCHAR(150) NOT NULL,
  `direccion` VARCHAR(150) NULL,
  `telefono` VARCHAR(50) NULL,
  `documento` VARCHAR(50) NULL,
  `numero_documeto` VARCHAR(150) NOT NULL,
  `fecha_nacimineto` DATE NULL,
  `sexo` VARCHAR(50) NOT NULL,
  `estado_civil` VARCHAR(50) NULL,
  `id_lic_vehiculo` BIGINT NULL,
  `lic_moto` VARCHAR(50) NULL,
  `id_empresa` BIGINT NULL,
  PRIMARY KEY (`id_persona`),
  INDEX `fk_persona_lic_vehiculo1_idx` (`id_lic_vehiculo` ASC) ,
  INDEX `fk_persona_empresa1_idx` (`id_empresa` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`rol` (
  `id_rol` BIGINT NOT NULL,
  `rol` VARCHAR(50) NULL,
  PRIMARY KEY (`id_rol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`estado_civil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`estado_civil` (
  `id_estado_civil` BIGINT NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(45) NULL,
  PRIMARY KEY (`id_estado_civil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`credencial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`credencial` (
  `id_persona` BIGINT NOT NULL,
  `usuario` VARCHAR(50) NULL,
  `contrasena` VARCHAR(250) NULL,
  `estado` VARCHAR(45) NULL,
  PRIMARY KEY (`id_persona`),
  INDEX `fk_credencial_persona1_idx` (`id_persona` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`idioma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`idioma` (
  `id_idioma` BIGINT NOT NULL AUTO_INCREMENT,
  `idioma` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_idioma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`persona_has_rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`persona_has_rol` (
  `id_persona` BIGINT NOT NULL,
  `d_rol` BIGINT NOT NULL,
  PRIMARY KEY (`id_persona`, `d_rol`),
  INDEX `fk_persona_has_rol_rol1_idx` (`d_rol` ASC) ,
  INDEX `fk_persona_has_rol_persona1_idx` (`id_persona` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`nivel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`nivel` (
  `id_nivel` BIGINT NOT NULL,
  `nivel` VARCHAR(50) NULL,
  PRIMARY KEY (`id_nivel`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`ciudad` (
  `id_ciudad` BIGINT NOT NULL AUTO_INCREMENT,
  `id_pais` BIGINT NOT NULL,
  `ciudad` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ciudad`),
  INDEX `fk_ciudad_pais1_idx` (`id_pais` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`persona_has_nacionalidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`persona_has_nacionalidad` (
  `id_persona` BIGINT NOT NULL,
  `id_pais` BIGINT NOT NULL,
  PRIMARY KEY (`id_persona`, `id_pais`),
  INDEX `fk_persona_has_pais_pais1_idx` (`id_pais` ASC) ,
  INDEX `fk_persona_has_pais_persona1_idx` (`id_persona` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`privacidad_cv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`privacidad_cv` (
  `id_privacidad_cv` BIGINT NOT NULL AUTO_INCREMENT,
  `privacidad` VARCHAR(45) NULL,
  PRIMARY KEY (`id_privacidad_cv`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`curriculun_vt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`curriculun_vt` (
  `id_curriculun_vt` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo_empleo` VARCHAR(50) NOT NULL,
  `id_persona` BIGINT NOT NULL,
  `resumen_personal` VARCHAR(3000) NULL,
  `id_privacidad_cv` BIGINT NOT NULL,
  `img` TEXT NULL,
  PRIMARY KEY (`id_curriculun_vt`),
  INDEX `fk_curriculun_vt_persona1_idx` (`id_persona` ASC) ,
  INDEX `fk_curriculun_vt_privacidad_cv1_idx` (`id_privacidad_cv` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`categoria` (
  `id_categoria` BIGINT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(60) NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`curriculun_vt_has_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`curriculun_vt_has_categoria` (
  `id_curriculun_vt` BIGINT NOT NULL,
  `id_categoria` BIGINT NOT NULL,
  PRIMARY KEY (`id_curriculun_vt`, `id_categoria`),
  INDEX `fk_curriculun_vt_has_categoria_categoria1_idx` (`id_categoria` ASC) ,
  INDEX `fk_curriculun_vt_has_categoria_curriculun_vt1_idx` (`id_curriculun_vt` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`nivel_estudio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`nivel_estudio` (
  `id_nivel_estudio` BIGINT NOT NULL,
  `estudio` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_nivel_estudio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`estado_academico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`estado_academico` (
  `id_estado_academico` BIGINT NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(50) NULL,
  PRIMARY KEY (`id_estado_academico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`formacion_academica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`formacion_academica` (
  `id_formacion_academica` BIGINT NOT NULL AUTO_INCREMENT,
  `id_curriculun_vt` BIGINT NOT NULL,
  `titulo_obtenido` VARCHAR(100) NOT NULL,
  `id_nivel_estudio` BIGINT NOT NULL,
  `institucion` VARCHAR(150) NOT NULL,
  `id_pais` BIGINT NOT NULL,
  `fecha_inicio` DATE NULL,
  `id_estado_academico` BIGINT NOT NULL,
  `fecha_final` DATE NULL,
  PRIMARY KEY (`id_formacion_academica`),
  INDEX `fk_formacion_academica_nivel_estudio1_idx` (`id_nivel_estudio` ASC) ,
  INDEX `fk_formacion_academica_pais1_idx` (`id_pais` ASC) ,
  INDEX `fk_formacion_academica_curriculun_vt1_idx` (`id_curriculun_vt` ASC) ,
  INDEX `fk_formacion_academica_estado_academico1_idx` (`id_estado_academico` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`habilidades_personales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`habilidades_personales` (
  `id_habilidades_personales` BIGINT NOT NULL,
  `habilidad` VARCHAR(60) NULL,
  `id_curriculun_vt` BIGINT NOT NULL,
  PRIMARY KEY (`id_habilidades_personales`),
  INDEX `fk_habilidades_personales_curriculun_vt1_idx` (`id_curriculun_vt` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`experiencia_laboral`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`experiencia_laboral` (
  `id_experiencia_laboral` BIGINT NOT NULL AUTO_INCREMENT,
  `cargo` VARCHAR(60) NULL,
  `nombre_empresa` VARCHAR(60) NULL,
  `persona_atu_cargo` BIGINT NULL,
  `id_pais` BIGINT NOT NULL,
  `id_industria` BIGINT NOT NULL,
  `descripcion` VARCHAR(3000) NULL,
  `fecha_inicio` DATE NULL,
  `estado` VARCHAR(45) NULL,
  `fecha_final` DATE NULL,
  `id_curriculun_vt` BIGINT NOT NULL,
  PRIMARY KEY (`id_experiencia_laboral`),
  INDEX `fk_experiencia_laboral_curriculun_vt1_idx` (`id_curriculun_vt` ASC) ,
  INDEX `fk_experiencia_laboral_pais1_idx` (`id_pais` ASC) ,
  INDEX `fk_experiencia_laboral_industria1_idx` (`id_industria` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`ref_laboral`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`ref_laboral` (
  `id_ref_laboral` BIGINT NOT NULL AUTO_INCREMENT,
  `id_curriculun_vt` BIGINT NOT NULL,
  `nom_empresa` VARCHAR(100) NULL,
  `cargo_empresarial` VARCHAR(100) NULL,
  `nombre` VARCHAR(100) NULL,
  `telefono` VARCHAR(150) NULL,
  PRIMARY KEY (`id_ref_laboral`),
  INDEX `fk_ref_laboral_curriculun_vt1_idx` (`id_curriculun_vt` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`valores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`valores` (
  `id_valores` BIGINT NOT NULL AUTO_INCREMENT,
  `valores` VARCHAR(150) NULL,
  `curriculun_vt_id_curriculun_vt` BIGINT NOT NULL,
  PRIMARY KEY (`id_valores`),
  INDEX `fk_valores_curriculun_vt1_idx` (`curriculun_vt_id_curriculun_vt` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`salario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`salario` (
  `id_salario` BIGINT NOT NULL AUTO_INCREMENT,
  `salario` VARCHAR(45) NULL,
  PRIMARY KEY (`id_salario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`oferta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`oferta` (
  `id_oferta` BIGINT NOT NULL AUTO_INCREMENT,
  `id_empresa` BIGINT NOT NULL,
  `id_pais` BIGINT NOT NULL,
  `titulo` VARCHAR(150) NOT NULL,
  `puesto` VARCHAR(300) NOT NULL,
  `descripcion` VARCHAR(3000) NOT NULL,
  `requisitos` VARCHAR(3000) NOT NULL,
  `id_salario` BIGINT NOT NULL,
  `fecha_publicado` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` VARCHAR(45) NULL,
  PRIMARY KEY (`id_oferta`),
  INDEX `fk_oferta_empresa1_idx` (`id_empresa` ASC) ,
  INDEX `fk_oferta_salario1_idx` (`id_salario` ASC) ,
  INDEX `fk_oferta_pais1_idx` (`id_pais` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`contrato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`contrato` (
  `id_contrato` INT NOT NULL AUTO_INCREMENT,
  `contrato` VARCHAR(45) NULL,
  PRIMARY KEY (`id_contrato`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`oferta_has_contrato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`oferta_has_contrato` (
  `id_oferta` BIGINT NOT NULL,
  `id_contrato` BIGINT NOT NULL,
  PRIMARY KEY (`id_oferta`, `id_contrato`),
  INDEX `fk_oferta_has_contrato_oferta1_idx` (`id_oferta` ASC) ,
  INDEX `fk_oferta_has_contrato_contrato1_idx` (`id_contrato` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`postulacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`postulacion` (
  `id_postulacion` BIGINT NOT NULL,
  `id_oferta` BIGINT NOT NULL,
  `carta_presentacion` VARCHAR(3000) NOT NULL,
  `id_salario` BIGINT NOT NULL,
  `id_curriculun_vt` BIGINT NOT NULL,
  `fecha_postulacion` TIMESTAMP NULL,
  PRIMARY KEY (`id_postulacion`),
  INDEX `fk_postulacion_oferta1_idx` (`id_oferta` ASC) ,
  INDEX `fk_postulacion_curriculun_vt1_idx` (`id_curriculun_vt` ASC) ,
  INDEX `fk_postulacion_salario1_idx` (`id_salario` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`habilidades_profecionales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`habilidades_profecionales` (
  `id_habilidades_profecionales` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(150) NULL,
  `id_nivel` BIGINT NOT NULL,
  `id_curriculun_vt` BIGINT NOT NULL,
  PRIMARY KEY (`id_habilidades_profecionales`),
  INDEX `fk_habilidades_profecionales_curriculun_vt1_idx` (`id_curriculun_vt` ASC) ,
  INDEX `fk_habilidades_profecionales_nivel1_idx` (`id_nivel` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`oferta_has_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`oferta_has_categoria` (
  `id_oferta` BIGINT NOT NULL,
  `id_categoria` BIGINT NOT NULL,
  PRIMARY KEY (`id_oferta`, `id_categoria`),
  INDEX `fk_oferta_has_categoria_categoria1_idx` (`id_categoria` ASC) ,
  INDEX `fk_oferta_has_categoria_oferta1_idx` (`id_oferta` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`ubicacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`ubicacion` (
  `id_ubicacion` BIGINT NOT NULL,
  `latitud` DOUBLE NULL,
  `longitud` DOUBLE NULL,
  PRIMARY KEY (`id_ubicacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_rus`.`persona_has_idioma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_rus`.`persona_has_idioma` (
  `id_persona` BIGINT NOT NULL,
  `id_idioma` BIGINT NOT NULL,
  `nivel_escritura` VARCHAR(45) NOT NULL,
  `nivel_lectura` VARCHAR(45) NOT NULL,
  `nivel_oral` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_idioma`, `id_persona`),
  INDEX `fk_persona_has_idioma_idioma1_idx` (`id_idioma` ASC) ,
  INDEX `fk_persona_has_idioma_persona1_idx` (`id_persona` ASC) )
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
