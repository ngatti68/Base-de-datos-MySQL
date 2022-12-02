CREATE DATABASE  IF NOT EXISTS `portfolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portfolio`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domicilio` (
  `iddomicilio` int NOT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`iddomicilio`,`persona_idpersona`),
  KEY `fk_domicilio_persona1` (`persona_idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
INSERT INTO `domicilio` VALUES (1,'135','1963','Berazategui','Buenos Aires','Argentina',1);
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educacion` (
  `ideducacion` int NOT NULL,
  `institucion` varchar(200) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `estudioCursado` varchar(200) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `LogoInstituto` varchar(100) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`ideducacion`,`persona_idpersona`),
  KEY `fk_educacion_persona1` (`persona_idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
INSERT INTO `educacion` VALUES (1,'E.N.E.T N° 1 de Berazategui (ex I.P.I.B.)','Técnico Electromecánico','','1981-03-01','1986-12-01','www.foto.com/IPIB_Logo',1),(2,'Universidad Tecnológica Nacional - Facultad Regional Avellaneda (UTN - FRA)','','Ingeniería Eléctrica','1987-03-01','1990-12-01','www.foto.com/UTN_Logo',1);
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_laboral` (
  `idexperiencia_laboral` int NOT NULL,
  `nombreEmpresa` varchar(100) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `esTrabajoActual` tinyint DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `url_logoEmpresa` varchar(45) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`idexperiencia_laboral`),
  KEY `fk_experiencia_laboral_persona` (`persona_idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_laboral`
--

LOCK TABLES `experiencia_laboral` WRITE;
/*!40000 ALTER TABLE `experiencia_laboral` DISABLE KEYS */;
INSERT INTO `experiencia_laboral` VALUES (1,'Electricidad Quilmes S.A.','Vendedor',0,'1987-01-01','1988-04-30','H. Yrigoyen 784 - Quilmes','Vendedor técnico de mostrado','www.foto.com/E_Logo',1),(2,'Empresa de Desarrollos Especiales - Fábrica de Artefactos Navales','Montador técnico',0,'1987-05-01','1991-09-30','Darsena Sur - CABA','Mantenimiento, reparación y actualización de artefactos navales','www.foto.com/E_Logo',1),(3,'Electricidad del Sur S.A.','Vendedor técnico',0,'1993-08-01','2014-12-31','Av. Hipólito Irigoyen 429 - Quilmes','Asesoramiento, prescripción y venta de materiales eléctricos para el comercio y la industria.','www.foto.com/EdS_Logo',1),(4,'Electricidad Gallardo','Comercial Senior',1,'2015-02-01','2022-12-31','Av. Hipólito Irigoyen 429 - Quilmes','Asesoramiento, prescripción y venta de materiales eléctricos para el comercio y la industria.','www.foto.com/EG_Logo',1);
/*!40000 ALTER TABLE `experiencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `sobre_mi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `url_fotoPerfil` varchar(100) DEFAULT NULL,
  `url_banner` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Norberto','Gatti','Full Stack Developer Jr.','1968-02-06','11-4082-5647','norberto.o.gatti@gmail.com','Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam quo, rerum nisi illo architecto dolor corrupti aliquam consequatur alias? Quam modi amet saepe rerum magni velit tempore nisi repellendus voluptas?','www.foto.comFoto_perfil.png','www.foto.comBanner_2.jpg');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `idproyecto` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `url_proyecto` varchar(100) DEFAULT NULL,
  `url_imagen` varchar(100) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`idproyecto`,`persona_idpersona`),
  KEY `fk_proyecto_persona1` (`persona_idpersona`),
  CONSTRAINT `fk_proyecto_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Proyecto Integrador Portfolio Web Full Stack','2023-01-15','Aplicación web full stack','','',1);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnologia`
--

DROP TABLE IF EXISTS `tecnologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnologia` (
  `idtecnologia` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `porcentaje` varchar(45) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`idtecnologia`,`persona_idpersona`),
  KEY `fk_tecnologia_persona1` (`persona_idpersona`),
  CONSTRAINT `fk_tecnologia_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnologia`
--

LOCK TABLES `tecnologia` WRITE;
/*!40000 ALTER TABLE `tecnologia` DISABLE KEYS */;
INSERT INTO `tecnologia` VALUES (1,'HTML','20',1),(2,'CSS','30',1),(3,'Bootstrap','40',1),(4,'JavaScript','50',1);
/*!40000 ALTER TABLE `tecnologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contraseña` varchar(12) DEFAULT NULL,
  `persona_idpersona` int NOT NULL,
  PRIMARY KEY (`idusuario`,`persona_idpersona`),
  KEY `fk_usuario_persona1` (`persona_idpersona`),
  CONSTRAINT `fk_usuario_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'norberto.o.gatti@gmail.com','1234',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-01 21:18:23
