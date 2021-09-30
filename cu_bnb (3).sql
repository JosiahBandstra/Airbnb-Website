-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 04:07 PM
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
-- Database: `cu_bnb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_logins`
--

CREATE TABLE `admin_logins` (
  `Login_ID` int(5) NOT NULL,
  `Login_Time` text NOT NULL,
  `Host_ID` int(5) NOT NULL,
  `Login_Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_logins`
--

INSERT INTO `admin_logins` (`Login_ID`, `Login_Time`, `Host_ID`, `Login_Password`) VALUES
(44321, '11:00am', 12344, 'RH44321'),
(54321, '10:45am', 12345, 'JB54321');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `Amenity_ID` int(5) NOT NULL,
  `Amenity_Type` text NOT NULL,
  `Loc_Amen_Code` int(5) NOT NULL,
  `Amenity_Price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`Amenity_ID`, `Amenity_Type`, `Loc_Amen_Code`, `Amenity_Price`) VALUES
(44441, 'Golf Course', 33331, '60'),
(44444, 'Swimming Pool', 33333, '30');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_Code` int(5) NOT NULL,
  `Bill_Date` date NOT NULL,
  `Bill_Price` decimal(10,0) NOT NULL,
  `Cust_SSN` int(9) NOT NULL,
  `Stay_Code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_Code`, `Bill_Date`, `Bill_Price`, `Cust_SSN`, `Stay_Code`) VALUES
(77771, '2021-07-19', '500', 123456789, 66661),
(77777, '2021-08-23', '900', 123456788, 66666);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_SSN` int(9) NOT NULL,
  `Cust_FName` text NOT NULL,
  `Cust_LName` text NOT NULL,
  `Cust_Address` text NOT NULL,
  `Cust_Postal_Code` int(5) NOT NULL,
  `Cust_City` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_SSN`, `Cust_FName`, `Cust_LName`, `Cust_Address`, `Cust_Postal_Code`, `Cust_City`) VALUES
(123456788, 'Colton', 'Compagner', '1307 Hope St SE', 49506, 'Grand Rapids'),
(123456789, 'Josiah', 'Bandstra', '3525 S Elk Trail', 49431, 'Ludington');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `Detail_Code` int(5) NOT NULL,
  `Detail_Description` text NOT NULL,
  `Bill_Code` int(5) NOT NULL,
  `Res_Amen_Code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`Detail_Code`, `Detail_Description`, `Bill_Code`, `Res_Amen_Code`) VALUES
(12222, 'Charge for reserving the golf course.', 77777, 11112),
(13333, 'Charge for reserving the swimming pool.', 77771, 11111);

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE `host` (
  `Host_ID` int(5) NOT NULL,
  `Host_FName` text NOT NULL,
  `Host_LName` text NOT NULL,
  `Host_Address` text NOT NULL,
  `Host_Postal_Code` int(5) NOT NULL,
  `Host_City` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`Host_ID`, `Host_FName`, `Host_LName`, `Host_Address`, `Host_Postal_Code`, `Host_City`) VALUES
(12344, 'Ross', 'Hunter', '1307 Hope St SE', 49506, 'Grand Rapids'),
(12345, 'Josiah', 'Bandstra', '3525 S Elk Trail', 49431, 'Ludington');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Loc_Code` int(5) NOT NULL,
  `Loc_Type` text NOT NULL,
  `Loc_Address` text NOT NULL,
  `Loc_Postal_Code` int(5) NOT NULL,
  `Loc_City` text NOT NULL,
  `Loc_Name` text NOT NULL,
  `Loc_Price` decimal(10,0) NOT NULL,
  `Host_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Loc_Code`, `Loc_Type`, `Loc_Address`, `Loc_Postal_Code`, `Loc_City`, `Loc_Name`, `Loc_Price`, `Host_ID`) VALUES
