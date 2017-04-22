SET FOREIGN_KEY_CHECKS=0; 
-- Dump de la Base de Datos
-- Fecha: lunes 07 noviembre 2016 - 02:07:45
--
-- Version: 1.1.1, del 18 de Marzo de 2005, insidephp@gmail.com
-- Soporte y Updaters: http://insidephp.sytes.net
--
-- Host: `localhost`    Database: `db_global_lapizzeria`
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

--
-- Table structure for table `log_backups`
--

DROP TABLE IF EXISTS log_backups;
CREATE TABLE `log_backups` (
  `id_bk` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_bk` varchar(50) DEFAULT NULL,
  `fecha_bk` datetime NOT NULL,
  `link_bk` varchar(50) DEFAULT NULL,
  KEY `Índice 1` (`id_bk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_backups`
--

LOCK TABLES log_backups WRITE;
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('4', '1', '2016-10-11 19:34:23', '1');
INSERT INTO log_backups VALUES('5', '2016-Oct-16-05-00-24db_global_lapizzeria_bk.sql.gz', '2016-10-16 05:00:25', '2016-Oct-16-05-00-24db_global_lapizzeria_bk.sql.gz');
UNLOCK TABLES;


--
-- Table structure for table `sr_accesos`
--

DROP TABLE IF EXISTS sr_accesos;
CREATE TABLE `sr_accesos` (
  `id_acceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL DEFAULT '0',
  `id_menu` int(11) NOT NULL DEFAULT '0',
  `id_usuario` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) NOT NULL DEFAULT '0',
  KEY `Índice 1` (`id_acceso`),
  KEY `FK_sr_accesos_sr_roles` (`id_rol`),
  KEY `FK_sr_accesos_sr_menu` (`id_menu`),
  CONSTRAINT `FK_sr_accesos_sr_menu` FOREIGN KEY (`id_menu`) REFERENCES `sr_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_sr_accesos_sr_roles` FOREIGN KEY (`id_rol`) REFERENCES `sr_roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_accesos`
--

LOCK TABLES sr_accesos WRITE;
INSERT INTO sr_accesos VALUES('1', '1', '1', '1', '1');
INSERT INTO sr_accesos VALUES('5', '1', '4', '1', '1');
INSERT INTO sr_accesos VALUES('6', '1', '5', '1', '1');
INSERT INTO sr_accesos VALUES('54', '1', '6', '1', '1');
INSERT INTO sr_accesos VALUES('55', '15', '1', '0', '1');
INSERT INTO sr_accesos VALUES('58', '15', '4', '0', '1');
INSERT INTO sr_accesos VALUES('59', '15', '5', '0', '0');
INSERT INTO sr_accesos VALUES('60', '15', '6', '0', '0');
INSERT INTO sr_accesos VALUES('115', '1', '7', '0', '1');
INSERT INTO sr_accesos VALUES('116', '15', '7', '0', '1');
INSERT INTO sr_accesos VALUES('119', '19', '1', '0', '0');
INSERT INTO sr_accesos VALUES('120', '19', '4', '0', '0');
INSERT INTO sr_accesos VALUES('121', '19', '5', '0', '0');
INSERT INTO sr_accesos VALUES('122', '19', '6', '0', '1');
INSERT INTO sr_accesos VALUES('123', '19', '7', '0', '0');
UNLOCK TABLES;


--
-- Table structure for table `sr_avatar`
--

