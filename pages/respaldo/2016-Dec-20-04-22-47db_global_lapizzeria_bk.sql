SET FOREIGN_KEY_CHECKS=0; 
-- Dump de la Base de Datos
-- Fecha: martes 20 diciembre 2016 - 04:22:47
--
-- Version: 1.1.1, del 18 de Marzo de 2005, insidephp@gmail.com
-- Soporte y Updaters: http://insidephp.sytes.net
--
-- Host: `localhost`    Database: `db_global_lapizzeria`
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
INSERT INTO log_backups VALUES('6', '2016-Nov-25-03-45-06db_global_lapizzeria_bk.sql.gz', '2016-11-25 03:45:06', '2016-Nov-25-03-45-06db_global_lapizzeria_bk.sql.gz');
INSERT INTO log_backups VALUES('7', '2016-Dec-13-05-12-09db_global_lapizzeria_bk.sql.gz', '2016-12-13 05:12:10', '2016-Dec-13-05-12-09db_global_lapizzeria_bk.sql.gz');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

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
INSERT INTO sr_accesos VALUES('124', '20', '1', '0', '0');
INSERT INTO sr_accesos VALUES('125', '20', '4', '0', '0');
INSERT INTO sr_accesos VALUES('126', '20', '5', '0', '0');
INSERT INTO sr_accesos VALUES('127', '20', '6', '0', '0');
INSERT INTO sr_accesos VALUES('128', '20', '7', '0', '0');
INSERT INTO sr_accesos VALUES('129', '21', '1', '0', '0');
INSERT INTO sr_accesos VALUES('130', '21', '4', '0', '0');
INSERT INTO sr_accesos VALUES('131', '21', '5', '0', '0');
INSERT INTO sr_accesos VALUES('132', '21', '6', '0', '0');
INSERT INTO sr_accesos VALUES('133', '21', '7', '0', '0');
INSERT INTO sr_accesos VALUES('134', '1', '8', '0', '1');
INSERT INTO sr_accesos VALUES('135', '15', '8', '0', '1');
INSERT INTO sr_accesos VALUES('136', '19', '8', '0', '1');
INSERT INTO sr_accesos VALUES('137', '20', '8', '0', '0');
INSERT INTO sr_accesos VALUES('138', '21', '8', '0', '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_cargos`
--

LOCK TABLES sr_cargos WRITE;
INSERT INTO sr_cargos VALUES('1', 'Super Administrador', '1');
INSERT INTO sr_cargos VALUES('2', 'Administrador', '1');
INSERT INTO sr_cargos VALUES('10', 'Gerente Sucursal', '1');
INSERT INTO sr_cargos VALUES('11', 'Mesero', '1');
INSERT INTO sr_cargos VALUES('12', 'Cocinero', '1');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `sr_log_acceso`
--

LOCK TABLES sr_log_acceso WRITE;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_menu`
--

LOCK TABLES sr_menu WRITE;
INSERT INTO sr_menu VALUES('1', 'INICIO', 'dashboard.php', 'icon-home', 'nav-active active', '1', '1');
INSERT INTO sr_menu VALUES('4', 'CONFIGURACION', 'configuracion.php', 'fa fa-cogs', NULL, '1', '1');
INSERT INTO sr_menu VALUES('5', 'BACKUP', 'backup.php', 'fa fa-check', '', '1', '1');
INSERT INTO sr_menu VALUES('6', 'PASSWORD', 'password/password.php', 'fa fa-unlock', '', '1', '1');
INSERT INTO sr_menu VALUES('7', 'ADMINISTRACION', 'sucursal.php', 'fa fa-cogs', '', '1', '1');
INSERT INTO sr_menu VALUES('8', 'ADMIN SUCURSAL', 'backend/sucursales/index/id', 'fa fa-download', 'null', '1', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_roles`
--

LOCK TABLES sr_roles WRITE;
INSERT INTO sr_roles VALUES('1', 'SuperAdministrador', '1');
INSERT INTO sr_roles VALUES('15', 'Administrador', '1');
INSERT INTO sr_roles VALUES('19', 'Gerente Sucursal', '1');
INSERT INTO sr_roles VALUES('20', 'Mesero', '1');
INSERT INTO sr_roles VALUES('21', 'Cocinero', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

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
INSERT INTO sr_submenu VALUES('19', 'Usuarios Admin', 'backend/acceso/Cacceso/index', 'Usuarios Admin', '4', '1');
INSERT INTO sr_submenu VALUES('20', 'Dashboard', 'backend/admin/Cdashboard/index', 'Dashboard', '1', '1');
INSERT INTO sr_submenu VALUES('21', 'Roles', 'backend/acceso/Cacceso/index', 'Roles', '7', '1');
INSERT INTO sr_submenu VALUES('22', 'Sucursal', 'backend/sucursales/Cindex', 'Sucursal', '8', '1');
INSERT INTO sr_submenu VALUES('23', 'Generador Cupon', 'backend/cupon/Cindex/index', 'Generador Cupon', '7', '1');
INSERT INTO sr_submenu VALUES('24', 'Productos', 'backend/productos/Cproductos/index', 'Productos', '7', '1');
INSERT INTO sr_submenu VALUES('25', 'Unidad de Medida', 'backend/productos/Cproductos/unidadMedida', 'Unidad de Medida', '7', '1');
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
  `avatar` varchar(100) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `FK_sr_usuarios_sr_roles` (`rol`),
  KEY `FK_sr_usuarios_sr_cargos` (`cargo`),
  KEY `FK_sr_usuarios_sys_pais_departamento` (`id_departamento`),
  CONSTRAINT `FK_sr_usuarios_sr_cargos` FOREIGN KEY (`cargo`) REFERENCES `sr_cargos` (`id_cargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sr_usuarios_sr_roles` FOREIGN KEY (`rol`) REFERENCES `sr_roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sr_usuarios_sys_pais_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `sys_pais_departamento` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_usuarios`
--

LOCK TABLES sr_usuarios WRITE;
INSERT INTO sr_usuarios VALUES('3', 'Rafael', 'Tejada', '343', '53434', 'Chalate', '34343', 'rafael', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Rafael.Tejada', '1989-10-24', 'M', '1', '1', '14', 'avatar1_big@2x.png', '0000-00-00 00:00:00', '1');
INSERT INTO sr_usuarios VALUES('4', 'Jose', 'Lopez', '22504746', '23456789', 'san salvador', '232323232', 'jose', '4a3487e57d90e2084654b6d23937e75af5c8ee55', 'Jose.Lopez', '2012-12-12', 'M', '11', '20', '15', 'avatar2_big@2x.png', '0000-00-00 00:00:00', '1');
INSERT INTO sr_usuarios VALUES('5', 'a', 'b', 'c', 'd', 'e', 'r', 'sds', '845f160ac35907dec84bb7fb0d335d0ce8a11fef', 'a.b', '2012-12-12', 'M', '11', '20', '14', 'avatar1_big@2x.png', '0000-00-00 00:00:00', '1');
INSERT INTO sr_usuarios VALUES('6', 'sd', 'sds', 'sd', 'sd', 'sds', 'sds', 'sds', 'd6e1285e1c84d3d5885c2124fdacc780e9fc0a94', 'sd.sds', '1212-12-12', 'M', '2', '15', '15', 'avatar2_big@2x.png', '0000-00-00 00:00:00', '1');
INSERT INTO sr_usuarios VALUES('7', 'ss', 'ss', 'ss', 'ss', 'ss', 'ss', 'ssd', '3fdb13677b10691debb3909dd917b00ee751115a', 'ss.ss', '1212-12-12', 'M', '2', '15', '14', 'avatar6_big@2x.png', '0000-00-00 00:00:00', '1');
INSERT INTO sr_usuarios VALUES('8', 'Claudia', 'Quijada', '2323232', '73434343', 'Chalatenango', '34343434', 'claudia', '568095ee7b98b0afceb32540a1ca5540eaa72666', 'Claudia.Quijada', '1993-08-20', 'F', '10', '19', '14', 'avatar3_big@2x.png', '0000-00-00 00:00:00', '1');
UNLOCK TABLES;


--
-- Table structure for table `sys_catalogo_materiales`
--

DROP TABLE IF EXISTS sys_catalogo_materiales;
CREATE TABLE `sys_catalogo_materiales` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_matarial` varchar(50) NOT NULL,
  `descripcion_meterial` varchar(200) NOT NULL,
  `codigo_material` varchar(50) NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  `proveedorCheck` tinyint(1) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_catalogo_materiales`
--

LOCK TABLES sys_catalogo_materiales WRITE;
UNLOCK TABLES;


--
-- Table structure for table `sys_categoria_producto`
--

DROP TABLE IF EXISTS sys_categoria_producto;
CREATE TABLE `sys_categoria_producto` (
  `id_categoria_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria_producto` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_categoria_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `sys_categoria_producto`
--

LOCK TABLES sys_categoria_producto WRITE;
INSERT INTO sys_categoria_producto VALUES('1', 'pizza', 'pizza', '2016-12-10 00:00:00');
UNLOCK TABLES;


--
-- Table structure for table `sys_cupon`
--

DROP TABLE IF EXISTS sys_cupon;
CREATE TABLE `sys_cupon` (
  `id_cupon` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_cupon` varchar(50) DEFAULT NULL,
  `valor_cupon` double DEFAULT NULL,
  `estado_cupon` int(11) DEFAULT NULL,
  `descripcion_cupon` varchar(50) DEFAULT NULL,
  `fecha_creacion_cupon` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cupon`),
  KEY `id_cupon` (`id_cupon`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_cupon`
--

LOCK TABLES sys_cupon WRITE;
INSERT INTO sys_cupon VALUES('1', '3wfekz', '10', '0', NULL, '2016-12-06 20:06:41');
INSERT INTO sys_cupon VALUES('2', '8e4wlb', '10', '0', NULL, '2016-12-06 20:06:43');
INSERT INTO sys_cupon VALUES('3', 'xghl3i', '10', '0', NULL, '2016-12-06 20:06:43');
INSERT INTO sys_cupon VALUES('4', '53acwg', '10', '0', NULL, '2016-12-06 20:06:43');
INSERT INTO sys_cupon VALUES('5', '6bq3qy', '10', '0', NULL, '2016-12-06 20:06:43');
INSERT INTO sys_cupon VALUES('6', 'vhkw4yjvxt', '8', '0', 'Navidad', '2016-12-06 20:17:35');
INSERT INTO sys_cupon VALUES('7', 'elspxl8m15', '8', '0', 'Navidad', '2016-12-06 20:17:35');
UNLOCK TABLES;


--
-- Table structure for table `sys_detalle_producto`
--

DROP TABLE IF EXISTS sys_detalle_producto;
CREATE TABLE `sys_detalle_producto` (
  `id_detalle_producto` int(11) NOT NULL AUTO_INCREMENT,
  `name_detalle` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `descripcion` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `cantidad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `unidad_medida_id` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_detalle_producto`),
  KEY `FK1_Detalle_producto_Producto` (`id_producto`),
  KEY `FK2_Detalle_producto_Unidad_medida` (`unidad_medida_id`),
  CONSTRAINT `FK1_Detalle_producto_Producto` FOREIGN KEY (`id_producto`) REFERENCES `sys_productos` (`id_producto`),
  CONSTRAINT `FK2_Detalle_producto_Unidad_medida` FOREIGN KEY (`unidad_medida_id`) REFERENCES `sys_unidad_medida` (`id_unidad_medida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `sys_detalle_producto`
--

LOCK TABLES sys_detalle_producto WRITE;
UNLOCK TABLES;


--
-- Table structure for table `sys_nodo`
--

DROP TABLE IF EXISTS sys_nodo;
CREATE TABLE `sys_nodo` (
  `id_nodo` int(100) NOT NULL AUTO_INCREMENT,
  `nombre_nodo` varchar(50) DEFAULT NULL,
  `categoria_nodo` varchar(50) DEFAULT NULL,
  `url_nodo` varchar(250) DEFAULT NULL,
  `estado_nodo` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_nodo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_nodo`
--

LOCK TABLES sys_nodo WRITE;
INSERT INTO sys_nodo VALUES('7', 'Bebidas', 'Bebidas', 'Bebidas', '1');
INSERT INTO sys_nodo VALUES('8', 'horno', 'horno', 'demo', '1');
UNLOCK TABLES;


--
-- Table structure for table `sys_pais`
--

DROP TABLE IF EXISTS sys_pais;
CREATE TABLE `sys_pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(50) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `registro_legal` varchar(50) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_pais`
--

LOCK TABLES sys_pais WRITE;
INSERT INTO sys_pais VALUES('7', 'El Salvador', '3', '10000111', '2016-11-13 22:11:07', '2016-11-13 15:10:38', '1');
INSERT INTO sys_pais VALUES('8', 'Guatemala', '3', '12345', '2016-11-13 22:11:39', '2016-11-13 15:15:34', '1');
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
  CONSTRAINT `FK_sys_pais_departamento_sys_pais` FOREIGN KEY (`id_pais`) REFERENCES `sys_pais` (`id_pais`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_pais_departamento`
--

LOCK TABLES sys_pais_departamento WRITE;
INSERT INTO sys_pais_departamento VALUES('14', '7', 'San Salvador', '3', '1', '2016-11-13 15:05:53');
INSERT INTO sys_pais_departamento VALUES('15', '7', 'San Miguel', '3', '1', '2016-11-13 15:59:47');
UNLOCK TABLES;


--
-- Table structure for table `sys_pais_impuesto`
--

DROP TABLE IF EXISTS sys_pais_impuesto;
CREATE TABLE `sys_pais_impuesto` (
  `id_impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) DEFAULT NULL,
  `nombre_impuesto` varchar(50) DEFAULT NULL,
  `monto_impuesto` float DEFAULT NULL,
  `descripcion_impuesto` varchar(255) DEFAULT NULL,
  `creado` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado_impuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_impuesto`),
  KEY `FK_sys_pais_cobros_sys_sucursal` (`id_pais`),
  KEY `FK_sys_pais_cobros_sr_usuarios` (`id_usuario`),
  CONSTRAINT `FK_sys_pais_cobros_sr_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `sr_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sys_pais_cobros_sys_pais` FOREIGN KEY (`id_pais`) REFERENCES `sys_pais` (`id_pais`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_pais_impuesto`
--

LOCK TABLES sys_pais_impuesto WRITE;
INSERT INTO sys_pais_impuesto VALUES('2', '7', 'Iva', '0.13', 'Impuesto Sobre la Renta', '2016-11-14', '3', '1');
UNLOCK TABLES;


--
-- Table structure for table `sys_productos`
--

DROP TABLE IF EXISTS sys_productos;
CREATE TABLE `sys_productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `description_producto` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `video` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `image` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `FK1_Producto_Categoria_Producto` (`categoria_id`),
  CONSTRAINT `FK1_Producto_Categoria_Producto` FOREIGN KEY (`categoria_id`) REFERENCES `sys_categoria_producto` (`id_categoria_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `sys_productos`
--

LOCK TABLES sys_productos WRITE;
UNLOCK TABLES;


--
-- Table structure for table `sys_productos_sucursal`
--

DROP TABLE IF EXISTS sys_productos_sucursal;
CREATE TABLE `sys_productos_sucursal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `precio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_ProductoSucursal_Sucursal` (`id_sucursal`),
  KEY `FK2_ProductoSucursal_Producto` (`id_producto`),
  CONSTRAINT `FK1_ProductoSucursal_Sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sys_sucursal` (`id_sucursal`),
  CONSTRAINT `FK2_ProductoSucursal_Producto` FOREIGN KEY (`id_producto`) REFERENCES `sys_productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `sys_productos_sucursal`
--

LOCK TABLES sys_productos_sucursal WRITE;
UNLOCK TABLES;


--
-- Table structure for table `sys_proveedores`
--

DROP TABLE IF EXISTS sys_proveedores;
CREATE TABLE `sys_proveedores` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(50) DEFAULT NULL,
  `descripcion_proveedor` varchar(200) DEFAULT NULL,
  `correo_proveedor` varchar(100) DEFAULT NULL,
  `direccion_proveedor` varchar(250) DEFAULT NULL,
  `telefono_proveedor` varchar(100) DEFAULT NULL,
  `contacto_referencia_proveedor` varchar(100) DEFAULT NULL,
  `fecha_creacion_proveedor` datetime NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_proveedores`
--

LOCK TABLES sys_proveedores WRITE;
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
  CONSTRAINT `FK_sys_sucursal_sys_pais_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `sys_pais_departamento` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_sucursal`
--

LOCK TABLES sys_sucursal WRITE;
INSERT INTO sys_sucursal VALUES('6', '14', 'Castanios', 'MultiPlaza', '22345678', '43567823', 'Centro Comercial', '2016-11-13 15:06:57', '1', '3');
INSERT INTO sys_sucursal VALUES('7', '15', 'El Volcan', 'el volcan', '23232', '232323', 'el volcan', '2016-11-13 16:15:35', '1', '3');
INSERT INTO sys_sucursal VALUES('8', '14', 'Escalon Norte', 'Escalon Norte', '22456789', '23456789', 'Luceiro', '2016-11-23 21:07:04', '1', '3');
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
  `creado` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `estado_impuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_impuesto`),
  KEY `FK_sys_sucursal_cobros_sys_sucursal` (`id_sucursal`),
  KEY `FK_sys_sucursal_cobros_sr_usuarios` (`id_usuario`),
  CONSTRAINT `FK_sys_sucursal_cobros_sr_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `sr_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sys_sucursal_cobros_sys_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sys_sucursal` (`id_sucursal`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_sucursal_impuesto`
--

LOCK TABLES sys_sucursal_impuesto WRITE;
INSERT INTO sys_sucursal_impuesto VALUES('4', '6', 'Iva', '0.13', 'Impuesto Sobre la Renta', '2016-11-14', '3', '1');
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
  `creado_por` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_sys_sucursal_int_usuarios_sys_sucursal` (`id_sucursal`),
  KEY `FK_sys_sucursal_int_usuarios_sr_usuarios` (`id_usuario`),
  CONSTRAINT `FK_sys_sucursal_int_usuarios_sr_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `sr_usuarios` (`id_usuario`),
  CONSTRAINT `FK_sys_sucursal_int_usuarios_sys_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sys_sucursal` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_sucursal_int_usuarios`
--

LOCK TABLES sys_sucursal_int_usuarios WRITE;
INSERT INTO sys_sucursal_int_usuarios VALUES('15', '6', '4', '1', '3');
INSERT INTO sys_sucursal_int_usuarios VALUES('16', '7', '4', '1', '3');
INSERT INTO sys_sucursal_int_usuarios VALUES('17', '6', '8', '1', '3');
INSERT INTO sys_sucursal_int_usuarios VALUES('18', '7', '8', '1', '3');
INSERT INTO sys_sucursal_int_usuarios VALUES('19', '8', '8', '1', '3');
UNLOCK TABLES;


--
-- Table structure for table `sys_sucursal_nodo`
--

DROP TABLE IF EXISTS sys_sucursal_nodo;
CREATE TABLE `sys_sucursal_nodo` (
  `id_nodo_sucursal` int(100) NOT NULL AUTO_INCREMENT,
  `id_sucursal` int(100) NOT NULL DEFAULT '0',
  `id_nodo` int(100) NOT NULL DEFAULT '0',
  `sucursal_estado_nodo` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_nodo_sucursal`),
  KEY `id_nodo` (`id_nodo_sucursal`),
  KEY `FK_sys_sucursal_nodo_sys_nodo` (`id_nodo`),
  KEY `FK_sys_sucursal_nodo_sys_sucursal` (`id_sucursal`),
  CONSTRAINT `FK_sys_sucursal_nodo_sys_nodo` FOREIGN KEY (`id_nodo`) REFERENCES `sys_nodo` (`id_nodo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sys_sucursal_nodo_sys_sucursal` FOREIGN KEY (`id_sucursal`) REFERENCES `sys_sucursal` (`id_sucursal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_sucursal_nodo`
--

LOCK TABLES sys_sucursal_nodo WRITE;
INSERT INTO sys_sucursal_nodo VALUES('7', '6', '7', '0');
INSERT INTO sys_sucursal_nodo VALUES('8', '7', '7', '1');
INSERT INTO sys_sucursal_nodo VALUES('9', '8', '7', '0');
INSERT INTO sys_sucursal_nodo VALUES('10', '6', '8', '0');
INSERT INTO sys_sucursal_nodo VALUES('11', '7', '8', '1');
INSERT INTO sys_sucursal_nodo VALUES('12', '8', '8', '1');
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


--
-- Table structure for table `sys_tipo_unidad_medida`
--

DROP TABLE IF EXISTS sys_tipo_unidad_medida;
CREATE TABLE `sys_tipo_unidad_medida` (
  `id_tipo_unidad_medida` int(11) NOT NULL AUTO_INCREMENT,
  `name_tipo_unidad_medida` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tipo_unidad_medida`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `sys_tipo_unidad_medida`
--

LOCK TABLES sys_tipo_unidad_medida WRITE;
INSERT INTO sys_tipo_unidad_medida VALUES('1', 'Masa', '2016-11-29 00:00:00');
INSERT INTO sys_tipo_unidad_medida VALUES('2', 'Volumen', '2016-11-29 00:00:00');
INSERT INTO sys_tipo_unidad_medida VALUES('3', 'Cantidad de Sustancias', '2016-11-29 00:00:00');
UNLOCK TABLES;


--
-- Table structure for table `sys_unidad_medida`
--

DROP TABLE IF EXISTS sys_unidad_medida;
CREATE TABLE `sys_unidad_medida` (
  `id_unidad_medida` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_unidad_medida` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Símbolo_unidad_medida` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id_tipo_unidad_medida` int(11) DEFAULT NULL,
  `valor_unidad_medida` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_unidad_medida`),
  KEY `FK1_Unidada_medida_Tipo_unidad_medida` (`id_tipo_unidad_medida`),
  CONSTRAINT `FK1_Unidada_medida_Tipo_unidad_medida` FOREIGN KEY (`id_tipo_unidad_medida`) REFERENCES `sys_tipo_unidad_medida` (`id_tipo_unidad_medida`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `sys_unidad_medida`
--

LOCK TABLES sys_unidad_medida WRITE;
INSERT INTO sys_unidad_medida VALUES('1', 'masa', 'm', '1', '2', '2016-12-10 00:00:00');
UNLOCK TABLES;



 SET FOREIGN_KEY_CHECKS=1;
-- Dump de la Base de Datos Completo.