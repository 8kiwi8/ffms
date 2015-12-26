-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2015 at 08:42 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ffms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `bid` int(25) NOT NULL AUTO_INCREMENT,
  `uid` int(25) NOT NULL,
  `sid` int(25) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL,
  `tid` int(25) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `fk_sid` (`sid`),
  KEY `fk_uid` (`uid`),
  KEY `fk_id` (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `uid`, `sid`, `price`, `date`, `tid`, `start`, `end`, `remark`, `status`) VALUES
(1, 1, 1, 45, '2015-12-03', 10, '2015-12-03 02:00:00', '2015-12-03 03:00:00', 'big', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE IF NOT EXISTS `space` (
  `sid` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picPath` text NOT NULL,
  `price` double NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `space`
--

INSERT INTO `space` (`sid`, `name`, `description`, `picPath`, `price`, `status`) VALUES
(1, 'Court 1', '- Vinyl Futsal Field\r\n- Favoured field among futsal players.    Suitable for performing actions like diving.\r\n- Also known as rubber, soft field\r\n- Size: 15m X 25m (width X length)', '/localhost:8080/ffms/img/vinylfield.png', 45, 'active'),
(2, 'Court 2', '- Vinyl Futsal Field\r\n- Favoured field among futsal players. Suitable for performing actions like diving.\r\n- Also known as rubber, soft field\r\n- Size: 18m X 38m (width X length)', '/localhost:8080/ffms/img/vinylfield.png', 55, 'active'),
(3, 'Court 3', '- Parquette Futsal Field\r\n- Popular field in Europe and Latin America\r\n- Made of Wood\r\n- Size: 16m X 27m (width X length)', '/localhost:8080/ffms/img/paraquette.png', 55, 'active'),
(4, 'Court 4', '- Futsal Artificial Grass\r\n- Indoor soccer with outdoor feel\r\n- Suitable for casual games\r\n- Size: 16m X 27m (width X length)', 'http://localhost:8080/ffms/img/futsal-turff.png', 60, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE IF NOT EXISTS `time` (
  `tid` int(25) NOT NULL,
  `description` varchar(25) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`tid`, `description`) VALUES
(10, '10AM'),
(11, '11AM'),
(12, '12PM'),
(13, '1PM'),
(14, '2PM'),
(15, '3PM'),
(16, '4PM'),
(17, '5PM'),
(18, '6PM'),
(19, '7PM'),
(20, '8PM'),
(21, '9PM'),
(22, '10PM'),
(23, '11PM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `username`, `password`, `type`, `status`) VALUES
(1, 'test', 'test@test', 'testtest', 'admin', 'active');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk_id` FOREIGN KEY (`tid`) REFERENCES `time` (`tid`),
  ADD CONSTRAINT `fk_sid` FOREIGN KEY (`sid`) REFERENCES `space` (`sid`),
  ADD CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
