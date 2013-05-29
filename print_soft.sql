-- phpMyAdmin SQL Dump
-- version 4.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2013 at 08:36 AM
-- Server version: 5.6.11
-- PHP Version: 5.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `print_soft`
--

-- --------------------------------------------------------

--
-- Table structure for table `ps_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ps_ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL,
  `temporal_data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ps_ci_sessions`
--

INSERT INTO `ps_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`, `temporal_data`) VALUES
('7a9aade8f43cc230b8be8e7e3b8a3ac3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.93 Safari/537.36', 1369805256, 'a:4:{s:9:"user_data";s:0:"";s:5:"email";s:18:"phi@blackspiral.eu";s:6:"nombre";s:14:"Developer Jedi";s:5:"nivel";s:1:"1";}', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_products_1`
--

CREATE TABLE IF NOT EXISTS `ps_products_1` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `costo` varchar(50) NOT NULL,
  `bla` varchar(200) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edit` datetime NOT NULL,
  `create_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_edit_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_products_1`
--

INSERT INTO `ps_products_1` (`id`, `name`, `costo`, `bla`, `active`, `create`, `last_edit`, `create_by`, `last_edit_by`) VALUES
(1, 'Lona Front 13 Oz 720 DPI', '45', '', 1, '2013-05-29 04:47:52', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu');

-- --------------------------------------------------------

--
-- Table structure for table `ps_products_2`
--

CREATE TABLE IF NOT EXISTS `ps_products_2` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `costo` varchar(50) NOT NULL,
  `bla` varchar(200) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edit` datetime NOT NULL,
  `create_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_edit_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `ps_products_2`
--

INSERT INTO `ps_products_2` (`id`, `name`, `costo`, `bla`, `active`, `create`, `last_edit`, `create_by`, `last_edit_by`) VALUES
(1, 'Tarjetas Presentación 4x1 300g Sencillas', '60', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(2, 'Tarjetas Presentación 4x1 300g Dobles', '120', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(3, 'Tarjetas Presentación 4x4 300g Sencillas', '100', '', 1, '2013-05-28 06:46:10', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(4, 'Tarjetas Presentación 4x4 300g Dobles', '200', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(5, 'Postales 4x1 300g 9x15cm', '180', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(6, 'Postales 4x1 300g 10x18cm', '240', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(7, 'Postales 4x4 300g 9x15cm', '300', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(8, 'Postales 4x4 300g 10x18cm', '400', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(9, 'Volantes 4x4 115g 1/4 Carta', '190', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(10, 'Volantes 4x4 115g 1/2 Carta', '360', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(11, 'Volantes 4x4 115g 1 Carta', '830', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(12, 'Volantes 4x4 115g Díptico o Tríptico Carta', '830', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(13, 'Volantes 4x1 115g 1/4 Carta', '90', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(14, 'Volantes 4x1 115g 1/2 Carta', '180', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(15, 'Volantes 4x1 115g 1 Carta', '360', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(16, 'Posters 4x0 135g 4 Cartas Sin Barníz', '1600', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(17, 'Posters 4x0 135g 8 Cartas Sin Barníz', '3200', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(18, 'Posters 4x0 135g 4 Oficios Sin Barníz', '1950', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(19, 'Posters 4x0 135g 8 Oficios Sin Barníz', '4800', '', 1, '2013-05-29 04:49:24', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(20, 'Posters 4x0 135g 4 Cartas Con Barníz', '1950', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(21, 'Posters 4x0 135g 8 Cartas Con Barníz', '3950', '', 1, '2013-05-29 05:07:07', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(22, 'Posters 4x0 135g 4 Oficios Con Barníz', '2250', '', 1, '2013-05-29 04:49:24', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(23, 'Posters 4x0 135g 8 Oficios Con Barníz', '5350', '', 1, '2013-05-29 04:49:24', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu');

-- --------------------------------------------------------

--
-- Table structure for table `ps_products_3`
--

CREATE TABLE IF NOT EXISTS `ps_products_3` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `costo` varchar(50) NOT NULL,
  `bla` varchar(200) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edit` datetime NOT NULL,
  `create_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_edit_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_products_3`
--

INSERT INTO `ps_products_3` (`id`, `name`, `costo`, `bla`, `active`, `create`, `last_edit`, `create_by`, `last_edit_by`) VALUES
(1, '510 x 645', '100', '', 1, '2013-05-28 06:46:10', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(2, '550 x 650', '120', '', 1, '2013-05-28 06:46:10', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(3, '615 x 724', '140', '', 1, '2013-05-28 06:46:10', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(4, '770 x 1030', '230', '', 1, '2013-05-28 06:46:10', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu');

-- --------------------------------------------------------

--
-- Table structure for table `ps_products_4`
--

CREATE TABLE IF NOT EXISTS `ps_products_4` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `costo` varchar(50) NOT NULL,
  `bla` varchar(200) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edit` datetime NOT NULL,
  `create_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_edit_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_products_5`
--

CREATE TABLE IF NOT EXISTS `ps_products_5` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `costo` varchar(50) NOT NULL,
  `bla` varchar(200) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edit` datetime NOT NULL,
  `create_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_edit_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_products_5`
--

INSERT INTO `ps_products_5` (`id`, `name`, `costo`, `bla`, `active`, `create`, `last_edit`, `create_by`, `last_edit_by`) VALUES
(1, 'Diseño Simple', '60', '', 1, '2013-05-28 01:45:00', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(2, 'Diseño con imagen', '100', '', 1, '2013-05-28 01:46:10', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu'),
(3, 'Diseño complejo', '200', '', 1, '2013-05-28 01:46:10', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu');

-- --------------------------------------------------------

--
-- Table structure for table `ps_products_6`
--

CREATE TABLE IF NOT EXISTS `ps_products_6` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `costo` varchar(50) NOT NULL,
  `bla` varchar(200) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edit` datetime NOT NULL,
  `create_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_edit_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_products_6`
--

INSERT INTO `ps_products_6` (`id`, `name`, `costo`, `bla`, `active`, `create`, `last_edit`, `create_by`, `last_edit_by`) VALUES
(1, 'Corte Guillotina', '5', '', 1, '2013-05-28 06:45:00', '0000-00-00 00:00:00', 'phi@blackspiral.eu', 'phi@blackspiral.eu');

-- --------------------------------------------------------

--
-- Table structure for table `ps_users`
--

CREATE TABLE IF NOT EXISTS `ps_users` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `movil` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` text COLLATE utf8_unicode_ci NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_users`
--

INSERT INTO `ps_users` (`id`, `email`, `password`, `nombre`, `telefono`, `movil`, `direccion`, `nivel`, `last_login`) VALUES
(1, 'phi@blackspiral.eu', '2716373f1a0b85c7d8fb074fb4fc61c7', 'Developer Jedi', '5533667788', '', 'una dirección ', 1, '2013-05-29 00:08:28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
