-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 25, 2019 at 05:48 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expressfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
CREATE TABLE IF NOT EXISTS `adress` (
  `adress_id` int(11) NOT NULL AUTO_INCREMENT,
  `houseNumber` int(11) NOT NULL,
  `street` varchar(50) NOT NULL,
  `postcode` varchar(9) NOT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`adress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adress`
--

INSERT INTO `adress` (`adress_id`, `houseNumber`, `street`, `postcode`, `country`) VALUES
(1, 4, 'Batley road', 'wf2 0ag', 'Yorkshire'),
(2, 14, 'Flanshaw Road', 'WF2 0AS', 'Yorkshire'),
(3, 4, 'Cleevethorpe Grove', 'WF2 7NA', 'Yorkshire'),
(4, 214, 'Standbridge Lane', 'WF2 7NL', 'Yorkshire'),
(5, 40, 'Denby Dale Road', 'WF1 1AA', 'Yorkshire'),
(6, 102, 'Whites Road', 'WF1 1AH', 'Yorkshire'),
(7, 4, 'Market Street', 'WF1 1DD', 'Yorkshire'),
(8, 73, 'Ings Road, Wakefield', 'WF1 1DG', 'Yorkshire');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Tel` char(12) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `name`, `surname`, `DOB`, `Tel`) VALUES
(1, 'John', 'Wilkinson', '1970-10-12', '07454289632'),
(2, 'Eva', 'Wilkinson', '1975-11-20', '07415689535'),
(3, 'Alfi', 'Wilkinson', '1990-08-02', '07542153526'),
(4, 'Dana', 'Wilkinson', '1991-03-20', '07481653295'),
(5, 'Mervin', 'Wilkinson', '1993-03-20', '07681643285'),
(8, 'Paul', 'Butembo', '1963-09-13', '07569853214'),
(9, 'Carol', 'Butembo', '1970-07-03', '07535623585'),
(10, 'lLaurent', 'Devillers', '1949-04-16', '07445856592'),
(11, 'Florence', 'deillrs', '1955-03-17', '07245189562'),
(12, 'Moussa', 'Faisal', '1995-04-16', '07478856592'),
(13, 'Karim', 'Faisal', '1999-03-17', '07244589562');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE IF NOT EXISTS `driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `on_off` tinyint(1) NOT NULL,
  `tel` varchar(12) NOT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `name`, `surname`, `on_off`, `tel`) VALUES
(1, 'mohamed', 'Saidy', 1, '0764536258'),
(2, 'unle', 'ben', 1, '07462356984'),
(3, 'ferriara', 'carlos', 1, '0764536758'),
(4, 'kirori', 'Elie', 1, '07462856984'),
(5, 'likala', 'mpoutu', 1, '07462356984'),
(6, 'carole', 'fernand', 1, '07462356984'),
(7, 'pierre', 'Danton', 1, '07462356984'),
(8, 'Bijou', 'Doudou', 1, '07462356984'),
(9, 'pierre', 'venant', 1, '07466856984'),
(10, 'benoit', 'francis', 1, '07462356984');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `availibility` tinyint(1) NOT NULL,
  `type` varchar(100) NOT NULL,
  `date_in` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item_id`, `name`, `availibility`, `type`, `date_in`, `price`) VALUES
(1, 'pizza napolitano', 1, 'dish', '2019-01-14', '20'),
(2, 'Massaman curry', 1, 'dish', '2018-12-18', '2'),
(3, 'custard', 1, 'dessert', '2019-01-14', '20'),
(4, 'pierogy', 1, 'dessert', '2018-12-18', '25');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE IF NOT EXISTS `orderdetail` (
  `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`orderdetail_id`),
  KEY `order_id` (`order_id`,`item_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderdetail_id`, `order_id`, `item_id`, `price`, `quantity`) VALUES
(1, 1, 3, '25', 3),
(2, 1, 2, '25', 2),
(3, 1, 4, '20', 3),
(4, 1, 1, '25', 2),
(5, 2, 1, '25', 2),
(6, 2, 2, '20', 3),
(7, 2, 3, '25', 2),
(8, 2, 4, '20', 2),
(9, 3, 1, '25', 1),
(10, 3, 2, '20', 1),
(11, 4, 2, '20', 1),
(12, 4, 3, '25', 2),
(13, 5, 1, '25', 4),
(14, 5, 4, '20', 4),
(15, 4, 1, '25', 4),
(16, 4, 3, '25', 5),
(17, 5, 4, '20', 5),
(18, 5, 2, '20', 6),
(19, 5, 2, '20', 6),
(20, 5, 3, '25', 7),
(21, 6, 1, '25', 4),
(22, 6, 3, '25', 3),
(23, 7, 2, '20', 6),
(24, 7, 3, '25', 5),
(25, 8, 2, '20', 6),
(26, 8, 3, '25', 4),
(27, 8, 4, '20', 5),
(28, 8, 4, '20', 6),
(29, 9, 1, '25', 5),
(30, 9, 4, '25', 4),
(31, 10, 2, '20', 4),
(32, 10, 3, '25', 5),
(33, 4, 4, '25', 5),
(34, 5, 3, '25', 3),
(35, 7, 1, '25', 5),
(36, 7, 1, '25', 4);

-- --------------------------------------------------------

--
-- Table structure for table `restaurantorder`
--

DROP TABLE IF EXISTS `restaurantorder`;
CREATE TABLE IF NOT EXISTS `restaurantorder` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `adress_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `timeIn` datetime NOT NULL,
  `timeOut` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `client_id` (`client_id`,`adress_id`,`driver_id`),
  KEY `adress_const` (`adress_id`),
  KEY `driv_const` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurantorder`
--

INSERT INTO `restaurantorder` (`order_id`, `client_id`, `adress_id`, `driver_id`, `timeIn`, `timeOut`, `status`) VALUES
(1, 4, 3, 1, '2019-02-13 09:18:00', '2019-02-13 09:21:00', 1),
(2, 11, 8, 10, '2019-05-25 15:26:31', '2019-05-25 15:36:31', 1),
(3, 12, 7, 3, '2019-04-13 00:00:00', '2019-04-13 00:20:00', 1),
(4, 10, 5, 2, '2019-03-25 04:19:00', '2019-03-25 04:25:00', 1),
(5, 3, 3, 3, '2019-03-08 10:18:00', '2019-03-08 10:35:00', 1),
(6, 9, 5, 1, '2019-02-16 00:14:00', '2019-02-16 00:24:00', 1),
(7, 2, 2, 6, '2019-04-14 12:19:00', '2019-04-14 12:19:00', 1),
(8, 11, 7, 7, '2019-04-19 15:00:00', '2019-04-19 15:35:00', 1),
(9, 5, 6, 8, '2019-02-12 07:00:00', '2019-02-12 07:25:00', 1),
(10, 12, 1, 1, '2019-03-22 15:00:00', '2019-03-22 15:51:00', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `restaurantorder` (`order_id`),
  ADD CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`);

--
-- Constraints for table `restaurantorder`
--
ALTER TABLE `restaurantorder`
  ADD CONSTRAINT `adress_const` FOREIGN KEY (`adress_id`) REFERENCES `adress` (`adress_id`),
  ADD CONSTRAINT `client_const` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `driv_const` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
