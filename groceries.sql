-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2026 at 10:30 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groceries`
--

-- --------------------------------------------------------

--
-- Table structure for table `mscategory`
--

CREATE TABLE `mscategory` (
  `CategoryID` char(5) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mscategory`
--

INSERT INTO `mscategory` (`CategoryID`, `CategoryName`, `Price`) VALUES
('CT001', 'Dairy', '5.99'),
('CT002', 'Vegetable', '2.49'),
('CT003', 'Fruit', '3.99'),
('CT004', 'Meat', '12.99'),
('CT005', 'Condiment', '1.49');

-- --------------------------------------------------------

--
-- Table structure for table `mscustomer`
--

CREATE TABLE `mscustomer` (
  `CustomerID` char(5) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `CustomerGender` varchar(10) NOT NULL,
  `CustomerAddress` varchar(50) NOT NULL,
  `CustomerEmail` varchar(50) NOT NULL,
  `CustomerDOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mscustomer`
--

INSERT INTO `mscustomer` (`CustomerID`, `CustomerName`, `CustomerGender`, `CustomerAddress`, `CustomerEmail`, `CustomerDOB`) VALUES
('CU001', 'Dirk Titterell', 'Male', '74 Melvin Point', 'dtitterell0@yellowpages.com', '2003-10-29'),
('CU002', 'Dukey Diano', 'Male', '92 Sugar Alley', 'ddiano1@state.com', '2003-09-27'),
('CU003', 'Arman Smyley', 'Male', '9982 Coolidge Avenue', 'asmyley2@engadget.com', '2005-06-20'),
('CU004', 'Baxie Langhorn', 'Male', '18943 Ludington Street', 'blanghorn3@ft.com', '2002-06-08'),
('CU005', 'Zacherie Dietsche', 'Male', '9594 Elmside Trail', 'zdietsche4@census.gov', '2004-02-19'),
('CU006', 'Tedie Sandland', 'Male', '8 Bartillon Plaza', 'tsandland5@slate.com', '2005-03-16'),
('CU007', 'Lou Deboy', 'Female', '1 Northwestern Street', 'ldeboy6@webmd.com', '2002-11-29'),
('CU008', 'Florella Cumbridge', 'Female', '20429 Ryan Alley', 'fcumbridge7@mac.com', '2003-06-11'),
('CU009', 'Grange Cowtherd', 'Male', '078 Spaight Court', 'gcowtherd8@dyndns.org', '2005-01-23'),
('CU010', 'Wendie Archibold', 'Female', '0125 Granby Parkway', 'warchibold9@umich.edu', '2004-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `msemployee`
--

CREATE TABLE `msemployee` (
  `EmployeeID` char(5) NOT NULL,
  `EmployeeName` varchar(50) NOT NULL,
  `EmployeeGender` varchar(10) NOT NULL,
  `EmployeeAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msemployee`
--

INSERT INTO `msemployee` (`EmployeeID`, `EmployeeName`, `EmployeeGender`, `EmployeeAddress`) VALUES
('EM001', 'Clem', 'Male', '0975 Forest Dale Trail'),
('EM002', 'Dene', 'Male', '2 Grayhawk Parkway'),
('EM003', 'Lethia', 'Female', '905 Goodland Lane'),
('EM004', 'Tyrone', 'Male', '51745 Bowman Hill'),
('EM005', 'Shanda', 'Male', '848 New Castle Center'),
('EM006', 'Nani', 'Male', '3455 Village Green Court'),
('EM007', 'Dorothea', 'Male', '772 Goodland Park'),
('EM008', 'Chet', 'Female', '1 Merchant Street');

-- --------------------------------------------------------

--
-- Table structure for table `msproduct`
--

CREATE TABLE `msproduct` (
  `ProductID` char(5) NOT NULL CHECK (`ProductID` regexp '^PR[0-9][0-9][0-9]$'),
  `CategoryID` char(5) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `ProductPrice` float NOT NULL,
  `ProductStock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msproduct`
--

INSERT INTO `msproduct` (`ProductID`, `CategoryID`, `ProductName`, `ProductPrice`, `ProductStock`) VALUES
('PR001', 'CT003', 'Honeycrisp Apples', 1.49, 300),
('PR002', 'CT002', 'Yellow Carrots', 1.49, 200),
('PR003', 'CT004', 'Sockeye Salmon', 9.99, 100),
('PR004', 'CT001', 'Mozarella Cheese', 5.99, 50),
('PR005', 'CT003', 'Seville Oranges', 0.99, 300),
('PR006', 'CT002', 'Purple Carrots', 1.49, 200),
('PR007', 'CT004', 'Free-Range Chicken Breast', 8.99, 150),
('PR008', 'CT002', 'Organic Spinach', 2.49, 150),
('PR009', 'CT001', 'Cheddar Cheese', 4.99, 50),
('PR010', 'CT002', 'Campari Tomatoes', 1.49, 200),
('PR011', 'CT004', 'Atlantic Salmon', 9.99, 100),
('PR012', 'CT001', 'Gouda Cheese', 5.99, 50),
('PR013', 'CT002', 'Wild Spinach', 2.49, 150),
('PR014', 'CT003', 'Golden Delicious Apples', 0.99, 300),
('PR015', 'CT001', 'Unsalted Butter', 3.49, 100),
('PR016', 'CT002', 'Baby Spinach', 2.49, 150),
('PR017', 'CT003', 'Valencia Oranges', 0.99, 300),
('PR018', 'CT004', 'Coho Salmon', 9.99, 100),
('PR019', 'CT002', 'Baby Carrots', 1.49, 200),
('PR020', 'CT001', 'Feta Cheese', 3.99, 50),
('PR021', 'CT003', 'Granny Smith Apples', 0.99, 300),
('PR022', 'CT004', 'Wild-Caught Salmon', 9.99, 100),
('PR023', 'CT002', 'Sweet Carrots', 1.49, 200),
('PR024', 'CT003', 'Moro Oranges', 0.99, 300),
('PR025', 'CT001', 'Whole Milk', 2.99, 100),
('PR026', 'CT003', 'Navel Oranges', 0.99, 300),
('PR027', 'CT002', 'Cherry Tomatoes', 1.49, 200),
('PR028', 'CT001', 'Salted Butter', 3.49, 100),
('PR029', 'CT003', 'Braeburn Apples', 1.49, 300),
('PR030', 'CT002', 'San Marzano Tomatoes', 1.49, 200),
('PR031', 'CT001', '2% Milk', 2.99, 100),
('PR032', 'CT002', 'Roma Tomatoes', 1.49, 200),
('PR033', 'CT004', 'Mature Spinach', 2.49, 150),
('PR034', 'CT001', 'Blue Cheese', 6.99, 50),
('PR035', 'CT003', 'Pink Lady Apples', 1.49, 300),
('PR036', 'CT002', 'Yellow Cherry Tomatoes', 1.49, 200),
('PR037', 'CT004', 'Wild-Caught Tuna', 12.99, 100),
('PR038', 'CT001', 'Goat Cheese', 5.99, 50),
('PR039', 'CT003', 'Red Delicious Apples', 0.99, 300),
('PR040', 'CT002', 'Heirloom Tomatoes', 2.49, 150),
('PR041', 'CT004', 'Wild-Caught Halibut', 14.99, 100),
('PR042', 'CT001', 'Swiss Cheese', 4.99, 50),
('PR043', 'CT002', 'Beefsteak Tomatoes', 1.49, 200),
('PR044', 'CT003', 'Bosc Pears', 1.49, 300),
('PR045', 'CT004', 'Wild-Caught Sole', 11.99, 100),
('PR046', 'CT001', 'Goat Milk', 3.99, 30);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` char(5) NOT NULL,
  `EmployeeID` char(5) NOT NULL,
  `CustomerID` char(5) NOT NULL,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionID`, `EmployeeID`, `CustomerID`, `TransactionDate`) VALUES
('TR001', 'EM001', 'CU001', '2022-01-01'),
('TR002', 'EM002', 'CU002', '2022-01-02'),
('TR003', 'EM003', 'CU003', '2022-01-03'),
('TR004', 'EM004', 'CU004', '2022-01-04'),
('TR005', 'EM005', 'CU005', '2022-01-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mscategory`
--
ALTER TABLE `mscategory`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `mscustomer`
--
ALTER TABLE `mscustomer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `msemployee`
--
ALTER TABLE `msemployee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `EmployeeID` (`EmployeeID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `msemployee` (`EmployeeID`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `mscustomer` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
