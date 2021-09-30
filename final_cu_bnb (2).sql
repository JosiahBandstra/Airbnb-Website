-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 07:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_cu_bnb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` char(6) NOT NULL,
  `Admin_FName` char(15) NOT NULL,
  `Admin_LName` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_FName`, `Admin_LName`) VALUES
('100000', 'Nicole', 'Broekhuizen'),
('100001', 'Jody', 'Broekhuizen'),
('100002', 'Emily', 'Broekhuizen');

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE `amenity` (
  `Charge_ID` char(8) NOT NULL,
  `Am_Description` varchar(40) DEFAULT NULL,
  `Am_Rate` double DEFAULT NULL,
  `Am_Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenity`
--

INSERT INTO `amenity` (`Charge_ID`, `Am_Description`, `Am_Rate`, `Am_Status`) VALUES
('11111111', 'Nintendo Switch Game Console', 20, 'Checked-Out'),
('11111112', 'Xbox Series X Game Console', 15.5, 'Checked-Out'),
('11111113', 'Tandem Bike', 10, 'Pending Return'),
('11111114', 'Harry Potter Box Set, Books 1-7', 5, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `amenity_request`
--

CREATE TABLE `amenity_request` (
  `Charge_ID` char(8) NOT NULL,
  `Res_ID` char(6) NOT NULL,
  `RequestDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenity_request`
--

INSERT INTO `amenity_request` (`Charge_ID`, `Res_ID`, `RequestDate`) VALUES
('11111111', '600000', '2021-02-26'),
('11111112', '600000', '2021-02-27'),
('11111114', '600001', '2021-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_ID` char(8) NOT NULL,
  `Bill_Total` double DEFAULT NULL,
  `Bill_PaymentStatus` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_ID`, `Bill_Total`, `Bill_PaymentStatus`) VALUES
('01', 100035.5, 'Paid'),
('02', 125, 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `Bill_ID` char(8) NOT NULL,
  `Charge_ID` char(8) NOT NULL,
  `Charge_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`Bill_ID`, `Charge_ID`, `Charge_Date`) VALUES
('01', '11111111', '2021-02-26'),
('01', '11111112', '2021-02-26'),
('02', '11111114', '2021-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `cubnb_user`
--

CREATE TABLE `cubnb_user` (
  `UserID` varchar(10) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `UserFName` varchar(50) NOT NULL,
  `UserLName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cubnb_user`
--

INSERT INTO `cubnb_user` (`UserID`, `Password`, `UserFName`, `UserLName`) VALUES
('J0622784', '$2y$11$6754dc964c1276d3af756OONmIqq7LXvlgSzNW6/kKMQWFcD0z6XW', 'Josiah', 'Bandstra');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_ID` char(6) NOT NULL,
  `Cust_FName` char(15) DEFAULT NULL,
  `Cust_LName` char(15) DEFAULT NULL,
  `Cust_Address` varchar(20) DEFAULT NULL,
  `Cust_City` varchar(20) NOT NULL,
  `Cust_Phone` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_ID`, `Cust_FName`, `Cust_LName`, `Cust_Address`, `Cust_City`, `Cust_Phone`) VALUES
('123456', 'Harry', 'Potter', '4 Privet Drive', 'Little Whinging', '555-741-1755'),
('123457', 'Ron', 'Weasley', 'The Burrow', 'London', '555-756-2356'),
('123458', 'Hermione', 'Granger', '12 Grimmauld Place', 'London', '555-259-3458');

-- --------------------------------------------------------

--
-- Table structure for table `extra_charge`
--

CREATE TABLE `extra_charge` (
  `Charge_ID` char(8) NOT NULL,
  `Charge_Loc` varchar(30) DEFAULT NULL,
  `Charge_Total` double DEFAULT NULL,
  `Charge_Description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra_charge`
--

INSERT INTO `extra_charge` (`Charge_ID`, `Charge_Loc`, `Charge_Total`, `Charge_Description`) VALUES
('11111115', 'Bookstore', 30, 'Cornerstone Sweatshirt'),
('11111116', 'Bookstore', 20, 'Cornerstone Hat'),
('11111117', 'Golden Eagle Cafe', 3.99, 'Hot Chocolate');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Loc_ID` char(6) NOT NULL,
  `Pro_ID` char(6) DEFAULT NULL,
  `Loc_Description` varchar(100) DEFAULT NULL,
  `Loc_Address` varchar(40) DEFAULT NULL,
  `Loc_Rate` double DEFAULT NULL,
  `Loc_Type` varchar(40) DEFAULT NULL,
  `Loc_Status` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Loc_ID`, `Pro_ID`, `Loc_Description`, `Loc_Address`, `Loc_Rate`, `Loc_Type`, `Loc_Status`) VALUES
('80240', '300002', 'Hogwarts School of Witchcraft and Wizardry', '123 Magic Lane', 100000, '100+ Bedroom, 20 Bath', 'Reserved'),
('80241', '300001', 'Shell Cottage - previously owned by Bill Weasley', '678 The Beach', 120, '2 Bedroom, 1 Bath', 'Available'),
('80242', '300002', 'The Broekhuizen Household', '9453 Bingham St', 50, '4 Bedroom, 2.5 Bath', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `Pro_ID` char(6) NOT NULL,
  `Pro_FName` char(15) DEFAULT NULL,
  `Pro_LName` char(15) DEFAULT NULL,
  `Pro_Phone` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`Pro_ID`, `Pro_FName`, `Pro_LName`, `Pro_Phone`) VALUES
('300000', 'Minerva', 'McGonagall', '555-123-4888'),
('300001', 'Remus', 'Lupin', '555-390-0900'),
('300002', 'Albus', 'Dumbledore', '555-123-4567');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Res_ID` char(6) NOT NULL,
  `Cust_ID` char(6) DEFAULT NULL,
  `Loc_ID` char(6) DEFAULT NULL,
  `Admin_ID` char(6) DEFAULT NULL,
  `Res_Begin` date DEFAULT NULL,
  `Res_End` date DEFAULT NULL,
  `Res_CreditCard` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Res_ID`, `Cust_ID`, `Loc_ID`, `Admin_ID`, `Res_Begin`, `Res_End`, `Res_CreditCard`) VALUES
('600000', '123456', '80240', '100000', '2021-02-26', '2021-03-05', NULL),
('600001', '123457', '80241', '100001', '2021-04-01', '2021-04-20', NULL),
('600002', '123458', '80242', '100002', '2021-02-27', '2021-03-06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stay`
--

CREATE TABLE `stay` (
  `Stay_ID` char(10) NOT NULL,
  `Bill_ID` char(8) DEFAULT NULL,
  `StayLength` int(11) DEFAULT NULL,
  `StayStatus` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stay`
--

INSERT INTO `stay` (`Stay_ID`, `Bill_ID`, `StayLength`, `StayStatus`) VALUES
('60000', '01', 2, 'CHECKEDIN');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Transaction_ID` char(7) NOT NULL,
  `Charge_ID` char(8) DEFAULT NULL,
  `Stay_ID` char(8) DEFAULT NULL,
  `PaymentType` varchar(15) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `amenity`
--
ALTER TABLE `amenity`
  ADD PRIMARY KEY (`Charge_ID`);

--
-- Indexes for table `amenity_request`
--
ALTER TABLE `amenity_request`
  ADD PRIMARY KEY (`Charge_ID`,`Res_ID`),
  ADD KEY `Res_ID` (`Res_ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_ID`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`Bill_ID`,`Charge_ID`),
  ADD KEY `Charge_ID` (`Charge_ID`);

--
-- Indexes for table `cubnb_user`
--
ALTER TABLE `cubnb_user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_ID`);

--
-- Indexes for table `extra_charge`
--
ALTER TABLE `extra_charge`
  ADD PRIMARY KEY (`Charge_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Loc_ID`),
  ADD KEY `Pro_ID` (`Pro_ID`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`Pro_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Res_ID`),
  ADD KEY `Cust_ID` (`Cust_ID`),
  ADD KEY `Loc_ID` (`Loc_ID`),
  ADD KEY `Admin_ID` (`Admin_ID`);

--
-- Indexes for table `stay`
--
ALTER TABLE `stay`
  ADD PRIMARY KEY (`Stay_ID`),
  ADD KEY `stay_ibfk_1` (`Bill_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Transaction_ID`),
  ADD KEY `Stay_ID` (`Stay_ID`),
  ADD KEY `Charge_ID` (`Charge_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amenity_request`
--
ALTER TABLE `amenity_request`
  ADD CONSTRAINT `amenity_request_ibfk_1` FOREIGN KEY (`Res_ID`) REFERENCES `reservation` (`Res_ID`),
  ADD CONSTRAINT `amenity_request_ibfk_2` FOREIGN KEY (`Charge_ID`) REFERENCES `amenity` (`Charge_ID`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`Bill_ID`) REFERENCES `bill` (`Bill_ID`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`Charge_ID`) REFERENCES `amenity_request` (`Charge_ID`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Pro_ID`) REFERENCES `provider` (`Pro_ID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Cust_ID`) REFERENCES `customer` (`Cust_ID`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`Loc_ID`) REFERENCES `location` (`Loc_ID`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`);

--
-- Constraints for table `stay`
--
ALTER TABLE `stay`
  ADD CONSTRAINT `stay_ibfk_1` FOREIGN KEY (`Bill_ID`) REFERENCES `bill` (`Bill_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`Charge_ID`) REFERENCES `extra_charge` (`Charge_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
