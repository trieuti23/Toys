	Create database TT Street Style;
	use TT Street Style;
	-- phpMyAdmin SQL Dump
	-- version 5.0.2
	-- https://www.phpmyadmin.net/
	--
	-- Host: 127.0.0.1
	-- Generation Time: Sep 07, 2020 at 03:07 PM
	-- Server version: 10.4.14-MariaDB
	-- PHP Version: 7.4.9

	SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
	START TRANSACTION;
	SET time_zone = "+00:00";


	/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
	/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
	/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
	/*!40101 SET NAMES utf8mb4 */;

	--
	-- Database: `TT Street Style`
	--

	-- --------------------------------------------------------

	--
	-- Table structure for table `category`
	--

	CREATE TABLE `category` (
	  `catID` int(4) NOT NULL,
	  `catName` varchar(10) NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

	--
	-- Dumping data for table `category`
	--

	INSERT INTO `category` (`catID`, `catName`) VALUES
	(1, 'MALE CHARACTER'),
	(2, 'FEMALE CHARACTER');
	-- --------------------------------------------------------

	--
	-- Table structure for table `member`
	--

	CREATE TABLE `member` (
	  `username` varchar(20) NOT NULL,
	  `password` varchar(20) NOT NULL,
	  `Fullname` varchar(30) NOT NULL,
	  `PhoneNumber` int(10) NOT NULL,
	  `Email` varchar(30) NOT NULL,
	  `Address` varchar(50) NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

	--
	-- Dumping data for table `member`
	--

	INSERT INTO `member` (`username`, `password`, `Fullname`, `PhoneNumber`, `Email`, `Address`) VALUES
	('vietrap', '123', 'Nguyen Huynh Trieu Ti', 1231241, 'nguyenhuynhtrieuti7@gmail.com', 'Ten lua'),
	('vietrap1', '123', 'Nguyen Huynh Trieu Ti', 123123123, 'nguyenhuynhtrieuti7@gmail.com', 'Co bac'),
	('vietrap123', '123', 'Nguyen Huynh Trieu Ti', 919336233, 'nguyenhuynhtrieuti.140701@gmail.com', '123 anh cho em');

	-- --------------------------------------------------------

	--
	-- Table structure for table `order`
	--

	CREATE TABLE `order` (
	  `orderID` int(8) NOT NULL,
	  `orderDate` date NOT NULL,
	  `shippingAddress` varchar(50) NOT NULL,
	  `Totalprice` int(11) NOT NULL,
	  `Orderer` varchar(20) NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

	-- --------------------------------------------------------

	--
	-- Table structure for table `orderdetail`
	--

	CREATE TABLE `orderdetail` (
	  `orderID` int(8) NOT NULL,
	  `productID` int(4) NOT NULL,
	  `amount` int(4) NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

	-- --------------------------------------------------------

	--
	-- Table structure for table `product`
	--

	CREATE TABLE `product` (
	  `productID` int(4) NOT NULL,
	  `productName` varchar(50) NOT NULL,
	  `productPrice` int(11) NOT NULL,
	  `catID` int(4) NOT NULL,
	  `image` varchar(50) NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

	--
	-- Dumping data for table `product`
	--

	INSERT INTO `product` (`productID`, `productName`, `productPrice`, `catID`, `image`) VALUES
	(1, 'Ma Junior ', 45878749, 1, 'image/products/MALE CHARACTER/Ma Junior.jpg'),
	(2, 'Goku Black ', 1000000, 1, 'image/products/MALE CHARACTER/Goku Black.jpg'),
	(3, 'Android 21', 23180500, 2, 'image/products/FEMALE CHARACTER/Android 21.jpg'),
	(4, 'Namec', 9967615, 2, 'image/products/FEMALE CHARACTER/namec.jpg'),
	(5, 'Bulma', 9000000, 2, 'image/products/FEMALE CHARACTER/Bulma.jpg');
	--
	-- Indexes for dumped tables
	--

	--
	-- Indexes for table `category`
	--
	ALTER TABLE `category`
	  ADD PRIMARY KEY (`catID`);

	--
	-- Indexes for table `member`
	--
	ALTER TABLE `member`
	  ADD PRIMARY KEY (`username`);

	--
	-- Indexes for table `order`
	--
	ALTER TABLE `order`
	  ADD PRIMARY KEY (`orderID`),
	  ADD KEY `odererID` (`Orderer`);

	--
	-- Indexes for table `orderdetail`
	--
	ALTER TABLE `orderdetail`
	  ADD PRIMARY KEY (`orderID`,`productID`),
	  ADD KEY `proID` (`productID`);

	--
	-- Indexes for table `product`
	--
	ALTER TABLE `product`
	  ADD PRIMARY KEY (`productID`),
	  ADD KEY `cat` (`catID`);

	--
	-- AUTO_INCREMENT for dumped tables
	--

	--
	-- AUTO_INCREMENT for table `category`
	--
	ALTER TABLE `category`
	  MODIFY `catID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

	--
	-- AUTO_INCREMENT for table `order`
	--
	ALTER TABLE `order`
	  MODIFY `orderID` int(8) NOT NULL AUTO_INCREMENT;

	--
	-- AUTO_INCREMENT for table `product`
	--
	ALTER TABLE `product`
	  MODIFY `productID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

	--
	-- Constraints for dumped tables
	--

	--
	-- Constraints for table `order`
	--
	ALTER TABLE `order`
	  ADD CONSTRAINT `odererID` FOREIGN KEY (`Orderer`) REFERENCES `member` (`username`);

	--
	-- Constraints for table `orderdetail`
	--
	ALTER TABLE `orderdetail`
	  ADD CONSTRAINT `orderID` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`),
	  ADD CONSTRAINT `proID` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

	--
	-- Constraints for table `product`
	--
	ALTER TABLE `product`
	  ADD CONSTRAINT `cat` FOREIGN KEY (`catID`) REFERENCES `category` (`catID`);
	COMMIT;

	/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
	/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
	/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
