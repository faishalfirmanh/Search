-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 05:23 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banding`
--

-- --------------------------------------------------------

--
-- Table structure for table `banding`
--

CREATE TABLE `banding` (
  `no` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `asal` varchar(20) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `jarak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banding`
--

INSERT INTO `banding` (`no`, `id`, `asal`, `tujuan`, `jarak`) VALUES
(1, 18, 'a', 'c', 200),
(2, 19, 'c', 'd', 7000),
(3, 21, 'c', 'f', 9000),
(4, 22, 'd', 'g', 7700),
(5, 24, 'f', 'i', 6200),
(6, 25, 'g', 'j', 5300),
(7, 26, 'i', 'k', 4300),
(8, 26, 'j', 'k', 1200),
(9, 27, 'j', 'l', 1100),
(13, 28, 'k', 'm', 190),
(14, 19, 'e', 'd', 6000),
(15, 22, 'h', 'g', 7600),
(16, 29, 'l', 'n', 270),
(17, 29, 'm', 'n', 990),
(18, 30, 'n', 'c1', 990),
(19, 32, 'c1', 'finish', 1000),
(20, 19, 'b', 'd', 200),
(21, 24, 'o', 'i', 6400),
(22, 32, 'm', 'finish', 230);

-- --------------------------------------------------------

--
-- Table structure for table `koordinattitik`
--

CREATE TABLE `koordinattitik` (
  `id` int(11) NOT NULL,
  `kode` varchar(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `longg` double NOT NULL,
  `nilai` int(11) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `koordinattitik`
--

INSERT INTO `koordinattitik` (`id`, `kode`, `nama`, `lat`, `longg`, `nilai`, `ket`) VALUES
(16, 'a', 'mantup', 0, 0, 0, '0'),
(17, 'b', 'dapet', 0, 0, 0, '0'),
(18, 'c', 'ngagrok-dawar', 0, 0, 0, '0'),
(19, 'd', 'Perempatan dawar', 0, 0, 0, '0'),
(20, 'e', 'Randegan-mojowuku gersik', 0, 0, 0, '0'),
(21, 'f', 'Pertigaan kemlagi,jl raya mjk-lamongan', 0, 0, 0, '0'),
(22, 'g', 'Pertigaan kupang jetis', 0, 0, 0, '0'),
(23, 'h', 'Jetis wringinanom-gersik', 0, 0, 0, '0'),
(24, 'i', 'Jl mjk-lamongan-gedek ploso', 0, 0, 6400, '0'),
(25, 'j', 'Pertigaan beringin, jl raya sidoharjo gedeg', 0, 0, 0, '0'),
(26, 'k', 'Pertigaan sebelum masuk jembatan ke alun-alun, terusan gedeg', 0, 0, 10700, '0'),
(27, 'l', 'Pertigaan arah jembatan besar mlirip, jl kenonggo', 0, 0, 0, '0'),
(28, 'm', 'Pertigaan jembatan Jl brawijaya, jl majapahit, hayamuruk, mojokerto', 0, 0, 10890, '0'),
(29, 'n', 'Pertigaan arah rolak bawah jembatan gajah mada jl mayjen sungkono, hayam uruk', 0, 0, 11880, '0'),
(30, 'c1', 'Perempatan  mpunala ke bay pass-gajah mada, residen pamuji', 0, 0, 12870, '0'),
(31, 'o', 'Ngusikan Jombang-Kemlagi/Watesprojo(jl. Gedeg ploso)', 0, 0, 0, '1'),
(32, 'finish', 'alun-alun', 0, 0, 11120, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banding`
--
ALTER TABLE `banding`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `koordinattitik`
--
ALTER TABLE `koordinattitik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banding`
--
ALTER TABLE `banding`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `koordinattitik`
--
ALTER TABLE `koordinattitik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banding`
--
ALTER TABLE `banding`
  ADD CONSTRAINT `banding_ibfk_1` FOREIGN KEY (`id`) REFERENCES `koordinattitik` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
