-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 26, 2015 at 10:48 PM
-- Server version: 5.5.46
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ffms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(25) NOT NULL,
  `uid` int(25) NOT NULL,
  `sid` int(25) NOT NULL,
  `price` double NOT NULL,
  `date` date NOT NULL,
  `tid` int(25) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `uid`, `sid`, `price`, `date`, `tid`, `start`, `end`, `remark`, `status`) VALUES
(8, 1, 1, 45, '2015-12-27', 10, '2015-12-27 08:00:00', '2015-12-27 09:00:00', 'small', 'active'),
(9, 2, 2, 55, '2015-12-27', 11, '2015-12-27 10:00:00', '2015-12-27 11:00:00', 'medium', 'active'),
(10, 1, 3, 55, '2015-12-27', 12, '2015-12-27 14:00:00', '2015-12-27 15:00:00', 'big', 'active'),
(11, 2, 4, 60, '2015-12-28', 14, '2015-12-28 13:00:00', '2015-12-28 14:00:00', 'small a bit', 'active'),
(12, 1, 1, 45, '2015-12-28', 15, '2015-12-28 09:00:00', '2015-12-28 10:00:00', 'awesome', 'active'),
(13, 2, 2, 55, '2015-12-28', 16, '2015-12-28 15:00:00', '2015-12-28 16:00:00', 'very large', 'active'),
(14, 1, 3, 55, '2015-12-29', 14, '2015-12-29 08:00:00', '2015-12-29 09:00:00', 'between medium and big', 'active'),
(15, 2, 3, 60, '2015-12-29', 17, '2015-12-29 13:00:00', '2015-12-29 14:00:00', 'big', 'active'),
(16, 1, 2, 55, '2015-12-29', 18, '2015-12-29 15:00:00', '2015-12-29 16:00:00', 'small', 'active'),
(17, 2, 1, 10.11, '2015-12-27', 15, '2015-12-27 06:14:20', '2015-12-27 06:14:20', 'Test', 'Pending'),
(18, 2, 1, 10.11, '2015-12-27', 15, '2015-12-27 06:14:23', '2015-12-27 06:14:23', 'Test', 'Pending'),
(19, 2, 4, 10.11, '2015-12-27', 19, '2015-12-27 06:14:43', '2015-12-27 06:14:43', 'Test', 'Pending'),
(20, 2, 3, 10.11, '2015-12-27', 17, '2015-12-27 06:15:39', '2015-12-27 06:15:39', 'Test', 'Pending'),
(21, 2, 3, 10.11, '2015-12-27', 21, '2015-12-27 06:17:12', '2015-12-27 06:17:12', 'Test', 'Pending'),
(22, 2, 4, 10.11, '2015-12-27', 16, '2015-12-27 06:17:33', '2015-12-27 06:17:33', 'Test', 'Pending'),
(23, 2, 1, 10.11, '2015-12-27', 19, '2015-12-27 06:18:08', '2015-12-27 06:18:08', 'Test', 'Pending'),
(24, 2, 2, 10.11, '2015-12-27', 16, '2015-12-27 06:18:44', '2015-12-27 06:18:44', 'Test', 'Pending'),
(25, 2, 1, 10.11, '2015-12-27', 22, '2015-12-27 06:18:52', '2015-12-27 06:18:52', 'Test', 'Pending'),
(26, 2, 1, 10.11, '2015-12-27', 23, '2015-12-27 06:19:00', '2015-12-27 06:19:00', 'Test', 'Pending'),
(27, 2, 1, 10.11, '2015-12-27', 18, '2015-12-27 06:19:08', '2015-12-27 06:19:08', 'Test', 'Pending'),
(28, 2, 1, 10.11, '2015-12-27', 20, '2015-12-27 06:19:14', '2015-12-27 06:19:14', 'Test', 'Pending'),
(29, 2, 4, 10.11, '2015-12-27', 14, '2015-12-27 06:19:24', '2015-12-27 06:19:24', 'Test', 'Pending'),
(30, 2, 4, 10.11, '2015-12-27', 15, '2015-12-27 06:20:31', '2015-12-27 06:20:31', 'Test', 'Pending'),
(31, 2, 3, 10.11, '2015-12-27', 18, '2015-12-27 06:21:33', '2015-12-27 06:21:33', 'Test', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE `space` (
  `sid` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picPath` text NOT NULL,
  `price` double NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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

CREATE TABLE `time` (
  `tid` int(25) NOT NULL,
  `description` varchar(25) NOT NULL
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

CREATE TABLE `user` (
  `uid` int(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `username`, `password`, `type`, `status`) VALUES
(1, 'test', 'test@test', 'testtest', 'admin', 'active'),
(2, 'user', 'user@user', 'useruser', 'user', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `fk_sid` (`sid`),
  ADD KEY `fk_uid` (`uid`),
  ADD KEY `fk_id` (`tid`);

--
-- Indexes for table `space`
--
ALTER TABLE `space`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `space`
--
ALTER TABLE `space`
  MODIFY `sid` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