(22221, 'Downtown', '187 Monroe Ave NW', 49503, 'Grand Rapids', 'The River Hideout', '400', 12344),
(22222, 'Garden', '2025 Fulton St E', 49506, 'Grand Rapids', 'The Meditation Clinic', '200', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `location_amenities`
--

CREATE TABLE `location_amenities` (
  `Loc_Amen_Code` int(5) NOT NULL,
  `Loc_Amen_Name` text NOT NULL,
  `Loc_Amen_Type` text NOT NULL,
  `Loc_Code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_amenities`
--

INSERT INTO `location_amenities` (`Loc_Amen_Code`, `Loc_Amen_Name`, `Loc_Amen_Type`, `Loc_Code`) VALUES
(33331, 'South-East Corner', 'Golf Course', 22222),
(33333, 'Main Floor', 'Swimming Pool', 22221);

-- --------------------------------------------------------

--
-- Table structure for table `misc_charges`
--

CREATE TABLE `misc_charges` (
  `Misc_Charge_Code` int(5) NOT NULL,
  `Misc_Charge_Cost` decimal(10,0) NOT NULL,
  `Misc_Charge_Date` date NOT NULL,
  `Bill_Code` int(5) NOT NULL,
  `Stay_Code` int(5) NOT NULL,
  `Misc_Charge_Desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `misc_charges`
--

INSERT INTO `misc_charges` (`Misc_Charge_Code`, `Misc_Charge_Cost`, `Misc_Charge_Date`, `Bill_Code`, `Stay_Code`, `Misc_Charge_Desc`) VALUES
(14444, '20', '2021-08-11', 77771, 66661, 'Orange Juice\r\nBanana \r\n4x Water Bottle(s)'),
(15555, '5', '2021-07-09', 77777, 66666, '2x Candy bar(s)');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Pay_Code` int(5) NOT NULL,
  `Pay_Date` date NOT NULL,
  `Pay_Time` text NOT NULL,
  `Pay_Price` decimal(10,0) NOT NULL,
  `Bill_Code` int(5) NOT NULL,
  `Cust_SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Pay_Code`, `Pay_Date`, `Pay_Time`, `Pay_Price`, `Bill_Code`, `Cust_SSN`) VALUES
(1, '2021-08-23', '5:00pm', '500', 77771, 123456789),
(2, '2021-07-13', '3:00pm', '900', 77777, 123456788);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Res_Code` int(5) NOT NULL,
  `Res_Date` date NOT NULL,
  `Cust_SSN` int(9) NOT NULL,
  `Loc_Code` int(5) NOT NULL,
  `Res_Time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Res_Code`, `Res_Date`, `Cust_SSN`, `Loc_Code`, `Res_Time`) VALUES
(55551, '2021-05-26', 123456788, 22221, '3:00pm'),
(55555, '2021-06-09', 123456789, 22222, '11:00am');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_amenities`
--

CREATE TABLE `reserve_amenities` (
  `Res_Amen_Code` int(5) NOT NULL,
  `Res_Amen_Date` date NOT NULL,
  `Res_Code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reserve_amenities`
--

INSERT INTO `reserve_amenities` (`Res_Amen_Code`, `Res_Amen_Date`, `Res_Code`) VALUES
(11111, '2021-08-12', 55551),
(11112, '2021-07-07', 55555);

-- --------------------------------------------------------

--
-- Table structure for table `stay`
--

CREATE TABLE `stay` (
  `Stay_Code` int(11) NOT NULL,
  `Stay_Date` date NOT NULL,
  `Stay_InTime` text NOT NULL,
  `Stay_OutTime` text NOT NULL,
  `Res_Code` int(5) NOT NULL,
  `Stay_Duration` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stay`
--

INSERT INTO `stay` (`Stay_Code`, `Stay_Date`, `Stay_InTime`, `Stay_OutTime`, `Res_Code`, `Stay_Duration`) VALUES
(66661, '2021-08-06', '5:00pm', '9:00am', 55551, '7 days'),
(66666, '2021-07-05', '10:00am', '10:00am', 55555, '14 days');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_logins`
--
ALTER TABLE `admin_logins`
  ADD PRIMARY KEY (`Login_ID`),
  ADD KEY `Login_ID` (`Login_ID`),
  ADD KEY `Host_ID` (`Host_ID`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`Amenity_ID`),
  ADD KEY `Amenity_ID` (`Amenity_ID`),
  ADD KEY `Loc_Amen_Code` (`Loc_Amen_Code`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_Code`),
  ADD KEY `Bill_Code` (`Bill_Code`),
  ADD KEY `Cust_SSN` (`Cust_SSN`),
  ADD KEY `Stay_Code` (`Stay_Code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_SSN`),
  ADD KEY `Cust_SSN` (`Cust_SSN`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`Detail_Code`),
  ADD KEY `Detail_Code` (`Detail_Code`),
  ADD KEY `Bill_Code` (`Bill_Code`,`Res_Amen_Code`),
  ADD KEY `Res_Amen_Code` (`Res_Amen_Code`);

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`Host_ID`),
  ADD KEY `Host_ID` (`Host_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Loc_Code`),
  ADD KEY `Loc_Code` (`Loc_Code`),
  ADD KEY `Host_ID` (`Host_ID`);

--
-- Indexes for table `location_amenities`
--
ALTER TABLE `location_amenities`
  ADD PRIMARY KEY (`Loc_Amen_Code`),
  ADD KEY `Loc_Code` (`Loc_Code`),
  ADD KEY `Loc_Amen_Code` (`Loc_Amen_Code`);

--
-- Indexes for table `misc_charges`
--
ALTER TABLE `misc_charges`
  ADD PRIMARY KEY (`Misc_Charge_Code`),
  ADD KEY `Misc_Charge_Code` (`Misc_Charge_Code`),
  ADD KEY `Bill_Code` (`Bill_Code`,`Stay_Code`),
  ADD KEY `Stay_Code` (`Stay_Code`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Pay_Code`),
  ADD KEY `Bill_Code` (`Bill_Code`,`Cust_SSN`),
  ADD KEY `Cust_SSN` (`Cust_SSN`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Res_Code`),
  ADD KEY `Res_Code` (`Res_Code`),
  ADD KEY `Cust_SSN` (`Cust_SSN`,`Loc_Code`),
  ADD KEY `Loc_Code` (`Loc_Code`);

--
-- Indexes for table `reserve_amenities`
--
ALTER TABLE `reserve_amenities`
  ADD PRIMARY KEY (`Res_Amen_Code`),
  ADD KEY `Res_Code` (`Res_Code`);

--
-- Indexes for table `stay`
--
ALTER TABLE `stay`
  ADD PRIMARY KEY (`Stay_Code`),
  ADD KEY `Stay_Code` (`Stay_Code`),
  ADD KEY `Res_Code` (`Res_Code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_logins`
--
ALTER TABLE `admin_logins`
  MODIFY `Login_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54322;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `Amenity_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `Bill_Code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77778;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cust_SSN` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456790;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `Detail_Code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13334;

--
-- AUTO_INCREMENT for table `host`
--
ALTER TABLE `host`
  MODIFY `Host_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12346;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Loc_Code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22223;

--
-- AUTO_INCREMENT for table `location_amenities`
--
ALTER TABLE `location_amenities`
  MODIFY `Loc_Amen_Code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33334;

--
-- AUTO_INCREMENT for table `misc_charges`
--
ALTER TABLE `misc_charges`
  MODIFY `Misc_Charge_Code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15556;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Pay_Code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Res_Code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55556;

--
-- AUTO_INCREMENT for table `reserve_amenities`
--
ALTER TABLE `reserve_amenities`
  MODIFY `Res_Amen_Code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11113;

--
-- AUTO_INCREMENT for table `stay`
--
ALTER TABLE `stay`
  MODIFY `Stay_Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66667;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_logins`
--
ALTER TABLE `admin_logins`
  ADD CONSTRAINT `admin_logins_ibfk_1` FOREIGN KEY (`Host_ID`) REFERENCES `host` (`Host_ID`);

--
-- Constraints for table `amenities`
--
ALTER TABLE `amenities`
  ADD CONSTRAINT `amenities_ibfk_1` FOREIGN KEY (`Loc_Amen_Code`) REFERENCES `location_amenities` (`Loc_Amen_Code`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Stay_Code`) REFERENCES `stay` (`Stay_Code`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`Cust_SSN`) REFERENCES `customer` (`Cust_SSN`);

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`Res_Amen_Code`) REFERENCES `reserve_amenities` (`Res_Amen_Code`),
  ADD CONSTRAINT `details_ibfk_2` FOREIGN KEY (`Bill_Code`) REFERENCES `bill` (`Bill_Code`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Host_ID`) REFERENCES `host` (`Host_ID`);

--
-- Constraints for table `location_amenities`
--
ALTER TABLE `location_amenities`
  ADD CONSTRAINT `location_amenities_ibfk_1` FOREIGN KEY (`Loc_Code`) REFERENCES `location` (`Loc_Code`);

--
-- Constraints for table `misc_charges`
--
ALTER TABLE `misc_charges`
  ADD CONSTRAINT `misc_charges_ibfk_1` FOREIGN KEY (`Bill_Code`) REFERENCES `bill` (`Bill_Code`),
  ADD CONSTRAINT `misc_charges_ibfk_2` FOREIGN KEY (`Stay_Code`) REFERENCES `stay` (`Stay_Code`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Cust_SSN`) REFERENCES `customer` (`Cust_SSN`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Bill_Code`) REFERENCES `bill` (`Bill_Code`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Loc_Code`) REFERENCES `location` (`Loc_Code`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`Cust_SSN`) REFERENCES `customer` (`Cust_SSN`);

--
-- Constraints for table `reserve_amenities`
--
ALTER TABLE `reserve_amenities`
  ADD CONSTRAINT `reserve_amenities_ibfk_1` FOREIGN KEY (`Res_Code`) REFERENCES `reservation` (`Res_Code`);

--
-- Constraints for table `stay`
--
ALTER TABLE `stay`
  ADD CONSTRAINT `stay_ibfk_1` FOREIGN KEY (`Res_Code`) REFERENCES `reservation` (`Res_Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
