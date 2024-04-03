-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 08:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phones 2.0`
--

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `phonesID` int(11) NOT NULL,
  `phonesBrand` varchar(128) NOT NULL,
  `phonesModel` varchar(128) NOT NULL,
  `phonesStorage` varchar(128) NOT NULL,
  `phonesPrice` varchar(128) NOT NULL,
  `phonesImage` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`phonesID`, `phonesBrand`, `phonesModel`, `phonesStorage`, `phonesPrice`, `phonesImage`) VALUES
(10, 'Samsung', 'S21', '128GB', '400$', '64522661a9400.jpg'),
(11, 'Samsung Galaxy', 'S21', '128GB', '600$', '6454add035ea3.jpg'),
(12, 'OnePlus', 'Nord', '128GB', '300$', '6454aebacc862.jpg'),
(17, 'Apple', '14 Pro', '128GB', '1200$', '6454be25e776b.jpg'),
(18, 'Apple', '14 Pro', '128GB', '1500$', '6454be4dcdb2c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersPassword` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `usersName`, `usersEmail`, `usersPassword`) VALUES
(1, 'Nasko', 'nasko6670@abv.bg', '$2y$10$Psmu57rpOgTt5VHz/Qn54uCsDMeaYVyVE3xj21nJXJx6AB1L5IBsW'),
(3, 'Penko', 'email@abv.bg', '$2y$10$oB/OVJZYI/XGH928l4z2SuD61WFxMYF//G/892Dt3270jKa8Yh6Au');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`phonesID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `phonesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