DROP TABLE IF EXISTS sr_avatar;
CREATE TABLE `sr_avatar` (
  `id_avatar` int(100) NOT NULL AUTO_INCREMENT,
  `nombre_avatar` varchar(200) NOT NULL DEFAULT '0',
  `genero_avatar` char(50) NOT NULL DEFAULT '0',
  `usuario_avatar` varchar(50) NOT NULL DEFAULT '0',
  `usuario_id` int(11) unsigned DEFAULT NULL,
  `url_avatar` varchar(100) NOT NULL DEFAULT '0',
  `estado_avatar` int(11) NOT NULL DEFAULT '0',
  KEY `Índice 1` (`id_avatar`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_avatar`
--

LOCK TABLES sr_avatar WRITE;
INSERT INTO sr_avatar VALUES('1', '0', 'm', 'personal', '1', 'avatar_rafael.png', '1');
INSERT INTO sr_avatar VALUES('2', '0', 'm', 'sistema', NULL, 'avatar1_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('3', '0', 'm', 'sistema', NULL, 'avatar2_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('4', '0', 'm', 'sistema', NULL, 'avatar4_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('5', '0', 'm', 'sistema', NULL, 'avatar6_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('6', '0', 'm', 'sistema', NULL, 'avatar7_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('7', '0', 'm', 'sistema', NULL, 'avatar11_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('8', '0', 'm', 'personal', '2', 'jose.lopez.png', '1');
INSERT INTO sr_avatar VALUES('9', '0', 'f', 'sistema', NULL, 'avatar3_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'f', 'sistema', NULL, 'avatar5_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'f', 'sistema', NULL, 'avatar8_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'f', 'sistema', NULL, 'avatar9_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'f', 'sistema', NULL, 'avatar10_big@2x.png', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'm', 'personal', '1', 'avatar-924111135a76cec9a4bfbb02d1efa0cf.png', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'm', 'personal', '1', 'Codeschool - jQuery The Return Flight (2013).png', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'm', 'personal', '1', 'no_user_logo.png', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'm', 'personal', '1', 'no-profile.gif', '1');
INSERT INTO sr_avatar VALUES('10', '0', 'm', 'personal', '1', 'flexible-deployment-icon.png', '1');
INSERT INTO sr_avatar VALUES('11', 'nike_zoom_soldier_VII.jpg', 'm', 'personal', '1', 'nike_zoom_soldier_VII.jpg', '1');
INSERT INTO sr_avatar VALUES('12', '2007_toyota_yaris_s_virginia_beach_va_7080041433458508257.jpg', 'm', 'personal', '1', '2007_toyota_yaris_s_virginia_beach_va_7080041433458508257.jpg', '1');
INSERT INTO sr_avatar VALUES('13', 'Nahum H.png', 'm', 'personal', '9', 'Nahum H.png', '1');
INSERT INTO sr_avatar VALUES('14', 'Nahum H.png', 'm', 'personal', '9', 'Nahum H.png', '1');
INSERT INTO sr_avatar VALUES('15', 'Nahum H.png', 'm', 'personal', '9', 'Nahum H.png', '1');
INSERT INTO sr_avatar VALUES('16', 'nahum.jpg', 'm', 'personal', '9', 'nahum.jpg', '1');
INSERT INTO sr_avatar VALUES('17', 'Nahum H.png', 'm', 'personal', '10', 'Nahum H.png', '1');
INSERT INTO sr_avatar VALUES('18', 'circle_logo.png', 'M', 'personal', '1', 'circle_logo.png', '1');
INSERT INTO sr_avatar VALUES('19', '0', 'M', 'sistema', NULL, 'detective.png', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_cargos`
--

DROP TABLE IF EXISTS sr_cargos;
CREATE TABLE `sr_cargos` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(50) NOT NULL DEFAULT '0',
  `estado_cargo` int(11) NOT NULL DEFAULT '0',
  KEY `Índice 1` (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_cargos`
--

LOCK TABLES sr_cargos WRITE;
INSERT INTO sr_cargos VALUES('1', 'Super Administrador', '1');
INSERT INTO sr_cargos VALUES('2', 'Administrador', '1');
INSERT INTO sr_cargos VALUES('10', 'Gerente Sucursal', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_config`
--

DROP TABLE IF EXISTS sr_config;
CREATE TABLE `sr_config` (
  `id_config` int(100) NOT NULL AUTO_INCREMENT,
  `id_rol` int(100) NOT NULL DEFAULT '0',
  `pages_config` varchar(50) DEFAULT NULL,
  `url_config` varchar(250) NOT NULL DEFAULT '0',
  `accion` varchar(100) NOT NULL DEFAULT '0',
  `estado_config` int(1) NOT NULL DEFAULT '0',
  KEY `Índice 1` (`id_config`),
  KEY `FK_sr_config_sr_roles` (`id_rol`),
  CONSTRAINT `FK_sr_config_sr_roles` FOREIGN KEY (`id_rol`) REFERENCES `sr_roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_config`
--

LOCK TABLES sr_config WRITE;
INSERT INTO sr_config VALUES('1', '1', 'login', 'login.php', 'checked', '1');
INSERT INTO sr_config VALUES('2', '1', 'user-lockscreen', 'user-lockscreen.php', 'checked', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_empresa`
--

DROP TABLE IF EXISTS sr_empresa;
CREATE TABLE `sr_empresa` (
  `id_empresa` int(100) NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `rubro_empresa` varchar(50) DEFAULT NULL,
  `logo_empresa` varchar(255) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `nit` varchar(50) DEFAULT NULL,
  `nombre_alcalde` varchar(250) DEFAULT NULL,
  `nombre_secretario` varchar(250) DEFAULT NULL,
  `jefe_registro_familiar` varchar(250) DEFAULT NULL,
  `estado_emrpesa` int(1) DEFAULT NULL,
  KEY `Índice 1` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_empresa`
--

LOCK TABLES sr_empresa WRITE;
INSERT INTO sr_empresa VALUES('1', 'La  Pizzeria', 'Comida', '1410201642251lapizzeria.png', 'El Salvador', '', '', '23456789', '23456789', '', '', '', '', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_librerias`
--

DROP TABLE IF EXISTS sr_librerias;
CREATE TABLE `sr_librerias` (
  `id_lib` int(100) NOT NULL AUTO_INCREMENT,
  `codigo_lib` int(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `parte` varchar(50) DEFAULT NULL,
  `url_libreria` varchar(50) DEFAULT NULL,
  `descripcion_lib` varchar(50) DEFAULT NULL,
  `estado_lib` int(1) DEFAULT NULL,
  KEY `Índice 1` (`id_lib`),
  KEY `FK_sr_librerias_sr_nombre_libreria` (`codigo_lib`),
  CONSTRAINT `FK_sr_librerias_sr_nombre_libreria` FOREIGN KEY (`codigo_lib`) REFERENCES `sr_nombre_libreria` (`id_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_librerias`
--

LOCK TABLES sr_librerias WRITE;
INSERT INTO sr_librerias VALUES('1', '1', 'login', 'header', 'assets/css/style.css', 'nada', '1');
INSERT INTO sr_librerias VALUES('2', '1', 'login', 'header', 'assets/css/ui.css', 'nada', '1');
INSERT INTO sr_librerias VALUES('3', '1', 'login', 'header', 'assets/plugins/bootstrap-loading/lada.min.css', 'nada', '1');
INSERT INTO sr_librerias VALUES('4', '6', 'dashboard', 'header', 'assets/js/forms.js', 'nada', '1');
INSERT INTO sr_librerias VALUES('4', '6', 'dashboard', 'header', 'assets/js/change_pages.js', 'nada', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_log_acceso`
--

DROP TABLE IF EXISTS sr_log_acceso;
CREATE TABLE `sr_log_acceso` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  KEY `Índice 1` (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=992 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_log_acceso`
--

LOCK TABLES sr_log_acceso WRITE;
INSERT INTO sr_log_acceso VALUES('1', '1', '2015-09-20 14:09:44');
INSERT INTO sr_log_acceso VALUES('2', '1', '2015-09-20 14:09:16');
INSERT INTO sr_log_acceso VALUES('3', '2', '2015-09-20 14:09:37');
INSERT INTO sr_log_acceso VALUES('4', '2', '2015-09-20 14:09:22');
INSERT INTO sr_log_acceso VALUES('5', '1', '2015-09-20 14:09:51');
INSERT INTO sr_log_acceso VALUES('6', '1', '2015-09-20 19:09:46');
INSERT INTO sr_log_acceso VALUES('7', '1', '2015-09-21 17:09:04');
INSERT INTO sr_log_acceso VALUES('8', '2', '2015-09-22 10:09:02');
INSERT INTO sr_log_acceso VALUES('9', '1', '2015-09-22 10:09:29');
INSERT INTO sr_log_acceso VALUES('10', '2', '2015-09-22 10:09:15');
INSERT INTO sr_log_acceso VALUES('11', '1', '2015-09-22 10:09:00');
INSERT INTO sr_log_acceso VALUES('12', '1', '2015-09-22 10:09:30');
INSERT INTO sr_log_acceso VALUES('13', '1', '2015-09-22 10:09:41');
INSERT INTO sr_log_acceso VALUES('14', '5', '2015-09-22 17:09:58');
INSERT INTO sr_log_acceso VALUES('15', '1', '2015-09-22 17:09:03');
INSERT INTO sr_log_acceso VALUES('16', '7', '2015-09-22 17:09:32');
INSERT INTO sr_log_acceso VALUES('17', '1', '2015-09-22 17:09:42');
INSERT INTO sr_log_acceso VALUES('18', '1', '2015-09-22 22:09:37');
INSERT INTO sr_log_acceso VALUES('19', '2', '2015-09-22 22:09:25');
INSERT INTO sr_log_acceso VALUES('20', '1', '2015-09-23 20:09:40');
INSERT INTO sr_log_acceso VALUES('21', '1', '2015-09-25 03:09:27');
INSERT INTO sr_log_acceso VALUES('22', '1', '2015-09-26 08:09:46');
INSERT INTO sr_log_acceso VALUES('23', '2', '2015-09-26 09:09:54');
INSERT INTO sr_log_acceso VALUES('24', '1', '2015-09-26 09:09:31');
INSERT INTO sr_log_acceso VALUES('25', '1', '2015-09-26 11:09:48');
INSERT INTO sr_log_acceso VALUES('26', '1', '2015-09-26 12:09:44');
INSERT INTO sr_log_acceso VALUES('27', '1', '2015-09-26 20:09:52');
INSERT INTO sr_log_acceso VALUES('28', '2', '2015-09-26 20:09:13');
INSERT INTO sr_log_acceso VALUES('29', '1', '2015-09-26 20:09:31');
INSERT INTO sr_log_acceso VALUES('30', '2', '2015-09-26 20:09:01');
INSERT INTO sr_log_acceso VALUES('31', '1', '2015-09-26 20:09:22');
INSERT INTO sr_log_acceso VALUES('32', '1', '2015-09-27 08:09:41');
INSERT INTO sr_log_acceso VALUES('33', '2', '2015-09-27 14:09:59');
INSERT INTO sr_log_acceso VALUES('34', '1', '2015-09-27 14:09:53');
INSERT INTO sr_log_acceso VALUES('35', '2', '2015-09-27 16:09:31');
INSERT INTO sr_log_acceso VALUES('36', '1', '2015-09-28 05:09:17');
INSERT INTO sr_log_acceso VALUES('37', '1', '2015-09-30 06:09:27');
INSERT INTO sr_log_acceso VALUES('38', '8', '2015-09-30 06:09:51');
INSERT INTO sr_log_acceso VALUES('39', '2', '2015-09-30 06:09:27');
INSERT INTO sr_log_acceso VALUES('40', '1', '2015-09-30 06:09:00');
INSERT INTO sr_log_acceso VALUES('41', '2', '2015-09-30 06:09:02');
INSERT INTO sr_log_acceso VALUES('42', '8', '2015-09-30 06:09:26');
INSERT INTO sr_log_acceso VALUES('43', '8', '2015-09-30 15:09:50');
INSERT INTO sr_log_acceso VALUES('44', '1', '2015-09-30 15:09:58');
INSERT INTO sr_log_acceso VALUES('45', '8', '2015-09-30 15:09:56');
INSERT INTO sr_log_acceso VALUES('46', '8', '2015-09-30 16:09:41');
INSERT INTO sr_log_acceso VALUES('47', '8', '2015-09-30 16:09:46');
INSERT INTO sr_log_acceso VALUES('48', '8', '2015-09-30 16:09:35');
INSERT INTO sr_log_acceso VALUES('49', '1', '2015-09-30 16:09:25');
INSERT INTO sr_log_acceso VALUES('50', '8', '2015-09-30 19:09:57');
INSERT INTO sr_log_acceso VALUES('51', '8', '2015-09-30 19:09:10');
INSERT INTO sr_log_acceso VALUES('52', '8', '2015-09-30 19:09:08');
INSERT INTO sr_log_acceso VALUES('53', '8', '2015-09-30 19:09:29');
INSERT INTO sr_log_acceso VALUES('54', '8', '2015-09-30 23:09:39');
INSERT INTO sr_log_acceso VALUES('55', '1', '2015-10-01 00:10:43');
INSERT INTO sr_log_acceso VALUES('56', '9', '2015-10-01 00:10:35');
INSERT INTO sr_log_acceso VALUES('57', '1', '2015-10-01 00:10:49');
INSERT INTO sr_log_acceso VALUES('58', '9', '2015-10-01 00:10:54');
INSERT INTO sr_log_acceso VALUES('59', '8', '2015-10-01 00:10:33');
INSERT INTO sr_log_acceso VALUES('60', '1', '2015-10-01 00:10:25');
INSERT INTO sr_log_acceso VALUES('61', '1', '2015-10-01 04:10:47');
INSERT INTO sr_log_acceso VALUES('62', '1', '2015-10-01 04:10:22');
INSERT INTO sr_log_acceso VALUES('63', '1', '2015-10-01 05:10:25');
INSERT INTO sr_log_acceso VALUES('64', '8', '2015-10-01 16:10:39');
INSERT INTO sr_log_acceso VALUES('65', '8', '2015-10-01 16:10:57');
INSERT INTO sr_log_acceso VALUES('66', '8', '2015-10-01 16:10:16');
INSERT INTO sr_log_acceso VALUES('67', '8', '2015-10-01 16:10:39');
INSERT INTO sr_log_acceso VALUES('68', '8', '2015-10-01 16:10:55');
INSERT INTO sr_log_acceso VALUES('69', '8', '2015-10-01 17:10:22');
INSERT INTO sr_log_acceso VALUES('70', '8', '2015-10-01 17:10:51');
INSERT INTO sr_log_acceso VALUES('71', '8', '2015-10-01 17:10:30');
INSERT INTO sr_log_acceso VALUES('72', '8', '2015-10-01 19:10:08');
INSERT INTO sr_log_acceso VALUES('73', '8', '2015-10-01 19:10:15');
INSERT INTO sr_log_acceso VALUES('74', '8', '2015-10-01 19:10:00');
INSERT INTO sr_log_acceso VALUES('75', '8', '2015-10-01 19:10:26');
INSERT INTO sr_log_acceso VALUES('76', '8', '2015-10-01 19:10:24');
INSERT INTO sr_log_acceso VALUES('77', '8', '2015-10-01 20:10:58');
INSERT INTO sr_log_acceso VALUES('78', '8', '2015-10-01 21:10:39');
INSERT INTO sr_log_acceso VALUES('79', '8', '2015-10-01 21:10:10');
INSERT INTO sr_log_acceso VALUES('80', '8', '2015-10-01 21:10:12');
INSERT INTO sr_log_acceso VALUES('81', '8', '2015-10-01 21:10:44');
INSERT INTO sr_log_acceso VALUES('82', '8', '2015-10-01 21:10:36');
INSERT INTO sr_log_acceso VALUES('83', '8', '2015-10-01 21:10:46');
INSERT INTO sr_log_acceso VALUES('84', '9', '2015-10-01 22:10:48');
INSERT INTO sr_log_acceso VALUES('85', '8', '2015-10-01 22:10:47');
INSERT INTO sr_log_acceso VALUES('86', '8', '2015-10-01 22:10:46');
INSERT INTO sr_log_acceso VALUES('87', '8', '2015-10-01 22:10:59');
INSERT INTO sr_log_acceso VALUES('88', '8', '2015-10-01 23:10:32');
INSERT INTO sr_log_acceso VALUES('89', '8', '2015-10-01 23:10:36');
INSERT INTO sr_log_acceso VALUES('90', '8', '2015-10-02 16:10:05');
INSERT INTO sr_log_acceso VALUES('91', '8', '2015-10-02 16:10:13');
INSERT INTO sr_log_acceso VALUES('92', '8', '2015-10-02 16:10:25');
INSERT INTO sr_log_acceso VALUES('93', '8', '2015-10-02 16:10:15');
INSERT INTO sr_log_acceso VALUES('94', '8', '2015-10-02 17:10:29');
INSERT INTO sr_log_acceso VALUES('95', '8', '2015-10-02 17:10:36');
INSERT INTO sr_log_acceso VALUES('96', '8', '2015-10-02 17:10:51');
INSERT INTO sr_log_acceso VALUES('97', '8', '2015-10-02 18:10:59');
INSERT INTO sr_log_acceso VALUES('98', '8', '2015-10-02 18:10:17');
INSERT INTO sr_log_acceso VALUES('99', '8', '2015-10-02 21:10:40');
INSERT INTO sr_log_acceso VALUES('100', '8', '2015-10-02 21:10:20');
INSERT INTO sr_log_acceso VALUES('101', '8', '2015-10-02 21:10:18');
INSERT INTO sr_log_acceso VALUES('102', '8', '2015-10-02 23:10:42');
INSERT INTO sr_log_acceso VALUES('103', '8', '2015-10-02 23:10:16');
INSERT INTO sr_log_acceso VALUES('104', '8', '2015-10-05 16:10:51');
INSERT INTO sr_log_acceso VALUES('105', '8', '2015-10-05 16:10:48');
INSERT INTO sr_log_acceso VALUES('106', '8', '2015-10-05 16:10:58');
INSERT INTO sr_log_acceso VALUES('107', '8', '2015-10-05 16:10:47');
INSERT INTO sr_log_acceso VALUES('108', '8', '2015-10-05 16:10:56');
INSERT INTO sr_log_acceso VALUES('109', '8', '2015-10-05 16:10:23');
INSERT INTO sr_log_acceso VALUES('110', '8', '2015-10-05 17:10:08');
INSERT INTO sr_log_acceso VALUES('111', '8', '2015-10-05 17:10:12');
INSERT INTO sr_log_acceso VALUES('112', '8', '2015-10-05 17:10:25');
INSERT INTO sr_log_acceso VALUES('113', '8', '2015-10-05 17:10:23');
INSERT INTO sr_log_acceso VALUES('114', '8', '2015-10-05 17:10:00');
INSERT INTO sr_log_acceso VALUES('115', '8', '2015-10-05 18:10:22');
INSERT INTO sr_log_acceso VALUES('116', '8', '2015-10-05 18:10:50');
INSERT INTO sr_log_acceso VALUES('117', '8', '2015-10-05 18:10:38');
INSERT INTO sr_log_acceso VALUES('118', '8', '2015-10-05 18:10:23');
INSERT INTO sr_log_acceso VALUES('119', '8', '2015-10-05 22:10:27');
INSERT INTO sr_log_acceso VALUES('120', '8', '2015-10-05 22:10:11');
INSERT INTO sr_log_acceso VALUES('121', '8', '2015-10-05 23:10:22');
INSERT INTO sr_log_acceso VALUES('122', '8', '2015-10-05 23:10:12');
INSERT INTO sr_log_acceso VALUES('123', '8', '2015-10-06 16:10:08');
INSERT INTO sr_log_acceso VALUES('124', '8', '2015-10-06 17:10:53');
INSERT INTO sr_log_acceso VALUES('125', '8', '2015-10-06 17:10:31');
INSERT INTO sr_log_acceso VALUES('126', '8', '2015-10-06 17:10:00');
INSERT INTO sr_log_acceso VALUES('127', '8', '2015-10-06 17:10:51');
INSERT INTO sr_log_acceso VALUES('128', '8', '2015-10-06 17:10:49');
INSERT INTO sr_log_acceso VALUES('129', '8', '2015-10-06 17:10:17');
INSERT INTO sr_log_acceso VALUES('130', '8', '2015-10-06 17:10:46');
INSERT INTO sr_log_acceso VALUES('131', '8', '2015-10-06 18:10:01');
INSERT INTO sr_log_acceso VALUES('132', '8', '2015-10-06 18:10:15');
INSERT INTO sr_log_acceso VALUES('133', '8', '2015-10-06 18:10:55');
INSERT INTO sr_log_acceso VALUES('134', '8', '2015-10-06 18:10:32');
INSERT INTO sr_log_acceso VALUES('135', '8', '2015-10-06 20:10:32');
INSERT INTO sr_log_acceso VALUES('136', '8', '2015-10-06 21:10:43');
INSERT INTO sr_log_acceso VALUES('137', '8', '2015-10-06 21:10:34');
INSERT INTO sr_log_acceso VALUES('138', '8', '2015-10-06 21:10:19');
INSERT INTO sr_log_acceso VALUES('139', '8', '2015-10-06 21:10:46');
INSERT INTO sr_log_acceso VALUES('140', '8', '2015-10-06 23:10:32');
INSERT INTO sr_log_acceso VALUES('141', '8', '2015-10-06 23:10:10');
INSERT INTO sr_log_acceso VALUES('142', '8', '2015-10-06 23:10:15');
INSERT INTO sr_log_acceso VALUES('143', '8', '2015-10-07 16:10:23');
INSERT INTO sr_log_acceso VALUES('144', '8', '2015-10-07 17:10:05');
INSERT INTO sr_log_acceso VALUES('145', '8', '2015-10-07 17:10:29');
INSERT INTO sr_log_acceso VALUES('146', '8', '2015-10-07 17:10:04');
INSERT INTO sr_log_acceso VALUES('147', '8', '2015-10-07 17:10:16');
INSERT INTO sr_log_acceso VALUES('148', '8', '2015-10-07 17:10:37');
INSERT INTO sr_log_acceso VALUES('149', '8', '2015-10-07 17:10:00');
INSERT INTO sr_log_acceso VALUES('150', '8', '2015-10-07 17:10:51');
INSERT INTO sr_log_acceso VALUES('151', '8', '2015-10-07 18:10:35');
INSERT INTO sr_log_acceso VALUES('152', '8', '2015-10-07 19:10:13');
INSERT INTO sr_log_acceso VALUES('153', '8', '2015-10-07 19:10:35');
INSERT INTO sr_log_acceso VALUES('154', '8', '2015-10-07 19:10:37');
INSERT INTO sr_log_acceso VALUES('155', '8', '2015-10-07 19:10:48');
INSERT INTO sr_log_acceso VALUES('156', '8', '2015-10-07 21:10:34');
INSERT INTO sr_log_acceso VALUES('157', '8', '2015-10-07 22:10:36');
INSERT INTO sr_log_acceso VALUES('158', '8', '2015-10-07 22:10:05');
INSERT INTO sr_log_acceso VALUES('159', '8', '2015-10-07 22:10:02');
INSERT INTO sr_log_acceso VALUES('160', '8', '2015-10-07 23:10:54');
INSERT INTO sr_log_acceso VALUES('161', '8', '2015-10-09 17:10:24');
INSERT INTO sr_log_acceso VALUES('162', '8', '2015-10-09 18:10:41');
INSERT INTO sr_log_acceso VALUES('163', '8', '2015-10-09 18:10:22');
INSERT INTO sr_log_acceso VALUES('164', '8', '2015-10-09 18:10:49');
INSERT INTO sr_log_acceso VALUES('165', '8', '2015-10-09 18:10:16');
INSERT INTO sr_log_acceso VALUES('166', '8', '2015-10-09 18:10:04');
INSERT INTO sr_log_acceso VALUES('167', '8', '2015-10-09 18:10:39');
INSERT INTO sr_log_acceso VALUES('168', '8', '2015-10-09 18:10:21');
INSERT INTO sr_log_acceso VALUES('169', '8', '2015-10-09 18:10:58');
INSERT INTO sr_log_acceso VALUES('170', '8', '2015-10-09 19:10:04');
INSERT INTO sr_log_acceso VALUES('171', '8', '2015-10-09 21:10:06');
INSERT INTO sr_log_acceso VALUES('172', '8', '2015-10-09 21:10:13');
INSERT INTO sr_log_acceso VALUES('173', '8', '2015-10-09 21:10:31');
INSERT INTO sr_log_acceso VALUES('174', '8', '2015-10-09 22:10:10');
INSERT INTO sr_log_acceso VALUES('175', '8', '2015-10-09 22:10:47');
INSERT INTO sr_log_acceso VALUES('176', '8', '2015-10-12 16:10:59');
INSERT INTO sr_log_acceso VALUES('177', '8', '2015-10-12 16:10:51');
INSERT INTO sr_log_acceso VALUES('178', '8', '2015-10-12 17:10:41');
INSERT INTO sr_log_acceso VALUES('179', '8', '2015-10-12 17:10:01');
INSERT INTO sr_log_acceso VALUES('180', '8', '2015-10-12 17:10:09');
INSERT INTO sr_log_acceso VALUES('181', '8', '2015-10-12 17:10:56');
INSERT INTO sr_log_acceso VALUES('182', '8', '2015-10-12 18:10:32');
INSERT INTO sr_log_acceso VALUES('183', '8', '2015-10-12 18:10:03');
INSERT INTO sr_log_acceso VALUES('184', '8', '2015-10-12 18:10:11');
INSERT INTO sr_log_acceso VALUES('185', '8', '2015-10-12 18:10:18');
INSERT INTO sr_log_acceso VALUES('186', '8', '2015-10-13 16:10:45');
INSERT INTO sr_log_acceso VALUES('187', '8', '2015-10-13 16:10:06');
INSERT INTO sr_log_acceso VALUES('188', '8', '2015-10-13 16:10:21');
INSERT INTO sr_log_acceso VALUES('189', '8', '2015-10-13 17:10:41');
INSERT INTO sr_log_acceso VALUES('190', '8', '2015-10-13 22:10:16');
INSERT INTO sr_log_acceso VALUES('191', '8', '2015-10-13 22:10:26');
INSERT INTO sr_log_acceso VALUES('192', '8', '2015-10-13 23:10:45');
INSERT INTO sr_log_acceso VALUES('193', '8', '2015-10-14 17:10:18');
INSERT INTO sr_log_acceso VALUES('194', '8', '2015-10-14 17:10:55');
INSERT INTO sr_log_acceso VALUES('195', '8', '2015-10-14 17:10:22');
INSERT INTO sr_log_acceso VALUES('196', '8', '2015-10-14 19:10:48');
INSERT INTO sr_log_acceso VALUES('197', '8', '2015-10-14 19:10:59');
INSERT INTO sr_log_acceso VALUES('198', '8', '2015-10-14 21:10:13');
INSERT INTO sr_log_acceso VALUES('199', '8', '2015-10-14 21:10:53');
INSERT INTO sr_log_acceso VALUES('200', '8', '2015-10-14 22:10:35');
INSERT INTO sr_log_acceso VALUES('201', '8', '2015-10-15 16:10:00');
INSERT INTO sr_log_acceso VALUES('202', '8', '2015-10-15 16:10:47');
INSERT INTO sr_log_acceso VALUES('203', '8', '2015-10-15 16:10:25');
INSERT INTO sr_log_acceso VALUES('204', '8', '2015-10-15 16:10:23');
INSERT INTO sr_log_acceso VALUES('205', '8', '2015-10-15 16:10:26');
INSERT INTO sr_log_acceso VALUES('206', '8', '2015-10-15 16:10:20');
INSERT INTO sr_log_acceso VALUES('207', '8', '2015-10-15 17:10:06');
INSERT INTO sr_log_acceso VALUES('208', '8', '2015-10-15 19:10:30');
INSERT INTO sr_log_acceso VALUES('209', '8', '2015-10-15 21:10:51');
INSERT INTO sr_log_acceso VALUES('210', '8', '2015-10-19 16:10:17');
INSERT INTO sr_log_acceso VALUES('211', '8', '2015-10-19 16:10:53');
INSERT INTO sr_log_acceso VALUES('212', '8', '2015-10-19 16:10:54');
INSERT INTO sr_log_acceso VALUES('213', '8', '2015-10-19 16:10:19');
INSERT INTO sr_log_acceso VALUES('214', '8', '2015-10-19 17:10:10');
INSERT INTO sr_log_acceso VALUES('215', '8', '2015-10-19 17:10:52');
INSERT INTO sr_log_acceso VALUES('216', '9', '2015-10-19 17:10:21');
INSERT INTO sr_log_acceso VALUES('217', '9', '2015-10-19 17:10:08');
INSERT INTO sr_log_acceso VALUES('218', '8', '2015-10-19 17:10:52');
INSERT INTO sr_log_acceso VALUES('219', '8', '2015-10-19 18:10:08');
INSERT INTO sr_log_acceso VALUES('220', '8', '2015-10-19 18:10:54');
INSERT INTO sr_log_acceso VALUES('221', '8', '2015-10-19 18:10:58');
INSERT INTO sr_log_acceso VALUES('222', '8', '2015-10-19 18:10:53');
INSERT INTO sr_log_acceso VALUES('223', '8', '2015-10-19 18:10:02');
INSERT INTO sr_log_acceso VALUES('224', '8', '2015-10-19 18:10:37');
INSERT INTO sr_log_acceso VALUES('225', '8', '2015-10-19 18:10:28');
INSERT INTO sr_log_acceso VALUES('226', '8', '2015-10-19 18:10:30');
INSERT INTO sr_log_acceso VALUES('227', '8', '2015-10-19 19:10:41');
INSERT INTO sr_log_acceso VALUES('228', '8', '2015-10-19 19:10:50');
INSERT INTO sr_log_acceso VALUES('229', '8', '2015-10-19 22:10:51');
INSERT INTO sr_log_acceso VALUES('230', '8', '2015-10-19 23:10:56');
INSERT INTO sr_log_acceso VALUES('231', '9', '2015-10-20 19:10:53');
INSERT INTO sr_log_acceso VALUES('232', '11', '2015-10-20 19:10:44');
INSERT INTO sr_log_acceso VALUES('233', '9', '2015-10-20 19:10:47');
INSERT INTO sr_log_acceso VALUES('234', '11', '2015-10-20 20:10:04');
INSERT INTO sr_log_acceso VALUES('235', '11', '2015-10-20 21:10:52');
INSERT INTO sr_log_acceso VALUES('236', '9', '2015-10-20 21:10:05');
INSERT INTO sr_log_acceso VALUES('237', '11', '2015-10-20 21:10:28');
INSERT INTO sr_log_acceso VALUES('238', '9', '2015-10-20 22:10:38');
INSERT INTO sr_log_acceso VALUES('239', '8', '2015-10-20 22:10:56');
INSERT INTO sr_log_acceso VALUES('240', '9', '2015-10-20 23:10:38');
INSERT INTO sr_log_acceso VALUES('241', '9', '2015-10-21 00:10:12');
INSERT INTO sr_log_acceso VALUES('242', '1', '2015-10-21 00:10:43');
INSERT INTO sr_log_acceso VALUES('243', '8', '2015-10-21 16:10:22');
INSERT INTO sr_log_acceso VALUES('244', '8', '2015-10-21 16:10:41');
INSERT INTO sr_log_acceso VALUES('245', '11', '2015-10-21 16:10:54');
INSERT INTO sr_log_acceso VALUES('246', '8', '2015-10-21 16:10:50');
INSERT INTO sr_log_acceso VALUES('247', '8', '2015-10-21 16:10:34');
INSERT INTO sr_log_acceso VALUES('248', '8', '2015-10-21 17:10:30');
INSERT INTO sr_log_acceso VALUES('249', '8', '2015-10-21 17:10:04');
INSERT INTO sr_log_acceso VALUES('250', '8', '2015-10-21 17:10:14');
INSERT INTO sr_log_acceso VALUES('251', '8', '2015-10-21 17:10:19');
INSERT INTO sr_log_acceso VALUES('252', '9', '2015-10-21 18:10:50');
INSERT INTO sr_log_acceso VALUES('253', '8', '2015-10-21 18:10:22');
INSERT INTO sr_log_acceso VALUES('254', '9', '2015-10-21 18:10:21');
INSERT INTO sr_log_acceso VALUES('255', '11', '2015-10-21 18:10:33');
INSERT INTO sr_log_acceso VALUES('256', '11', '2015-10-21 18:10:44');
INSERT INTO sr_log_acceso VALUES('257', '11', '2015-10-21 18:10:06');
INSERT INTO sr_log_acceso VALUES('258', '8', '2015-10-21 18:10:07');
INSERT INTO sr_log_acceso VALUES('259', '9', '2015-10-21 18:10:39');
INSERT INTO sr_log_acceso VALUES('260', '8', '2015-10-21 18:10:23');
INSERT INTO sr_log_acceso VALUES('261', '9', '2015-10-21 19:10:48');
INSERT INTO sr_log_acceso VALUES('262', '9', '2015-10-21 21:10:56');
INSERT INTO sr_log_acceso VALUES('263', '8', '2015-10-21 21:10:44');
INSERT INTO sr_log_acceso VALUES('264', '9', '2015-10-21 21:10:12');
INSERT INTO sr_log_acceso VALUES('265', '9', '2015-10-21 21:10:33');
INSERT INTO sr_log_acceso VALUES('266', '9', '2015-10-21 21:10:41');
INSERT INTO sr_log_acceso VALUES('267', '9', '2015-10-21 21:10:42');
INSERT INTO sr_log_acceso VALUES('268', '8', '2015-10-21 21:10:34');
INSERT INTO sr_log_acceso VALUES('269', '8', '2015-10-21 21:10:23');
INSERT INTO sr_log_acceso VALUES('270', '9', '2015-10-21 22:10:54');
INSERT INTO sr_log_acceso VALUES('271', '9', '2015-10-21 22:10:59');
INSERT INTO sr_log_acceso VALUES('272', '8', '2015-10-21 23:10:06');
INSERT INTO sr_log_acceso VALUES('273', '8', '2015-10-21 23:10:16');
INSERT INTO sr_log_acceso VALUES('274', '11', '2015-10-22 15:10:05');
INSERT INTO sr_log_acceso VALUES('275', '11', '2015-10-22 15:10:24');
INSERT INTO sr_log_acceso VALUES('276', '8', '2015-10-22 17:10:55');
INSERT INTO sr_log_acceso VALUES('277', '8', '2015-10-22 18:10:40');
INSERT INTO sr_log_acceso VALUES('278', '8', '2015-10-22 18:10:15');
INSERT INTO sr_log_acceso VALUES('279', '8', '2015-10-22 18:10:06');
INSERT INTO sr_log_acceso VALUES('280', '8', '2015-10-22 18:10:40');
INSERT INTO sr_log_acceso VALUES('281', '8', '2015-10-22 18:10:53');
INSERT INTO sr_log_acceso VALUES('282', '11', '2015-10-22 18:10:18');
INSERT INTO sr_log_acceso VALUES('283', '8', '2015-10-22 18:10:20');
INSERT INTO sr_log_acceso VALUES('284', '8', '2015-10-22 19:10:24');
INSERT INTO sr_log_acceso VALUES('285', '8', '2015-10-22 19:10:36');
INSERT INTO sr_log_acceso VALUES('286', '8', '2015-10-22 19:10:50');
INSERT INTO sr_log_acceso VALUES('287', '8', '2015-10-22 19:10:28');
INSERT INTO sr_log_acceso VALUES('288', '8', '2015-10-22 21:10:52');
INSERT INTO sr_log_acceso VALUES('289', '9', '2015-10-22 21:10:30');
INSERT INTO sr_log_acceso VALUES('290', '9', '2015-10-22 21:10:47');
INSERT INTO sr_log_acceso VALUES('291', '8', '2015-10-22 21:10:01');
INSERT INTO sr_log_acceso VALUES('292', '8', '2015-10-22 22:10:51');
INSERT INTO sr_log_acceso VALUES('293', '11', '2015-10-22 22:10:41');
INSERT INTO sr_log_acceso VALUES('294', '8', '2015-10-22 22:10:06');
INSERT INTO sr_log_acceso VALUES('295', '11', '2015-10-22 22:10:17');
INSERT INTO sr_log_acceso VALUES('296', '11', '2015-10-22 22:10:30');
INSERT INTO sr_log_acceso VALUES('297', '8', '2015-10-22 22:10:17');
INSERT INTO sr_log_acceso VALUES('298', '9', '2015-10-22 22:10:50');
INSERT INTO sr_log_acceso VALUES('299', '8', '2015-10-22 23:10:00');
INSERT INTO sr_log_acceso VALUES('300', '9', '2015-10-22 23:10:59');
INSERT INTO sr_log_acceso VALUES('301', '8', '2015-10-22 23:10:20');
INSERT INTO sr_log_acceso VALUES('302', '8', '2015-10-22 23:10:37');
INSERT INTO sr_log_acceso VALUES('303', '8', '2015-10-22 23:10:17');
INSERT INTO sr_log_acceso VALUES('304', '8', '2015-10-22 23:10:49');
INSERT INTO sr_log_acceso VALUES('305', '1', '2015-10-23 03:10:00');
INSERT INTO sr_log_acceso VALUES('306', '11', '2015-10-23 03:10:05');
INSERT INTO sr_log_acceso VALUES('307', '1', '2015-10-23 03:10:57');
INSERT INTO sr_log_acceso VALUES('308', '8', '2015-10-23 06:10:07');
INSERT INTO sr_log_acceso VALUES('309', '8', '2015-10-23 16:10:14');
INSERT INTO sr_log_acceso VALUES('310', '8', '2015-10-23 16:10:55');
INSERT INTO sr_log_acceso VALUES('311', '8', '2015-10-23 16:10:27');
INSERT INTO sr_log_acceso VALUES('312', '8', '2015-10-23 16:10:32');
INSERT INTO sr_log_acceso VALUES('313', '8', '2015-10-23 16:10:30');
INSERT INTO sr_log_acceso VALUES('314', '8', '2015-10-23 16:10:22');
INSERT INTO sr_log_acceso VALUES('315', '13', '2015-10-23 16:10:51');
INSERT INTO sr_log_acceso VALUES('316', '8', '2015-10-23 16:10:36');
INSERT INTO sr_log_acceso VALUES('317', '8', '2015-10-23 16:10:21');
INSERT INTO sr_log_acceso VALUES('318', '8', '2015-10-23 17:10:42');
INSERT INTO sr_log_acceso VALUES('319', '8', '2015-10-23 17:10:02');
INSERT INTO sr_log_acceso VALUES('320', '8', '2015-10-23 17:10:45');
INSERT INTO sr_log_acceso VALUES('321', '8', '2015-10-23 17:10:18');
INSERT INTO sr_log_acceso VALUES('322', '8', '2015-10-23 17:10:57');
INSERT INTO sr_log_acceso VALUES('323', '8', '2015-10-23 17:10:10');
INSERT INTO sr_log_acceso VALUES('324', '8', '2015-10-23 18:10:37');
INSERT INTO sr_log_acceso VALUES('325', '8', '2015-10-23 18:10:26');
INSERT INTO sr_log_acceso VALUES('326', '8', '2015-10-23 18:10:23');
INSERT INTO sr_log_acceso VALUES('327', '8', '2015-10-23 18:10:50');
INSERT INTO sr_log_acceso VALUES('328', '8', '2015-10-23 19:10:54');
INSERT INTO sr_log_acceso VALUES('329', '8', '2015-10-23 19:10:56');
INSERT INTO sr_log_acceso VALUES('330', '13', '2015-10-23 19:10:52');
INSERT INTO sr_log_acceso VALUES('331', '8', '2015-10-23 19:10:32');
INSERT INTO sr_log_acceso VALUES('332', '8', '2015-10-23 19:10:10');
INSERT INTO sr_log_acceso VALUES('333', '8', '2015-10-23 19:10:35');
INSERT INTO sr_log_acceso VALUES('334', '8', '2015-10-23 19:10:10');
INSERT INTO sr_log_acceso VALUES('335', '8', '2015-10-23 20:10:40');
INSERT INTO sr_log_acceso VALUES('336', '8', '2015-10-23 21:10:02');
INSERT INTO sr_log_acceso VALUES('337', '8', '2015-10-23 21:10:35');
INSERT INTO sr_log_acceso VALUES('338', '8', '2015-10-23 21:10:59');
INSERT INTO sr_log_acceso VALUES('339', '8', '2015-10-23 21:10:56');
INSERT INTO sr_log_acceso VALUES('340', '8', '2015-10-23 21:10:50');
INSERT INTO sr_log_acceso VALUES('341', '8', '2015-10-23 21:10:52');
INSERT INTO sr_log_acceso VALUES('342', '8', '2015-10-23 21:10:41');
INSERT INTO sr_log_acceso VALUES('343', '8', '2015-10-23 21:10:13');
INSERT INTO sr_log_acceso VALUES('344', '8', '2015-10-23 21:10:52');
INSERT INTO sr_log_acceso VALUES('345', '13', '2015-10-23 21:10:18');
INSERT INTO sr_log_acceso VALUES('346', '8', '2015-10-23 22:10:28');
INSERT INTO sr_log_acceso VALUES('347', '8', '2015-10-23 22:10:08');
INSERT INTO sr_log_acceso VALUES('348', '13', '2015-10-23 22:10:15');
INSERT INTO sr_log_acceso VALUES('349', '8', '2015-10-23 22:10:58');
INSERT INTO sr_log_acceso VALUES('350', '8', '2015-10-23 22:10:46');
INSERT INTO sr_log_acceso VALUES('351', '8', '2015-10-23 23:10:11');
INSERT INTO sr_log_acceso VALUES('352', '8', '2015-10-23 23:10:40');
INSERT INTO sr_log_acceso VALUES('353', '13', '2015-10-26 15:10:45');
INSERT INTO sr_log_acceso VALUES('354', '13', '2015-10-26 15:10:03');
INSERT INTO sr_log_acceso VALUES('355', '8', '2015-10-26 15:10:49');
INSERT INTO sr_log_acceso VALUES('356', '8', '2015-10-26 16:10:38');
INSERT INTO sr_log_acceso VALUES('357', '8', '2015-10-26 16:10:25');
INSERT INTO sr_log_acceso VALUES('358', '8', '2015-10-26 16:10:55');
INSERT INTO sr_log_acceso VALUES('359', '8', '2015-10-26 17:10:29');
INSERT INTO sr_log_acceso VALUES('360', '8', '2015-10-26 17:10:34');
INSERT INTO sr_log_acceso VALUES('361', '8', '2015-10-26 17:10:05');
INSERT INTO sr_log_acceso VALUES('362', '8', '2015-10-26 17:10:46');
INSERT INTO sr_log_acceso VALUES('363', '8', '2015-10-26 17:10:56');
INSERT INTO sr_log_acceso VALUES('364', '8', '2015-10-26 17:10:53');
INSERT INTO sr_log_acceso VALUES('365', '8', '2015-10-26 17:10:42');
INSERT INTO sr_log_acceso VALUES('366', '13', '2015-10-26 17:10:06');
INSERT INTO sr_log_acceso VALUES('367', '8', '2015-10-26 18:10:03');
INSERT INTO sr_log_acceso VALUES('368', '8', '2015-10-26 18:10:47');
INSERT INTO sr_log_acceso VALUES('369', '8', '2015-10-26 18:10:23');
INSERT INTO sr_log_acceso VALUES('370', '8', '2015-10-26 18:10:52');
INSERT INTO sr_log_acceso VALUES('371', '8', '2015-10-26 20:10:32');
INSERT INTO sr_log_acceso VALUES('372', '8', '2015-10-26 20:10:48');
INSERT INTO sr_log_acceso VALUES('373', '8', '2015-10-26 20:10:45');
INSERT INTO sr_log_acceso VALUES('374', '8', '2015-10-26 20:10:40');
INSERT INTO sr_log_acceso VALUES('375', '8', '2015-10-26 20:10:18');
INSERT INTO sr_log_acceso VALUES('376', '8', '2015-10-26 20:10:55');
INSERT INTO sr_log_acceso VALUES('377', '8', '2015-10-26 20:10:54');
INSERT INTO sr_log_acceso VALUES('378', '8', '2015-10-26 20:10:46');
INSERT INTO sr_log_acceso VALUES('379', '8', '2015-10-26 21:10:50');
INSERT INTO sr_log_acceso VALUES('380', '8', '2015-10-26 21:10:54');
INSERT INTO sr_log_acceso VALUES('381', '8', '2015-10-26 21:10:07');
INSERT INTO sr_log_acceso VALUES('382', '8', '2015-10-26 21:10:30');
INSERT INTO sr_log_acceso VALUES('383', '8', '2015-10-26 22:10:35');
INSERT INTO sr_log_acceso VALUES('384', '8', '2015-10-27 15:10:35');
INSERT INTO sr_log_acceso VALUES('385', '8', '2015-10-27 15:10:29');
INSERT INTO sr_log_acceso VALUES('386', '8', '2015-10-27 15:10:08');
INSERT INTO sr_log_acceso VALUES('387', '8', '2015-10-27 15:10:07');
INSERT INTO sr_log_acceso VALUES('388', '8', '2015-10-27 15:10:57');
INSERT INTO sr_log_acceso VALUES('389', '8', '2015-10-27 15:10:46');
INSERT INTO sr_log_acceso VALUES('390', '8', '2015-10-27 15:10:34');
INSERT INTO sr_log_acceso VALUES('391', '8', '2015-10-27 15:10:22');
INSERT INTO sr_log_acceso VALUES('392', '8', '2015-10-27 15:10:19');
INSERT INTO sr_log_acceso VALUES('393', '8', '2015-10-27 15:10:37');
INSERT INTO sr_log_acceso VALUES('394', '8', '2015-10-27 16:10:07');
INSERT INTO sr_log_acceso VALUES('395', '8', '2015-10-27 16:10:43');
INSERT INTO sr_log_acceso VALUES('396', '8', '2015-10-27 16:10:39');
INSERT INTO sr_log_acceso VALUES('397', '8', '2015-10-27 16:10:03');
INSERT INTO sr_log_acceso VALUES('398', '8', '2015-10-27 16:10:49');
INSERT INTO sr_log_acceso VALUES('399', '8', '2015-10-27 16:10:59');
INSERT INTO sr_log_acceso VALUES('400', '8', '2015-10-27 16:10:37');
INSERT INTO sr_log_acceso VALUES('401', '8', '2015-10-27 16:10:29');
INSERT INTO sr_log_acceso VALUES('402', '8', '2015-10-27 16:10:15');
INSERT INTO sr_log_acceso VALUES('403', '8', '2015-10-27 16:10:56');
INSERT INTO sr_log_acceso VALUES('404', '8', '2015-10-27 17:10:35');
INSERT INTO sr_log_acceso VALUES('405', '8', '2015-10-27 17:10:18');
INSERT INTO sr_log_acceso VALUES('406', '8', '2015-10-27 17:10:56');
INSERT INTO sr_log_acceso VALUES('407', '8', '2015-10-27 17:10:07');
INSERT INTO sr_log_acceso VALUES('408', '8', '2015-10-27 20:10:02');
INSERT INTO sr_log_acceso VALUES('409', '8', '2015-10-27 20:10:31');
INSERT INTO sr_log_acceso VALUES('410', '8', '2015-10-27 20:10:27');
INSERT INTO sr_log_acceso VALUES('411', '8', '2015-10-27 23:10:32');
INSERT INTO sr_log_acceso VALUES('412', '8', '2015-10-27 23:10:01');
INSERT INTO sr_log_acceso VALUES('413', '10', '2015-10-27 23:10:21');
INSERT INTO sr_log_acceso VALUES('414', '13', '2015-10-28 00:10:39');
INSERT INTO sr_log_acceso VALUES('415', '2', '2015-10-28 01:10:29');
INSERT INTO sr_log_acceso VALUES('416', '8', '2015-10-28 15:10:34');
INSERT INTO sr_log_acceso VALUES('417', '8', '2015-10-28 15:10:43');
INSERT INTO sr_log_acceso VALUES('418', '10', '2015-10-28 16:10:23');
INSERT INTO sr_log_acceso VALUES('419', '8', '2015-10-28 16:10:47');
INSERT INTO sr_log_acceso VALUES('420', '8', '2015-10-28 16:10:02');
INSERT INTO sr_log_acceso VALUES('421', '8', '2015-10-28 16:10:36');
INSERT INTO sr_log_acceso VALUES('422', '8', '2015-10-28 16:10:05');
INSERT INTO sr_log_acceso VALUES('423', '8', '2015-10-28 16:10:34');
INSERT INTO sr_log_acceso VALUES('424', '8', '2015-10-28 16:10:36');
INSERT INTO sr_log_acceso VALUES('425', '8', '2015-10-28 16:10:14');
INSERT INTO sr_log_acceso VALUES('426', '8', '2015-10-28 16:10:12');
INSERT INTO sr_log_acceso VALUES('427', '8', '2015-10-28 16:10:59');
INSERT INTO sr_log_acceso VALUES('428', '8', '2015-10-28 16:10:18');
INSERT INTO sr_log_acceso VALUES('429', '8', '2015-10-28 16:10:22');
INSERT INTO sr_log_acceso VALUES('430', '8', '2015-10-28 16:10:56');
INSERT INTO sr_log_acceso VALUES('431', '8', '2015-10-28 16:10:35');
INSERT INTO sr_log_acceso VALUES('432', '8', '2015-10-28 17:10:50');
INSERT INTO sr_log_acceso VALUES('433', '8', '2015-10-28 17:10:25');
INSERT INTO sr_log_acceso VALUES('434', '8', '2015-10-28 17:10:20');
INSERT INTO sr_log_acceso VALUES('435', '10', '2015-10-28 18:10:53');
INSERT INTO sr_log_acceso VALUES('436', '10', '2015-10-28 18:10:27');
INSERT INTO sr_log_acceso VALUES('437', '13', '2015-10-28 18:10:22');
INSERT INTO sr_log_acceso VALUES('438', '13', '2015-10-28 20:10:06');
INSERT INTO sr_log_acceso VALUES('439', '10', '2015-10-28 20:10:42');
INSERT INTO sr_log_acceso VALUES('440', '10', '2015-10-28 20:10:00');
INSERT INTO sr_log_acceso VALUES('441', '10', '2015-10-28 21:10:34');
INSERT INTO sr_log_acceso VALUES('442', '10', '2015-10-28 21:10:43');
INSERT INTO sr_log_acceso VALUES('443', '8', '2015-10-28 22:10:59');
INSERT INTO sr_log_acceso VALUES('444', '8', '2015-10-28 22:10:01');
INSERT INTO sr_log_acceso VALUES('445', '10', '2015-10-28 23:10:23');
INSERT INTO sr_log_acceso VALUES('446', '10', '2015-10-28 23:10:25');
INSERT INTO sr_log_acceso VALUES('447', '10', '2015-10-28 23:10:41');
INSERT INTO sr_log_acceso VALUES('448', '8', '2015-10-29 15:10:37');
INSERT INTO sr_log_acceso VALUES('449', '10', '2015-10-29 15:10:47');
INSERT INTO sr_log_acceso VALUES('450', '13', '2015-10-29 15:10:31');
INSERT INTO sr_log_acceso VALUES('451', '8', '2015-10-29 16:10:05');
INSERT INTO sr_log_acceso VALUES('452', '8', '2015-10-29 16:10:09');
INSERT INTO sr_log_acceso VALUES('453', '8', '2015-10-29 16:10:09');
INSERT INTO sr_log_acceso VALUES('454', '8', '2015-10-29 16:10:43');
INSERT INTO sr_log_acceso VALUES('455', '8', '2015-10-29 16:10:47');
INSERT INTO sr_log_acceso VALUES('456', '8', '2015-10-29 16:10:58');
INSERT INTO sr_log_acceso VALUES('457', '8', '2015-10-29 16:10:14');
INSERT INTO sr_log_acceso VALUES('458', '8', '2015-10-29 16:10:25');
INSERT INTO sr_log_acceso VALUES('459', '8', '2015-10-29 16:10:15');
INSERT INTO sr_log_acceso VALUES('460', '8', '2015-10-29 16:10:22');
INSERT INTO sr_log_acceso VALUES('461', '8', '2015-10-29 16:10:28');
INSERT INTO sr_log_acceso VALUES('462', '8', '2015-10-29 16:10:44');
INSERT INTO sr_log_acceso VALUES('463', '8', '2015-10-29 17:10:17');
INSERT INTO sr_log_acceso VALUES('464', '8', '2015-10-29 17:10:32');
INSERT INTO sr_log_acceso VALUES('465', '8', '2015-10-29 17:10:10');
INSERT INTO sr_log_acceso VALUES('466', '8', '2015-10-29 17:10:17');
INSERT INTO sr_log_acceso VALUES('467', '8', '2015-10-29 17:10:35');
INSERT INTO sr_log_acceso VALUES('468', '10', '2015-10-29 17:10:55');
INSERT INTO sr_log_acceso VALUES('469', '8', '2015-10-29 18:10:00');
INSERT INTO sr_log_acceso VALUES('470', '8', '2015-10-29 18:10:31');
INSERT INTO sr_log_acceso VALUES('471', '8', '2015-10-29 18:10:41');
INSERT INTO sr_log_acceso VALUES('472', '8', '2015-10-29 20:10:16');
INSERT INTO sr_log_acceso VALUES('473', '8', '2015-10-29 20:10:51');
INSERT INTO sr_log_acceso VALUES('474', '8', '2015-10-29 20:10:46');
INSERT INTO sr_log_acceso VALUES('475', '8', '2015-10-29 21:10:09');
INSERT INTO sr_log_acceso VALUES('476', '8', '2015-10-29 21:10:36');
INSERT INTO sr_log_acceso VALUES('477', '8', '2015-10-29 21:10:33');
INSERT INTO sr_log_acceso VALUES('478', '8', '2015-10-29 22:10:28');
INSERT INTO sr_log_acceso VALUES('479', '8', '2015-10-29 22:10:10');
INSERT INTO sr_log_acceso VALUES('480', '1', '2015-10-30 00:10:01');
INSERT INTO sr_log_acceso VALUES('481', '8', '2015-10-30 01:10:04');
INSERT INTO sr_log_acceso VALUES('482', '8', '2015-10-30 01:10:56');
INSERT INTO sr_log_acceso VALUES('483', '10', '2015-10-30 01:10:05');
INSERT INTO sr_log_acceso VALUES('484', '1', '2015-10-30 01:10:25');
INSERT INTO sr_log_acceso VALUES('485', '10', '2015-10-30 01:10:41');
INSERT INTO sr_log_acceso VALUES('486', '8', '2015-10-30 15:10:14');
INSERT INTO sr_log_acceso VALUES('487', '10', '2015-10-30 15:10:25');
INSERT INTO sr_log_acceso VALUES('488', '10', '2015-10-30 15:10:51');
INSERT INTO sr_log_acceso VALUES('489', '8', '2015-10-30 15:10:07');
INSERT INTO sr_log_acceso VALUES('490', '8', '2015-10-30 16:10:49');
INSERT INTO sr_log_acceso VALUES('491', '8', '2015-10-30 16:10:39');
INSERT INTO sr_log_acceso VALUES('492', '8', '2015-10-30 17:10:19');
INSERT INTO sr_log_acceso VALUES('493', '8', '2015-10-30 17:10:37');
INSERT INTO sr_log_acceso VALUES('494', '8', '2015-10-30 18:10:12');
INSERT INTO sr_log_acceso VALUES('495', '8', '2015-10-30 18:10:34');
INSERT INTO sr_log_acceso VALUES('496', '8', '2015-10-30 20:10:31');
INSERT INTO sr_log_acceso VALUES('497', '8', '2015-10-30 21:10:24');
INSERT INTO sr_log_acceso VALUES('498', '8', '2015-10-30 21:10:40');
INSERT INTO sr_log_acceso VALUES('499', '8', '2015-10-30 22:10:48');
INSERT INTO sr_log_acceso VALUES('500', '8', '2015-11-03 15:11:02');
INSERT INTO sr_log_acceso VALUES('501', '8', '2015-11-03 15:11:02');
INSERT INTO sr_log_acceso VALUES('502', '8', '2015-11-03 15:11:30');
INSERT INTO sr_log_acceso VALUES('503', '1', '2015-11-03 15:11:52');
INSERT INTO sr_log_acceso VALUES('504', '8', '2015-11-03 15:11:16');
INSERT INTO sr_log_acceso VALUES('505', '1', '2015-11-03 15:11:22');
INSERT INTO sr_log_acceso VALUES('506', '1', '2015-11-03 15:11:29');
INSERT INTO sr_log_acceso VALUES('507', '1', '2015-11-03 15:11:08');
INSERT INTO sr_log_acceso VALUES('508', '2', '2015-11-03 15:11:24');
INSERT INTO sr_log_acceso VALUES('509', '14', '2015-11-03 15:11:46');
INSERT INTO sr_log_acceso VALUES('510', '8', '2015-11-03 16:11:49');
INSERT INTO sr_log_acceso VALUES('511', '8', '2015-11-03 17:11:02');
INSERT INTO sr_log_acceso VALUES('512', '8', '2015-11-03 18:11:59');
INSERT INTO sr_log_acceso VALUES('513', '14', '2015-11-03 19:11:56');
INSERT INTO sr_log_acceso VALUES('514', '14', '2015-11-03 19:11:29');
INSERT INTO sr_log_acceso VALUES('515', '14', '2015-11-03 19:11:07');
INSERT INTO sr_log_acceso VALUES('516', '8', '2015-11-03 20:11:35');
INSERT INTO sr_log_acceso VALUES('517', '14', '2015-11-03 20:11:38');
INSERT INTO sr_log_acceso VALUES('518', '8', '2015-11-03 20:11:30');
INSERT INTO sr_log_acceso VALUES('519', '13', '2015-11-03 20:11:31');
INSERT INTO sr_log_acceso VALUES('520', '8', '2015-11-03 21:11:19');
INSERT INTO sr_log_acceso VALUES('521', '8', '2015-11-03 22:11:14');
INSERT INTO sr_log_acceso VALUES('522', '8', '2015-11-04 17:11:42');
INSERT INTO sr_log_acceso VALUES('523', '13', '2015-11-04 18:11:06');
INSERT INTO sr_log_acceso VALUES('524', '13', '2015-11-04 20:11:45');
INSERT INTO sr_log_acceso VALUES('525', '8', '2015-11-05 15:11:58');
INSERT INTO sr_log_acceso VALUES('526', '8', '2015-11-05 15:11:45');
INSERT INTO sr_log_acceso VALUES('527', '8', '2015-11-05 17:11:47');
INSERT INTO sr_log_acceso VALUES('528', '8', '2015-11-05 18:11:21');
INSERT INTO sr_log_acceso VALUES('529', '8', '2015-11-05 20:11:37');
INSERT INTO sr_log_acceso VALUES('530', '8', '2015-11-05 20:11:43');
INSERT INTO sr_log_acceso VALUES('531', '8', '2015-11-05 20:11:49');
INSERT INTO sr_log_acceso VALUES('532', '8', '2015-11-05 22:11:06');
INSERT INTO sr_log_acceso VALUES('533', '8', '2015-11-05 22:11:13');
INSERT INTO sr_log_acceso VALUES('534', '8', '2015-11-05 22:11:24');
INSERT INTO sr_log_acceso VALUES('535', '14', '2015-11-05 23:11:14');
INSERT INTO sr_log_acceso VALUES('536', '14', '2015-11-06 15:11:18');
INSERT INTO sr_log_acceso VALUES('537', '8', '2015-11-06 16:11:12');
INSERT INTO sr_log_acceso VALUES('538', '8', '2015-11-06 16:11:55');
INSERT INTO sr_log_acceso VALUES('539', '8', '2015-11-06 16:11:34');
INSERT INTO sr_log_acceso VALUES('540', '8', '2015-11-06 16:11:06');
INSERT INTO sr_log_acceso VALUES('541', '8', '2015-11-06 16:11:18');
INSERT INTO sr_log_acceso VALUES('542', '8', '2015-11-06 20:11:01');
INSERT INTO sr_log_acceso VALUES('543', '8', '2015-11-06 22:11:26');
INSERT INTO sr_log_acceso VALUES('544', '8', '2015-11-06 22:11:26');
INSERT INTO sr_log_acceso VALUES('545', '8', '2015-11-06 22:11:28');
INSERT INTO sr_log_acceso VALUES('546', '8', '2015-11-09 16:11:29');
INSERT INTO sr_log_acceso VALUES('547', '8', '2015-11-09 16:11:43');
INSERT INTO sr_log_acceso VALUES('548', '8', '2015-11-09 17:11:10');
INSERT INTO sr_log_acceso VALUES('549', '8', '2015-11-09 17:11:23');
INSERT INTO sr_log_acceso VALUES('550', '8', '2015-11-09 18:11:04');
INSERT INTO sr_log_acceso VALUES('551', '8', '2015-11-09 18:11:57');
INSERT INTO sr_log_acceso VALUES('552', '8', '2015-11-09 18:11:38');
INSERT INTO sr_log_acceso VALUES('553', '8', '2015-11-09 18:11:31');
INSERT INTO sr_log_acceso VALUES('554', '8', '2015-11-09 20:11:01');
INSERT INTO sr_log_acceso VALUES('555', '8', '2015-11-09 20:11:15');
INSERT INTO sr_log_acceso VALUES('556', '8', '2015-11-09 21:11:37');
INSERT INTO sr_log_acceso VALUES('557', '8', '2015-11-09 21:11:44');
INSERT INTO sr_log_acceso VALUES('558', '8', '2015-11-09 21:11:09');
INSERT INTO sr_log_acceso VALUES('559', '8', '2015-11-09 22:11:27');
INSERT INTO sr_log_acceso VALUES('560', '8', '2015-11-10 15:11:30');
INSERT INTO sr_log_acceso VALUES('561', '8', '2015-11-10 15:11:33');
INSERT INTO sr_log_acceso VALUES('562', '8', '2015-11-10 15:11:40');
INSERT INTO sr_log_acceso VALUES('563', '8', '2015-11-10 16:11:54');
INSERT INTO sr_log_acceso VALUES('564', '8', '2015-11-10 18:11:55');
INSERT INTO sr_log_acceso VALUES('565', '8', '2015-11-10 20:11:38');
INSERT INTO sr_log_acceso VALUES('566', '8', '2015-11-10 20:11:32');
INSERT INTO sr_log_acceso VALUES('567', '8', '2015-11-10 21:11:18');
INSERT INTO sr_log_acceso VALUES('568', '13', '2015-11-11 15:11:13');
INSERT INTO sr_log_acceso VALUES('569', '8', '2015-11-11 15:11:02');
INSERT INTO sr_log_acceso VALUES('570', '8', '2015-11-11 15:11:53');
INSERT INTO sr_log_acceso VALUES('571', '8', '2015-11-11 16:11:15');
INSERT INTO sr_log_acceso VALUES('572', '8', '2015-11-11 16:11:24');
INSERT INTO sr_log_acceso VALUES('573', '8', '2015-11-11 16:11:20');
INSERT INTO sr_log_acceso VALUES('574', '8', '2015-11-11 16:11:20');
INSERT INTO sr_log_acceso VALUES('575', '8', '2015-11-11 16:11:44');
INSERT INTO sr_log_acceso VALUES('576', '8', '2015-11-11 17:11:57');
INSERT INTO sr_log_acceso VALUES('577', '8', '2015-11-11 17:11:45');
INSERT INTO sr_log_acceso VALUES('578', '8', '2015-11-11 17:11:29');
INSERT INTO sr_log_acceso VALUES('579', '8', '2015-11-11 18:11:42');
INSERT INTO sr_log_acceso VALUES('580', '8', '2015-11-11 20:11:58');
INSERT INTO sr_log_acceso VALUES('581', '8', '2015-11-11 20:11:20');
INSERT INTO sr_log_acceso VALUES('582', '8', '2015-11-11 22:11:57');
INSERT INTO sr_log_acceso VALUES('583', '1', '2015-11-11 23:11:02');
INSERT INTO sr_log_acceso VALUES('584', '1', '2015-11-11 23:11:49');
INSERT INTO sr_log_acceso VALUES('585', '1', '2015-11-12 05:11:36');
INSERT INTO sr_log_acceso VALUES('586', '8', '2015-11-12 15:11:01');
INSERT INTO sr_log_acceso VALUES('587', '14', '2015-11-12 15:11:22');
INSERT INTO sr_log_acceso VALUES('588', '1', '2015-11-12 15:11:26');
INSERT INTO sr_log_acceso VALUES('589', '13', '2015-11-12 15:11:54');
INSERT INTO sr_log_acceso VALUES('590', '14', '2015-11-12 15:11:31');
INSERT INTO sr_log_acceso VALUES('591', '8', '2015-11-12 15:11:50');
INSERT INTO sr_log_acceso VALUES('592', '8', '2015-11-12 15:11:47');
INSERT INTO sr_log_acceso VALUES('593', '8', '2015-11-12 16:11:21');
INSERT INTO sr_log_acceso VALUES('594', '8', '2015-11-12 16:11:38');
INSERT INTO sr_log_acceso VALUES('595', '8', '2015-11-12 20:11:33');
INSERT INTO sr_log_acceso VALUES('596', '8', '2015-11-12 20:11:21');
INSERT INTO sr_log_acceso VALUES('597', '8', '2015-11-12 20:11:15');
INSERT INTO sr_log_acceso VALUES('598', '8', '2015-11-12 21:11:54');
INSERT INTO sr_log_acceso VALUES('599', '8', '2015-11-12 22:11:47');
INSERT INTO sr_log_acceso VALUES('600', '8', '2015-11-12 22:11:00');
INSERT INTO sr_log_acceso VALUES('601', '8', '2015-11-12 22:11:28');
INSERT INTO sr_log_acceso VALUES('602', '8', '2015-11-12 22:11:27');
INSERT INTO sr_log_acceso VALUES('603', '8', '2015-11-13 15:11:48');
INSERT INTO sr_log_acceso VALUES('604', '8', '2015-11-13 15:11:11');
INSERT INTO sr_log_acceso VALUES('605', '8', '2015-11-13 15:11:22');
INSERT INTO sr_log_acceso VALUES('606', '8', '2015-11-13 16:11:51');
INSERT INTO sr_log_acceso VALUES('607', '8', '2015-11-13 16:11:49');
INSERT INTO sr_log_acceso VALUES('608', '8', '2015-11-13 17:11:46');
INSERT INTO sr_log_acceso VALUES('609', '8', '2015-11-13 18:11:18');
INSERT INTO sr_log_acceso VALUES('610', '8', '2015-11-13 19:11:41');
INSERT INTO sr_log_acceso VALUES('611', '8', '2015-11-13 20:11:19');
INSERT INTO sr_log_acceso VALUES('612', '8', '2015-11-13 20:11:05');
INSERT INTO sr_log_acceso VALUES('613', '8', '2015-11-13 21:11:33');
INSERT INTO sr_log_acceso VALUES('614', '8', '2015-11-16 15:11:09');
INSERT INTO sr_log_acceso VALUES('615', '8', '2015-11-16 15:11:54');
INSERT INTO sr_log_acceso VALUES('616', '8', '2015-11-16 15:11:51');
INSERT INTO sr_log_acceso VALUES('617', '8', '2015-11-16 16:11:42');
INSERT INTO sr_log_acceso VALUES('618', '8', '2015-11-16 17:11:47');
INSERT INTO sr_log_acceso VALUES('619', '8', '2015-11-16 17:11:42');
INSERT INTO sr_log_acceso VALUES('620', '8', '2015-11-16 17:11:50');
INSERT INTO sr_log_acceso VALUES('621', '8', '2015-11-16 17:11:05');
INSERT INTO sr_log_acceso VALUES('622', '8', '2015-11-16 17:11:32');
INSERT INTO sr_log_acceso VALUES('623', '8', '2015-11-16 17:11:54');
INSERT INTO sr_log_acceso VALUES('624', '8', '2015-11-16 18:11:59');
INSERT INTO sr_log_acceso VALUES('625', '8', '2015-11-16 18:11:37');
INSERT INTO sr_log_acceso VALUES('626', '8', '2015-11-16 18:11:58');
INSERT INTO sr_log_acceso VALUES('627', '8', '2015-11-16 18:11:36');
INSERT INTO sr_log_acceso VALUES('628', '8', '2015-11-16 18:11:39');
INSERT INTO sr_log_acceso VALUES('629', '8', '2015-11-16 22:11:16');
INSERT INTO sr_log_acceso VALUES('630', '8', '2015-11-17 15:11:52');
INSERT INTO sr_log_acceso VALUES('631', '8', '2015-11-17 17:11:16');
INSERT INTO sr_log_acceso VALUES('632', '8', '2015-11-17 19:11:37');
INSERT INTO sr_log_acceso VALUES('633', '8', '2015-11-17 20:11:05');
INSERT INTO sr_log_acceso VALUES('634', '8', '2015-11-17 20:11:33');
INSERT INTO sr_log_acceso VALUES('635', '8', '2015-11-17 20:11:34');
INSERT INTO sr_log_acceso VALUES('636', '8', '2015-11-17 20:11:48');
INSERT INTO sr_log_acceso VALUES('637', '8', '2015-11-17 20:11:28');
INSERT INTO sr_log_acceso VALUES('638', '8', '2015-11-17 21:11:21');
INSERT INTO sr_log_acceso VALUES('639', '8', '2015-11-17 21:11:29');
INSERT INTO sr_log_acceso VALUES('640', '8', '2015-11-17 22:11:27');
INSERT INTO sr_log_acceso VALUES('641', '8', '2015-11-17 22:11:22');
INSERT INTO sr_log_acceso VALUES('642', '8', '2015-11-17 22:11:07');
INSERT INTO sr_log_acceso VALUES('643', '8', '2015-11-18 15:11:37');
INSERT INTO sr_log_acceso VALUES('644', '8', '2015-11-18 17:11:12');
INSERT INTO sr_log_acceso VALUES('645', '8', '2015-11-18 18:11:25');
INSERT INTO sr_log_acceso VALUES('646', '8', '2015-11-18 18:11:17');
INSERT INTO sr_log_acceso VALUES('647', '8', '2015-11-18 18:11:19');
INSERT INTO sr_log_acceso VALUES('648', '8', '2015-11-18 18:11:02');
INSERT INTO sr_log_acceso VALUES('649', '8', '2015-11-18 18:11:33');
INSERT INTO sr_log_acceso VALUES('650', '8', '2015-11-18 18:11:33');
INSERT INTO sr_log_acceso VALUES('651', '8', '2015-11-18 18:11:46');
INSERT INTO sr_log_acceso VALUES('652', '8', '2015-11-18 21:11:07');
INSERT INTO sr_log_acceso VALUES('653', '8', '2015-11-18 22:11:19');
INSERT INTO sr_log_acceso VALUES('654', '8', '2015-11-18 22:11:30');
INSERT INTO sr_log_acceso VALUES('655', '8', '2015-11-19 15:11:24');
INSERT INTO sr_log_acceso VALUES('656', '8', '2015-11-19 15:11:38');
INSERT INTO sr_log_acceso VALUES('657', '8', '2015-11-19 15:11:43');
INSERT INTO sr_log_acceso VALUES('658', '8', '2015-11-19 15:11:36');
INSERT INTO sr_log_acceso VALUES('659', '8', '2015-11-19 15:11:59');
INSERT INTO sr_log_acceso VALUES('660', '8', '2015-11-19 16:11:53');
INSERT INTO sr_log_acceso VALUES('661', '8', '2015-11-19 17:11:23');
INSERT INTO sr_log_acceso VALUES('662', '8', '2015-11-19 17:11:15');
INSERT INTO sr_log_acceso VALUES('663', '8', '2015-11-19 17:11:42');
INSERT INTO sr_log_acceso VALUES('664', '8', '2015-11-19 17:11:22');
INSERT INTO sr_log_acceso VALUES('665', '8', '2015-11-19 17:11:00');
INSERT INTO sr_log_acceso VALUES('666', '8', '2015-11-19 17:11:57');
INSERT INTO sr_log_acceso VALUES('667', '8', '2015-11-19 18:11:22');
INSERT INTO sr_log_acceso VALUES('668', '8', '2015-11-19 18:11:45');
INSERT INTO sr_log_acceso VALUES('669', '8', '2015-11-19 18:11:57');
INSERT INTO sr_log_acceso VALUES('670', '8', '2015-11-19 20:11:50');
INSERT INTO sr_log_acceso VALUES('671', '8', '2015-11-19 21:11:45');
INSERT INTO sr_log_acceso VALUES('672', '8', '2015-11-19 21:11:22');
INSERT INTO sr_log_acceso VALUES('673', '8', '2015-11-19 22:11:13');
INSERT INTO sr_log_acceso VALUES('674', '8', '2015-11-19 22:11:47');
INSERT INTO sr_log_acceso VALUES('675', '8', '2015-11-19 22:11:02');
INSERT INTO sr_log_acceso VALUES('676', '8', '2015-11-19 22:11:03');
INSERT INTO sr_log_acceso VALUES('677', '8', '2015-11-20 15:11:50');
INSERT INTO sr_log_acceso VALUES('678', '8', '2015-11-20 15:11:46');
INSERT INTO sr_log_acceso VALUES('679', '8', '2015-11-20 16:11:20');
INSERT INTO sr_log_acceso VALUES('680', '8', '2015-11-20 16:11:48');
INSERT INTO sr_log_acceso VALUES('681', '8', '2015-11-20 17:11:34');
INSERT INTO sr_log_acceso VALUES('682', '8', '2015-11-20 17:11:04');
INSERT INTO sr_log_acceso VALUES('683', '14', '2015-11-20 21:11:10');
INSERT INTO sr_log_acceso VALUES('684', '8', '2015-11-23 20:11:03');
INSERT INTO sr_log_acceso VALUES('685', '8', '2015-11-23 22:11:31');
INSERT INTO sr_log_acceso VALUES('686', '8', '2015-11-23 22:11:11');
INSERT INTO sr_log_acceso VALUES('687', '14', '2015-11-24 00:11:57');
INSERT INTO sr_log_acceso VALUES('688', '8', '2015-11-24 15:11:31');
INSERT INTO sr_log_acceso VALUES('689', '8', '2015-11-24 15:11:34');
INSERT INTO sr_log_acceso VALUES('690', '8', '2015-11-24 15:11:56');
INSERT INTO sr_log_acceso VALUES('691', '8', '2015-11-24 15:11:27');
INSERT INTO sr_log_acceso VALUES('692', '8', '2015-11-24 15:11:58');
INSERT INTO sr_log_acceso VALUES('693', '8', '2015-11-24 15:11:18');
INSERT INTO sr_log_acceso VALUES('694', '8', '2015-11-24 15:11:54');
INSERT INTO sr_log_acceso VALUES('695', '8', '2015-11-24 15:11:16');
INSERT INTO sr_log_acceso VALUES('696', '8', '2015-11-24 15:11:09');
INSERT INTO sr_log_acceso VALUES('697', '8', '2015-11-24 15:11:46');
INSERT INTO sr_log_acceso VALUES('698', '8', '2015-11-24 15:11:49');
INSERT INTO sr_log_acceso VALUES('699', '8', '2015-11-24 15:11:26');
INSERT INTO sr_log_acceso VALUES('700', '8', '2015-11-24 16:11:38');
INSERT INTO sr_log_acceso VALUES('701', '8', '2015-11-24 21:11:36');
INSERT INTO sr_log_acceso VALUES('702', '8', '2015-11-24 21:11:24');
INSERT INTO sr_log_acceso VALUES('703', '8', '2015-11-24 22:11:55');
INSERT INTO sr_log_acceso VALUES('704', '8', '2015-11-24 22:11:28');
INSERT INTO sr_log_acceso VALUES('705', '8', '2015-11-25 15:11:58');
INSERT INTO sr_log_acceso VALUES('706', '8', '2015-11-25 15:11:31');
INSERT INTO sr_log_acceso VALUES('707', '8', '2015-11-25 15:11:31');
INSERT INTO sr_log_acceso VALUES('708', '8', '2015-11-25 15:11:49');
INSERT INTO sr_log_acceso VALUES('709', '8', '2015-11-25 15:11:56');
INSERT INTO sr_log_acceso VALUES('710', '8', '2015-11-25 16:11:21');
INSERT INTO sr_log_acceso VALUES('711', '8', '2015-11-25 20:11:20');
INSERT INTO sr_log_acceso VALUES('712', '8', '2015-11-25 21:11:41');
INSERT INTO sr_log_acceso VALUES('713', '8', '2015-11-25 21:11:04');
INSERT INTO sr_log_acceso VALUES('714', '14', '2015-11-26 15:11:55');
INSERT INTO sr_log_acceso VALUES('715', '8', '2015-11-26 21:11:04');
INSERT INTO sr_log_acceso VALUES('716', '8', '2015-11-26 22:11:49');
INSERT INTO sr_log_acceso VALUES('717', '8', '2015-11-26 22:11:35');
INSERT INTO sr_log_acceso VALUES('718', '13', '2015-11-27 15:11:06');
INSERT INTO sr_log_acceso VALUES('719', '1', '2015-11-27 15:11:04');
INSERT INTO sr_log_acceso VALUES('720', '13', '2015-11-27 15:11:05');
INSERT INTO sr_log_acceso VALUES('721', '14', '2015-11-27 16:11:21');
INSERT INTO sr_log_acceso VALUES('722', '8', '2015-11-27 20:11:27');
INSERT INTO sr_log_acceso VALUES('723', '8', '2015-11-27 20:11:15');
INSERT INTO sr_log_acceso VALUES('724', '13', '2015-11-27 21:11:32');
INSERT INTO sr_log_acceso VALUES('725', '13', '2015-11-27 22:11:38');
INSERT INTO sr_log_acceso VALUES('726', '8', '2015-11-30 15:11:44');
INSERT INTO sr_log_acceso VALUES('727', '8', '2015-11-30 16:11:20');
INSERT INTO sr_log_acceso VALUES('728', '8', '2015-11-30 17:11:51');
INSERT INTO sr_log_acceso VALUES('729', '14', '2015-11-30 19:11:45');
INSERT INTO sr_log_acceso VALUES('730', '8', '2015-12-01 18:12:09');
INSERT INTO sr_log_acceso VALUES('731', '8', '2015-12-01 22:12:25');
INSERT INTO sr_log_acceso VALUES('732', '14', '2015-12-02 01:12:12');
INSERT INTO sr_log_acceso VALUES('733', '8', '2015-12-02 01:12:38');
INSERT INTO sr_log_acceso VALUES('734', '2', '2015-12-02 02:12:04');
INSERT INTO sr_log_acceso VALUES('735', '14', '2015-12-02 15:12:14');
INSERT INTO sr_log_acceso VALUES('736', '8', '2015-12-02 15:12:34');
INSERT INTO sr_log_acceso VALUES('737', '8', '2015-12-02 16:12:32');
INSERT INTO sr_log_acceso VALUES('738', '8', '2015-12-02 20:12:27');
INSERT INTO sr_log_acceso VALUES('739', '8', '2015-12-03 15:12:55');
INSERT INTO sr_log_acceso VALUES('740', '8', '2015-12-03 15:12:20');
INSERT INTO sr_log_acceso VALUES('741', '8', '2015-12-03 18:12:44');
INSERT INTO sr_log_acceso VALUES('742', '8', '2015-12-03 20:12:25');
INSERT INTO sr_log_acceso VALUES('743', '8', '2015-12-03 21:12:57');
INSERT INTO sr_log_acceso VALUES('744', '8', '2015-12-03 21:12:06');
INSERT INTO sr_log_acceso VALUES('745', '8', '2015-12-03 21:12:00');
INSERT INTO sr_log_acceso VALUES('746', '8', '2015-12-03 21:12:23');
INSERT INTO sr_log_acceso VALUES('747', '8', '2015-12-03 21:12:19');
INSERT INTO sr_log_acceso VALUES('748', '8', '2015-12-03 21:12:33');
INSERT INTO sr_log_acceso VALUES('749', '8', '2015-12-04 18:12:40');
INSERT INTO sr_log_acceso VALUES('750', '8', '2015-12-04 18:12:06');
INSERT INTO sr_log_acceso VALUES('751', '8', '2015-12-04 18:12:20');
INSERT INTO sr_log_acceso VALUES('752', '8', '2015-12-04 18:12:07');
INSERT INTO sr_log_acceso VALUES('753', '8', '2015-12-04 18:12:25');
INSERT INTO sr_log_acceso VALUES('754', '8', '2015-12-04 20:12:40');
INSERT INTO sr_log_acceso VALUES('755', '8', '2015-12-04 20:12:41');
INSERT INTO sr_log_acceso VALUES('756', '8', '2015-12-04 20:12:02');
INSERT INTO sr_log_acceso VALUES('757', '14', '2015-12-04 20:12:28');
INSERT INTO sr_log_acceso VALUES('758', '8', '2015-12-04 20:12:14');
INSERT INTO sr_log_acceso VALUES('759', '8', '2015-12-07 15:12:52');
INSERT INTO sr_log_acceso VALUES('760', '8', '2015-12-07 15:12:36');
INSERT INTO sr_log_acceso VALUES('761', '8', '2015-12-07 15:12:08');
INSERT INTO sr_log_acceso VALUES('762', '8', '2015-12-07 15:12:41');
INSERT INTO sr_log_acceso VALUES('763', '8', '2015-12-07 17:12:33');
INSERT INTO sr_log_acceso VALUES('764', '8', '2015-12-07 17:12:45');
INSERT INTO sr_log_acceso VALUES('765', '8', '2015-12-07 17:12:46');
INSERT INTO sr_log_acceso VALUES('766', '8', '2015-12-07 17:12:26');
INSERT INTO sr_log_acceso VALUES('767', '8', '2015-12-07 17:12:54');
INSERT INTO sr_log_acceso VALUES('768', '8', '2015-12-07 17:12:26');
INSERT INTO sr_log_acceso VALUES('769', '8', '2015-12-07 18:12:17');
INSERT INTO sr_log_acceso VALUES('770', '8', '2015-12-07 18:12:33');
INSERT INTO sr_log_acceso VALUES('771', '8', '2015-12-07 18:12:21');
INSERT INTO sr_log_acceso VALUES('772', '8', '2015-12-07 20:12:45');
INSERT INTO sr_log_acceso VALUES('773', '8', '2015-12-07 20:12:27');
INSERT INTO sr_log_acceso VALUES('774', '8', '2015-12-07 22:12:09');
INSERT INTO sr_log_acceso VALUES('775', '8', '2015-12-07 22:12:19');
INSERT INTO sr_log_acceso VALUES('776', '8', '2015-12-07 22:12:44');
INSERT INTO sr_log_acceso VALUES('777', '8', '2015-12-08 14:12:53');
INSERT INTO sr_log_acceso VALUES('778', '8', '2015-12-08 15:12:58');
INSERT INTO sr_log_acceso VALUES('779', '8', '2015-12-08 15:12:53');
INSERT INTO sr_log_acceso VALUES('780', '8', '2015-12-08 15:12:57');
INSERT INTO sr_log_acceso VALUES('781', '8', '2015-12-08 16:12:01');
INSERT INTO sr_log_acceso VALUES('782', '8', '2015-12-08 17:12:54');
INSERT INTO sr_log_acceso VALUES('783', '8', '2015-12-08 17:12:00');
INSERT INTO sr_log_acceso VALUES('784', '8', '2015-12-08 17:12:45');
INSERT INTO sr_log_acceso VALUES('785', '8', '2015-12-08 17:12:31');
INSERT INTO sr_log_acceso VALUES('786', '8', '2015-12-08 20:12:11');
INSERT INTO sr_log_acceso VALUES('787', '8', '2015-12-08 20:12:37');
INSERT INTO sr_log_acceso VALUES('788', '8', '2015-12-08 22:12:25');
INSERT INTO sr_log_acceso VALUES('789', '8', '2015-12-08 22:12:49');
INSERT INTO sr_log_acceso VALUES('790', '8', '2015-12-08 22:12:06');
INSERT INTO sr_log_acceso VALUES('791', '8', '2015-12-08 22:12:21');
INSERT INTO sr_log_acceso VALUES('792', '8', '2015-12-08 22:12:24');
INSERT INTO sr_log_acceso VALUES('793', '8', '2015-12-08 22:12:51');
INSERT INTO sr_log_acceso VALUES('794', '8', '2015-12-09 15:12:25');
INSERT INTO sr_log_acceso VALUES('795', '14', '2015-12-09 15:12:12');
INSERT INTO sr_log_acceso VALUES('796', '8', '2015-12-09 15:12:11');
INSERT INTO sr_log_acceso VALUES('797', '8', '2015-12-09 15:12:08');
INSERT INTO sr_log_acceso VALUES('798', '8', '2015-12-09 15:12:24');
INSERT INTO sr_log_acceso VALUES('799', '8', '2015-12-09 15:12:21');
INSERT INTO sr_log_acceso VALUES('800', '8', '2015-12-09 16:12:12');
INSERT INTO sr_log_acceso VALUES('801', '8', '2015-12-09 16:12:35');
INSERT INTO sr_log_acceso VALUES('802', '8', '2015-12-09 16:12:11');
INSERT INTO sr_log_acceso VALUES('803', '8', '2015-12-09 16:12:40');
INSERT INTO sr_log_acceso VALUES('804', '8', '2015-12-09 16:12:27');
INSERT INTO sr_log_acceso VALUES('805', '8', '2015-12-09 16:12:34');
INSERT INTO sr_log_acceso VALUES('806', '8', '2015-12-09 16:12:08');
INSERT INTO sr_log_acceso VALUES('807', '8', '2015-12-09 16:12:11');
INSERT INTO sr_log_acceso VALUES('808', '8', '2015-12-09 16:12:35');
INSERT INTO sr_log_acceso VALUES('809', '8', '2015-12-09 17:12:15');
INSERT INTO sr_log_acceso VALUES('810', '8', '2015-12-09 17:12:08');
INSERT INTO sr_log_acceso VALUES('811', '8', '2015-12-09 17:12:02');
INSERT INTO sr_log_acceso VALUES('812', '8', '2015-12-09 17:12:22');
INSERT INTO sr_log_acceso VALUES('813', '8', '2015-12-09 17:12:46');
INSERT INTO sr_log_acceso VALUES('814', '8', '2015-12-09 17:12:19');
INSERT INTO sr_log_acceso VALUES('815', '8', '2015-12-09 17:12:29');
INSERT INTO sr_log_acceso VALUES('816', '8', '2015-12-09 17:12:32');
INSERT INTO sr_log_acceso VALUES('817', '8', '2015-12-09 18:12:17');
INSERT INTO sr_log_acceso VALUES('818', '8', '2015-12-09 18:12:40');
INSERT INTO sr_log_acceso VALUES('819', '8', '2015-12-09 18:12:03');
INSERT INTO sr_log_acceso VALUES('820', '8', '2015-12-09 18:12:50');
INSERT INTO sr_log_acceso VALUES('821', '8', '2015-12-09 20:12:14');
INSERT INTO sr_log_acceso VALUES('822', '8', '2015-12-09 20:12:05');
INSERT INTO sr_log_acceso VALUES('823', '13', '2015-12-09 20:12:41');
INSERT INTO sr_log_acceso VALUES('824', '8', '2015-12-09 21:12:21');
INSERT INTO sr_log_acceso VALUES('825', '8', '2015-12-09 21:12:29');
INSERT INTO sr_log_acceso VALUES('826', '8', '2015-12-10 15:12:07');
INSERT INTO sr_log_acceso VALUES('827', '8', '2015-12-10 15:12:00');
INSERT INTO sr_log_acceso VALUES('828', '8', '2015-12-10 15:12:22');
INSERT INTO sr_log_acceso VALUES('829', '13', '2015-12-10 15:12:09');
INSERT INTO sr_log_acceso VALUES('830', '8', '2015-12-10 15:12:21');
INSERT INTO sr_log_acceso VALUES('831', '8', '2015-12-10 16:12:58');
INSERT INTO sr_log_acceso VALUES('832', '8', '2015-12-10 16:12:32');
INSERT INTO sr_log_acceso VALUES('833', '8', '2015-12-10 16:12:11');
INSERT INTO sr_log_acceso VALUES('834', '8', '2015-12-10 17:12:01');
INSERT INTO sr_log_acceso VALUES('835', '8', '2015-12-10 17:12:30');
INSERT INTO sr_log_acceso VALUES('836', '8', '2015-12-10 17:12:47');
INSERT INTO sr_log_acceso VALUES('837', '8', '2015-12-10 17:12:41');
INSERT INTO sr_log_acceso VALUES('838', '8', '2015-12-10 17:12:15');
INSERT INTO sr_log_acceso VALUES('839', '8', '2015-12-10 18:12:41');
INSERT INTO sr_log_acceso VALUES('840', '8', '2015-12-10 18:12:15');
INSERT INTO sr_log_acceso VALUES('841', '8', '2015-12-10 20:12:29');
INSERT INTO sr_log_acceso VALUES('842', '8', '2015-12-10 20:12:28');
INSERT INTO sr_log_acceso VALUES('843', '8', '2015-12-10 21:12:00');
INSERT INTO sr_log_acceso VALUES('844', '8', '2015-12-10 21:12:58');
INSERT INTO sr_log_acceso VALUES('845', '8', '2015-12-10 21:12:52');
INSERT INTO sr_log_acceso VALUES('846', '8', '2015-12-10 21:12:41');
INSERT INTO sr_log_acceso VALUES('847', '13', '2015-12-10 22:12:41');
INSERT INTO sr_log_acceso VALUES('848', '8', '2015-12-10 22:12:39');
INSERT INTO sr_log_acceso VALUES('849', '8', '2015-12-10 22:12:07');
INSERT INTO sr_log_acceso VALUES('850', '8', '2015-12-10 22:12:03');
INSERT INTO sr_log_acceso VALUES('851', '8', '2015-12-10 22:12:35');
INSERT INTO sr_log_acceso VALUES('852', '8', '2015-12-10 22:12:45');
INSERT INTO sr_log_acceso VALUES('853', '8', '2015-12-10 22:12:43');
INSERT INTO sr_log_acceso VALUES('854', '8', '2015-12-10 22:12:47');
INSERT INTO sr_log_acceso VALUES('855', '8', '2015-12-11 15:12:25');
INSERT INTO sr_log_acceso VALUES('856', '14', '2015-12-11 15:12:55');
INSERT INTO sr_log_acceso VALUES('857', '8', '2015-12-11 15:12:33');
INSERT INTO sr_log_acceso VALUES('858', '14', '2015-12-11 15:12:45');
INSERT INTO sr_log_acceso VALUES('859', '8', '2015-12-11 15:12:57');
INSERT INTO sr_log_acceso VALUES('860', '8', '2015-12-11 15:12:50');
INSERT INTO sr_log_acceso VALUES('861', '8', '2015-12-11 16:12:00');
INSERT INTO sr_log_acceso VALUES('862', '8', '2015-12-11 16:12:40');
INSERT INTO sr_log_acceso VALUES('863', '8', '2015-12-11 16:12:20');
INSERT INTO sr_log_acceso VALUES('864', '8', '2015-12-11 20:12:40');
INSERT INTO sr_log_acceso VALUES('865', '8', '2015-12-11 20:12:16');
INSERT INTO sr_log_acceso VALUES('866', '8', '2015-12-11 20:12:34');
INSERT INTO sr_log_acceso VALUES('867', '8', '2015-12-11 20:12:04');
INSERT INTO sr_log_acceso VALUES('868', '8', '2015-12-11 20:12:46');
INSERT INTO sr_log_acceso VALUES('869', '14', '2015-12-11 22:12:08');
INSERT INTO sr_log_acceso VALUES('870', '8', '2015-12-11 22:12:03');
INSERT INTO sr_log_acceso VALUES('871', '8', '2015-12-11 22:12:08');
INSERT INTO sr_log_acceso VALUES('872', '8', '2015-12-11 22:12:03');
INSERT INTO sr_log_acceso VALUES('873', '8', '2015-12-14 15:12:14');
INSERT INTO sr_log_acceso VALUES('874', '8', '2015-12-14 18:12:06');
INSERT INTO sr_log_acceso VALUES('875', '8', '2015-12-14 18:12:34');
INSERT INTO sr_log_acceso VALUES('876', '8', '2015-12-14 18:12:12');
INSERT INTO sr_log_acceso VALUES('877', '8', '2015-12-14 18:12:02');
INSERT INTO sr_log_acceso VALUES('878', '8', '2015-12-14 18:12:04');
INSERT INTO sr_log_acceso VALUES('879', '8', '2015-12-14 18:12:10');
INSERT INTO sr_log_acceso VALUES('880', '8', '2015-12-15 15:12:20');
INSERT INTO sr_log_acceso VALUES('881', '8', '2015-12-15 15:12:30');
INSERT INTO sr_log_acceso VALUES('882', '8', '2015-12-15 15:12:45');
INSERT INTO sr_log_acceso VALUES('883', '8', '2015-12-15 15:12:11');
INSERT INTO sr_log_acceso VALUES('884', '8', '2015-12-15 15:12:32');
INSERT INTO sr_log_acceso VALUES('885', '8', '2015-12-15 16:12:26');
INSERT INTO sr_log_acceso VALUES('886', '8', '2015-12-15 17:12:24');
INSERT INTO sr_log_acceso VALUES('887', '8', '2015-12-15 17:12:07');
INSERT INTO sr_log_acceso VALUES('888', '8', '2015-12-15 22:12:41');
INSERT INTO sr_log_acceso VALUES('889', '8', '2015-12-16 15:12:56');
INSERT INTO sr_log_acceso VALUES('890', '8', '2015-12-16 15:12:40');
INSERT INTO sr_log_acceso VALUES('891', '8', '2015-12-16 15:12:31');
INSERT INTO sr_log_acceso VALUES('892', '8', '2015-12-16 15:12:14');
INSERT INTO sr_log_acceso VALUES('893', '8', '2015-12-16 15:12:29');
INSERT INTO sr_log_acceso VALUES('894', '8', '2015-12-16 15:12:26');
INSERT INTO sr_log_acceso VALUES('895', '8', '2015-12-16 16:12:26');
INSERT INTO sr_log_acceso VALUES('896', '8', '2015-12-16 18:12:25');
INSERT INTO sr_log_acceso VALUES('897', '8', '2015-12-16 18:12:35');
INSERT INTO sr_log_acceso VALUES('898', '8', '2015-12-16 20:12:57');
INSERT INTO sr_log_acceso VALUES('899', '8', '2015-12-16 20:12:55');
INSERT INTO sr_log_acceso VALUES('900', '13', '2015-12-17 15:12:46');
INSERT INTO sr_log_acceso VALUES('901', '14', '2015-12-17 22:12:30');
INSERT INTO sr_log_acceso VALUES('902', '8', '2015-12-18 15:12:32');
INSERT INTO sr_log_acceso VALUES('903', '8', '2015-12-18 15:12:19');
INSERT INTO sr_log_acceso VALUES('904', '8', '2015-12-18 15:12:20');
INSERT INTO sr_log_acceso VALUES('905', '8', '2015-12-18 21:12:57');
INSERT INTO sr_log_acceso VALUES('906', '13', '2015-12-18 21:12:51');
INSERT INTO sr_log_acceso VALUES('907', '13', '2015-12-18 21:12:01');
INSERT INTO sr_log_acceso VALUES('908', '8', '2015-12-18 21:12:22');
INSERT INTO sr_log_acceso VALUES('909', '8', '2015-12-18 22:12:24');
INSERT INTO sr_log_acceso VALUES('910', '8', '2015-12-18 22:12:21');
INSERT INTO sr_log_acceso VALUES('911', '8', '2015-12-21 15:12:30');
INSERT INTO sr_log_acceso VALUES('912', '13', '2015-12-21 17:12:38');
INSERT INTO sr_log_acceso VALUES('913', '8', '2015-12-21 18:12:36');
INSERT INTO sr_log_acceso VALUES('914', '8', '2015-12-21 20:12:22');
INSERT INTO sr_log_acceso VALUES('915', '8', '2015-12-21 20:12:20');
INSERT INTO sr_log_acceso VALUES('916', '8', '2015-12-21 20:12:40');
INSERT INTO sr_log_acceso VALUES('917', '8', '2015-12-21 21:12:55');
INSERT INTO sr_log_acceso VALUES('918', '8', '2015-12-21 21:12:51');
INSERT INTO sr_log_acceso VALUES('919', '8', '2015-12-22 15:12:04');
INSERT INTO sr_log_acceso VALUES('920', '8', '2015-12-22 16:12:55');
INSERT INTO sr_log_acceso VALUES('921', '8', '2015-12-22 16:12:00');
INSERT INTO sr_log_acceso VALUES('922', '8', '2015-12-22 16:12:21');
INSERT INTO sr_log_acceso VALUES('923', '8', '2015-12-22 16:12:56');
INSERT INTO sr_log_acceso VALUES('924', '8', '2015-12-22 16:12:16');
INSERT INTO sr_log_acceso VALUES('925', '8', '2015-12-22 16:12:16');
INSERT INTO sr_log_acceso VALUES('926', '8', '2015-12-22 17:12:28');
INSERT INTO sr_log_acceso VALUES('927', '8', '2015-12-22 17:12:46');
INSERT INTO sr_log_acceso VALUES('928', '8', '2015-12-22 17:12:58');
INSERT INTO sr_log_acceso VALUES('929', '8', '2015-12-22 17:12:30');
INSERT INTO sr_log_acceso VALUES('930', '8', '2015-12-22 18:12:26');
INSERT INTO sr_log_acceso VALUES('931', '8', '2015-12-22 18:12:18');
INSERT INTO sr_log_acceso VALUES('932', '8', '2015-12-22 18:12:59');
INSERT INTO sr_log_acceso VALUES('933', '13', '2015-12-22 19:12:13');
INSERT INTO sr_log_acceso VALUES('934', '13', '2015-12-22 20:12:20');
INSERT INTO sr_log_acceso VALUES('935', '8', '2015-12-22 22:12:54');
INSERT INTO sr_log_acceso VALUES('936', '8', '2016-01-04 15:01:48');
INSERT INTO sr_log_acceso VALUES('937', '8', '2016-01-04 15:01:38');
INSERT INTO sr_log_acceso VALUES('938', '8', '2016-01-04 15:01:59');
INSERT INTO sr_log_acceso VALUES('939', '8', '2016-01-04 15:01:59');
INSERT INTO sr_log_acceso VALUES('940', '8', '2016-01-04 16:01:25');
INSERT INTO sr_log_acceso VALUES('941', '8', '2016-01-04 16:01:26');
INSERT INTO sr_log_acceso VALUES('942', '8', '2016-01-04 17:01:42');
INSERT INTO sr_log_acceso VALUES('943', '8', '2016-01-04 18:01:32');
INSERT INTO sr_log_acceso VALUES('944', '8', '2016-01-04 20:01:59');
INSERT INTO sr_log_acceso VALUES('945', '8', '2016-01-04 20:01:55');
INSERT INTO sr_log_acceso VALUES('946', '8', '2016-01-04 20:01:18');
INSERT INTO sr_log_acceso VALUES('947', '8', '2016-01-04 20:01:53');
INSERT INTO sr_log_acceso VALUES('948', '8', '2016-01-04 20:01:14');
INSERT INTO sr_log_acceso VALUES('949', '8', '2016-01-04 21:01:02');
INSERT INTO sr_log_acceso VALUES('950', '14', '2016-01-04 21:01:47');
INSERT INTO sr_log_acceso VALUES('951', '8', '2016-01-05 16:01:47');
INSERT INTO sr_log_acceso VALUES('952', '8', '2016-01-05 16:01:38');
INSERT INTO sr_log_acceso VALUES('953', '8', '2016-01-05 18:01:05');
INSERT INTO sr_log_acceso VALUES('954', '8', '2016-01-05 21:01:57');
INSERT INTO sr_log_acceso VALUES('955', '13', '2016-01-05 22:01:56');
INSERT INTO sr_log_acceso VALUES('956', '13', '2016-01-05 22:01:47');
INSERT INTO sr_log_acceso VALUES('957', '8', '2016-01-06 16:01:57');
INSERT INTO sr_log_acceso VALUES('958', '8', '2016-01-06 20:01:44');
INSERT INTO sr_log_acceso VALUES('959', '8', '2016-01-07 15:01:33');
INSERT INTO sr_log_acceso VALUES('960', '8', '2016-01-07 15:01:20');
INSERT INTO sr_log_acceso VALUES('961', '8', '2016-01-07 16:01:17');
INSERT INTO sr_log_acceso VALUES('962', '8', '2016-01-07 16:01:43');
INSERT INTO sr_log_acceso VALUES('963', '8', '2016-01-07 16:01:13');
INSERT INTO sr_log_acceso VALUES('964', '8', '2016-01-07 21:01:18');
INSERT INTO sr_log_acceso VALUES('965', '8', '2016-01-07 21:01:39');
INSERT INTO sr_log_acceso VALUES('966', '8', '2016-01-08 15:01:25');
INSERT INTO sr_log_acceso VALUES('967', '8', '2016-01-08 15:01:45');
INSERT INTO sr_log_acceso VALUES('968', '8', '2016-01-08 16:01:20');
INSERT INTO sr_log_acceso VALUES('969', '8', '2016-01-08 16:01:35');
INSERT INTO sr_log_acceso VALUES('970', '8', '2016-01-08 20:01:23');
INSERT INTO sr_log_acceso VALUES('971', '8', '2016-01-08 20:01:04');
INSERT INTO sr_log_acceso VALUES('972', '8', '2016-01-08 21:01:31');
INSERT INTO sr_log_acceso VALUES('973', '8', '2016-01-08 21:01:56');
INSERT INTO sr_log_acceso VALUES('974', '8', '2016-01-08 22:01:27');
INSERT INTO sr_log_acceso VALUES('975', '8', '2016-01-08 22:01:40');
INSERT INTO sr_log_acceso VALUES('976', '1', '2016-01-10 01:01:33');
INSERT INTO sr_log_acceso VALUES('977', '2', '2016-01-10 01:01:19');
INSERT INTO sr_log_acceso VALUES('978', '8', '2016-01-10 01:01:55');
INSERT INTO sr_log_acceso VALUES('979', '13', '2016-01-10 01:01:57');
INSERT INTO sr_log_acceso VALUES('980', '1', '2016-01-10 01:01:08');
INSERT INTO sr_log_acceso VALUES('981', '14', '2016-01-10 01:01:59');
INSERT INTO sr_log_acceso VALUES('982', '1', '2016-04-24 21:04:47');
INSERT INTO sr_log_acceso VALUES('983', '14', '2016-04-24 21:04:54');
INSERT INTO sr_log_acceso VALUES('984', '1', '2016-04-24 21:04:13');
INSERT INTO sr_log_acceso VALUES('985', '14', '2016-04-24 21:04:01');
INSERT INTO sr_log_acceso VALUES('986', '1', '2016-04-24 21:04:57');
INSERT INTO sr_log_acceso VALUES('987', '1', '2016-04-24 22:04:16');
INSERT INTO sr_log_acceso VALUES('988', '1', '2016-04-24 22:04:21');
INSERT INTO sr_log_acceso VALUES('989', '1', '2016-04-24 22:04:50');
INSERT INTO sr_log_acceso VALUES('990', '1', '2016-05-01 12:05:38');
INSERT INTO sr_log_acceso VALUES('991', '1', '2016-06-11 20:06:27');
UNLOCK TABLES;


--
-- Table structure for table `sr_menu`
--

DROP TABLE IF EXISTS sr_menu;
CREATE TABLE `sr_menu` (
  `id_menu` int(100) NOT NULL AUTO_INCREMENT,
  `nombre_menu` varchar(50) DEFAULT NULL,
  `url_menu` varchar(200) DEFAULT NULL,
  `icon_menu` varchar(200) DEFAULT NULL,
  `class_menu` varchar(200) DEFAULT NULL,
  `id_rol_menu` int(50) DEFAULT NULL,
  `estado_menu` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_menu`
--

LOCK TABLES sr_menu WRITE;
INSERT INTO sr_menu VALUES('1', 'INICIO', 'dashboard.php', 'icon-home', 'nav-active active', '1', '1');
INSERT INTO sr_menu VALUES('4', 'CONFIGURACION', 'configuracion.php', 'fa fa-cogs', NULL, '1', '1');
INSERT INTO sr_menu VALUES('5', 'BACKUP', 'backup.php', 'fa fa-check', '', '1', '1');
INSERT INTO sr_menu VALUES('6', 'PASSWORD', 'password/password.php', 'fa fa-unlock', '', '1', '1');
INSERT INTO sr_menu VALUES('7', 'ADMINISTRACION', 'sucursal.php', 'fa fa-cogs', '', '1', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_nombre_libreria`
--

DROP TABLE IF EXISTS sr_nombre_libreria;
CREATE TABLE `sr_nombre_libreria` (
  `id_nombre` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_libreria` varchar(50) NOT NULL DEFAULT '0',
  `estado_libreria` int(1) NOT NULL DEFAULT '0',
  KEY `Índice 1` (`id_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_nombre_libreria`
--

LOCK TABLES sr_nombre_libreria WRITE;
INSERT INTO sr_nombre_libreria VALUES('1', 'CSS', '1');
INSERT INTO sr_nombre_libreria VALUES('2', 'JQUERY', '1');
INSERT INTO sr_nombre_libreria VALUES('3', 'JSON', '1');
INSERT INTO sr_nombre_libreria VALUES('4', 'ANGULAR', '1');
INSERT INTO sr_nombre_libreria VALUES('5', 'HTML', '1');
INSERT INTO sr_nombre_libreria VALUES('6', 'JAVASCRIPT', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_roles`
--

DROP TABLE IF EXISTS sr_roles;
CREATE TABLE `sr_roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) DEFAULT NULL,
  `estado_rol` varchar(50) DEFAULT NULL,
  KEY `Índice 1` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_roles`
--

LOCK TABLES sr_roles WRITE;
INSERT INTO sr_roles VALUES('1', 'SuperAdministrador', '1');
INSERT INTO sr_roles VALUES('15', 'Administrador', '1');
INSERT INTO sr_roles VALUES('19', 'Gerente Sucursal', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_submenu`
--

DROP TABLE IF EXISTS sr_submenu;
CREATE TABLE `sr_submenu` (
  `id_submenu` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_submenu` varchar(50) DEFAULT NULL,
  `url_submenu` varchar(50) DEFAULT NULL,
  `titulo_submenu` varchar(50) DEFAULT NULL,
  `id_menu` int(50) DEFAULT NULL,
  `estado_submen` int(50) DEFAULT NULL,
  KEY `Índice 1` (`id_submenu`),
  KEY `FK_sr_submenu_sr_menu` (`id_menu`),
  CONSTRAINT `FK_sr_submenu_sr_menu` FOREIGN KEY (`id_menu`) REFERENCES `sr_menu` (`id_menu`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_submenu`
--

LOCK TABLES sr_submenu WRITE;
INSERT INTO sr_submenu VALUES('5', 'Animaciones', 'backend/animacion/Canimacion/index', 'Configuracion', '4', '1');
INSERT INTO sr_submenu VALUES('6', 'Informacion General', 'backend/info/Cinfo/index', 'Informacion General', '4', '1');
INSERT INTO sr_submenu VALUES('7', 'Menus', 'backend/menu/Cmenu/index', 'Menus', '4', '1');
INSERT INTO sr_submenu VALUES('8', 'Base de Datos', 'backend/backup/Cbackup/index', 'Demo', '5', '1');
INSERT INTO sr_submenu VALUES('9', 'Restaurar BK', 'backend/backup/Cbackup/restaurarBk', 'BK Files', '5', '1');
INSERT INTO sr_submenu VALUES('10', 'Avatar', 'backend/avatar/Cavatar/index', 'Avatar', '4', '0');
INSERT INTO sr_submenu VALUES('11', 'Usuarios', 'backend/usuarios/Cusuarios/index', 'Usuarios', '7', '1');
INSERT INTO sr_submenu VALUES('13', 'Menus Accesos', 'backend/acceso/Cacceso/index', 'Accesos Menus', '4', '1');
INSERT INTO sr_submenu VALUES('14', 'Password', 'backend/menu/Cmenu/cambiarPassword', 'Password', '6', '1');
INSERT INTO sr_submenu VALUES('15', 'Sucursales', 'backend/admin/Csucursales/index', 'Sucursales', '7', '1');
INSERT INTO sr_submenu VALUES('16', 'Paises', 'backend/admin/Cpais', 'Paises', '7', '1');
INSERT INTO sr_submenu VALUES('17', 'Departamentos', 'backend/admin/Cdepartamentos', 'Departamentos', '7', '1');
INSERT INTO sr_submenu VALUES('18', 'Impuestos', 'backend/admin/Cimpuesto', 'Impuestos', '7', '1');
INSERT INTO sr_submenu VALUES('19', 'Usuarios Admin', 'backend/usuarios/Cusuarios/userAdmin', 'Usuarios Admin', '4', '1');
INSERT INTO sr_submenu VALUES('20', 'Dashboard', 'backend/admin/Cdashboard/index', 'Dashboard', '1', '1');
UNLOCK TABLES;


--
-- Table structure for table `sr_usuarios`
--

DROP TABLE IF EXISTS sr_usuarios;
CREATE TABLE `sr_usuarios` (
  `id_usuario` int(100) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `dui` varchar(100) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `password` text,
  `nickname` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `genero` char(100) DEFAULT NULL,
  `cargo` int(11) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `id_departamento` int(10) DEFAULT NULL,
  `id_sucursal` int(10) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `FK_sr_usuarios_sr_roles` (`rol`),
  KEY `FK_sr_usuarios_sr_cargos` (`cargo`),
  KEY `FK_sr_usuarios_sys_pais_departamento` (`id_departamento`),
  KEY `FK_sr_usuarios_sys_sucursal` (`id_sucursal`),
  CONSTRAINT `FK_sr_usuarios_sr_cargos` FOREIGN KEY (`cargo`) REFERENCES `sr_cargos` (`id_cargo`),
  CONSTRAINT `FK_sr_usuarios_sr_roles` FOREIGN KEY (`rol`) REFERENCES `sr_roles` (`id_rol`),
  CONSTRAINT `FK_sr_usuarios_sys_pais_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `sys_pais_departamento` (`id_departamento`),
  CONSTRAINT `FK_sr_usuarios_sys_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sys_sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_usuarios`
--

LOCK TABLES sr_usuarios WRITE;
INSERT INTO sr_usuarios VALUES('1', 'Rafael', 'Gutierrez', '23570058', '72616977', 'San Rafael Chalatenango', '00000-000-0', 'rafael', '568095ee7b98b0afceb32540a1ca5540eaa72666', 'Rafael.Gutierrez', '1989-10-24', 'M', '2', '1', '1', NULL, 'circle_logo.png', '2015-07-08 10:54:07', '1');
INSERT INTO sr_usuarios VALUES('2', 'jose', 'ruben', '3434343', '43434343', 'suchitoto', '34343434', 'jose.lopez', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'jose.ruben', '2010-02-04', 'M', '2', '15', '1', NULL, 'avatar1_big@2x.png', '0000-00-00 00:00:00', '1');
UNLOCK TABLES;


--
-- Table structure for table `sys_pais`
--

DROP TABLE IF EXISTS sys_pais;
CREATE TABLE `sys_pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(50) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_pais`
--

LOCK TABLES sys_pais WRITE;
INSERT INTO sys_pais VALUES('1', 'El Salvador', '1', '2016-11-04 04:13:31', '2016-11-06 14:36:07', '1');
INSERT INTO sys_pais VALUES('2', 'Guatemala', '1', '2016-11-04 03:58:40', '2016-11-06 14:36:02', '0');
INSERT INTO sys_pais VALUES('3', 'Honduras', '1', '2016-11-04 03:58:42', '2016-11-06 14:36:00', '0');
INSERT INTO sys_pais VALUES('4', 'Nicaragua', '1', '2016-11-04 03:58:44', '2016-11-06 14:35:57', '0');
INSERT INTO sys_pais VALUES('5', 'Panamá', '1', '2016-11-04 04:14:15', '2016-11-05 23:13:13', '1');
INSERT INTO sys_pais VALUES('6', 'Costa Rica', '1', '2016-11-05 13:27:42', '2016-11-05 23:13:13', '1');
UNLOCK TABLES;


--
-- Table structure for table `sys_pais_departamento`
--

DROP TABLE IF EXISTS sys_pais_departamento;
CREATE TABLE `sys_pais_departamento` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) DEFAULT NULL,
  `nombre_departamento` varchar(50) DEFAULT NULL,
  `usuario` int(2) DEFAULT NULL,
  `estado_departamento` int(1) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_departamento`),
  KEY `FK_sys_pais_departamento_sys_pais` (`id_pais`),
  CONSTRAINT `FK_sys_pais_departamento_sys_pais` FOREIGN KEY (`id_pais`) REFERENCES `sys_pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_pais_departamento`
--

LOCK TABLES sys_pais_departamento WRITE;
INSERT INTO sys_pais_departamento VALUES('1', '1', 'San Salvador', '1', '0', '2016-10-30 21:46:21');
INSERT INTO sys_pais_departamento VALUES('2', '1', 'La Libertad', '1', '0', '2016-10-30 21:46:20');
INSERT INTO sys_pais_departamento VALUES('3', '2', 'Demo', '1', '0', '2016-10-30 21:46:18');
INSERT INTO sys_pais_departamento VALUES('4', '1', 'Chalatenango', '1', '1', '2016-10-31 00:41:38');
INSERT INTO sys_pais_departamento VALUES('5', '1', 'Sonsonate', '1', '1', '2016-11-06 01:43:29');
INSERT INTO sys_pais_departamento VALUES('6', '6', 'Managua', '1', '0', '2016-11-06 02:24:23');
INSERT INTO sys_pais_departamento VALUES('8', '1', 'Centro1', '1', '1', '2016-11-06 02:24:49');
INSERT INTO sys_pais_departamento VALUES('9', '2', 'yes', '1', '1', '2016-11-06 13:48:00');
INSERT INTO sys_pais_departamento VALUES('11', '6', 'uno', '1', '1', '2016-11-06 22:22:44');
INSERT INTO sys_pais_departamento VALUES('12', '3', 'dos', '1', '1', '2016-11-06 22:22:50');
INSERT INTO sys_pais_departamento VALUES('13', '4', 'wwww', '1', '1', '2016-11-06 22:22:57');
UNLOCK TABLES;


--
-- Table structure for table `sys_sucursal`
--

DROP TABLE IF EXISTS sys_sucursal;
CREATE TABLE `sys_sucursal` (
  `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `id_departamento` int(10) DEFAULT NULL,
  `nombre_sucursal` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `referencia_zona` varchar(50) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` int(11) NOT NULL,
  `creado_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `FK_sys_sucursal_sys_pais_departamento` (`id_departamento`),
  CONSTRAINT `FK_sys_sucursal_sys_pais_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `sys_pais_departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_sucursal`
--

LOCK TABLES sys_sucursal WRITE;
INSERT INTO sys_sucursal VALUES('1', '1', 'Admin', NULL, NULL, NULL, NULL, '2016-10-18 20:37:14', '1', '0');
INSERT INTO sys_sucursal VALUES('2', '2', 'Castaños', NULL, NULL, NULL, NULL, '2016-10-18 20:29:46', '1', '0');
INSERT INTO sys_sucursal VALUES('4', '3', 'Nueva B', 'Chalatenango A', '23570058', '72616971', 'Zona Medica', '2016-11-04 03:31:39', '1', '1');
INSERT INTO sys_sucursal VALUES('5', '2', 'Las Terrazas', 'Calle N, Avenida X. Centro Comercial', '34567823', '23456789', 'Multiplaza', '2016-10-30 22:25:24', '1', '1');
UNLOCK TABLES;


--
-- Table structure for table `sys_sucursal_impuesto`
--

DROP TABLE IF EXISTS sys_sucursal_impuesto;
CREATE TABLE `sys_sucursal_impuesto` (
  `id_impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(11) DEFAULT NULL,
  `nombre_impuesto` varchar(50) DEFAULT NULL,
  `monto_impuesto` float DEFAULT NULL,
  `descripcion_impuesto` varchar(255) DEFAULT NULL,
  `estado_impuesto` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_impuesto`),
  KEY `FK_sys_sucursal_cobros_sys_sucursal` (`id_sucursal`),
  KEY `FK_sys_sucursal_cobros_sr_usuarios` (`id_usuario`),
  CONSTRAINT `FK_sys_sucursal_cobros_sr_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `sr_usuarios` (`id_usuario`),
  CONSTRAINT `FK_sys_sucursal_cobros_sys_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sys_sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_sucursal_impuesto`
--

LOCK TABLES sys_sucursal_impuesto WRITE;
INSERT INTO sys_sucursal_impuesto VALUES('1', '2', 'IVA', '0.13', 'Impuesto sobre la renta', '1', '1');
INSERT INTO sys_sucursal_impuesto VALUES('2', '1', 'IVA', '0.13', 'Impuesto sobre la renta', '0', '1');
UNLOCK TABLES;


--
-- Table structure for table `sys_sucursal_int_usuarios`
--

DROP TABLE IF EXISTS sys_sucursal_int_usuarios;
CREATE TABLE `sys_sucursal_int_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(11) DEFAULT '0',
  `id_usuario` int(11) DEFAULT '0',
  `estado` int(11) DEFAULT '0',
  `creado` int(11) DEFAULT '0',
  `creado_por` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_sys_sucursal_int_usuarios_sys_sucursal` (`id_sucursal`),
  KEY `FK_sys_sucursal_int_usuarios_sr_usuarios` (`id_usuario`),
  CONSTRAINT `FK_sys_sucursal_int_usuarios_sr_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `sr_usuarios` (`id_usuario`),
  CONSTRAINT `FK_sys_sucursal_int_usuarios_sys_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sys_sucursal` (`id_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_sucursal_int_usuarios`
--

LOCK TABLES sys_sucursal_int_usuarios WRITE;
UNLOCK TABLES;


--
-- Table structure for table `sys_sucursal_promocion`
--

DROP TABLE IF EXISTS sys_sucursal_promocion;
CREATE TABLE `sys_sucursal_promocion` (
  `id_promocion` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(11) NOT NULL DEFAULT '0',
  `nombre_promocion` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_promocion`),
  KEY `FK_sys_sucursal_promocion_sys_sucursal` (`id_sucursal`),
  CONSTRAINT `FK_sys_sucursal_promocion_sys_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sys_sucursal` (`id_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_sucursal_promocion`
--

LOCK TABLES sys_sucursal_promocion WRITE;
UNLOCK TABLES;



 SET FOREIGN_KEY_CHECKS=1;
-- Dump de la Base de Datos Completo.