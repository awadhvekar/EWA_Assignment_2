-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.27-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for assignment2
DROP DATABASE IF EXISTS `assignment2`;
CREATE DATABASE IF NOT EXISTS `assignment2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `assignment2`;

-- Dumping structure for table assignment2.customerorders
DROP TABLE IF EXISTS `customerorders`;
CREATE TABLE IF NOT EXISTS `customerorders` (
  `OrderId` int(11) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `orderName` varchar(40) NOT NULL,
  `orderPrice` double DEFAULT NULL,
  `userAddress` varchar(40) DEFAULT NULL,
  `creditCardNo` varchar(40) DEFAULT NULL,
  `orderDate` varchar(40) DEFAULT NULL,
  `deliveryDate` varchar(40) DEFAULT NULL,
  `maxOrderCancellationDate` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`OrderId`,`userName`,`orderName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table assignment2.customerorders: ~6 rows (approximately)
DELETE FROM `customerorders`;
/*!40000 ALTER TABLE `customerorders` DISABLE KEYS */;
INSERT INTO `customerorders` (`OrderId`, `userName`, `orderName`, `orderPrice`, `userAddress`, `creditCardNo`, `orderDate`, `deliveryDate`, `maxOrderCancellationDate`) VALUES
	(1, 'AshCustomer', 'Sony Television', 89.99, 'a', '1', '10/02/2019', '10/17/2019', '10/12/2019'),
	(2, 'AshCustomer', 'LG Television', 89.99, 'b', '2', '10/07/2019', '10/21/2019', '10/16/2019'),
	(2, 'AshCustomer', 'Microsoft Television', 89.99, 'b', '2', '10/07/2019', '10/21/2019', '10/16/2019'),
	(2, 'AshCustomer', 'Sony Television', 89.99, 'b', '2', '10/07/2019', '10/21/2019', '10/16/2019'),
	(3, 'AshCustomer', 'Basic Plan', 89.99, 'c', '3', '10/12/2019', '10/26/2019', '10/21/2019'),
	(4, 'AshCustomer', 'LG Headphone', 20.99, 'd', '4', '10/13/2019', '10/27/2019', '10/22/2019'),
	(5, 'AshStoreManager', 'NEW TV', 125, 'Chicago', '6', '10/13/2019', '10/27/2019', '10/22/2019');
/*!40000 ALTER TABLE `customerorders` ENABLE KEYS */;

-- Dumping structure for table assignment2.productdetails
DROP TABLE IF EXISTS `productdetails`;
CREATE TABLE IF NOT EXISTS `productdetails` (
  `ProductType` varchar(20) DEFAULT NULL,
  `Id` varchar(30) NOT NULL,
  `productName` varchar(40) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productImage` varchar(40) DEFAULT NULL,
  `productManufacturer` varchar(40) DEFAULT NULL,
  `productCondition` varchar(40) DEFAULT 'New',
  `productDiscount` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table assignment2.productdetails: ~43 rows (approximately)
DELETE FROM `productdetails`;
/*!40000 ALTER TABLE `productdetails` DISABLE KEYS */;
INSERT INTO `productdetails` (`ProductType`, `Id`, `productName`, `productPrice`, `productImage`, `productManufacturer`, `productCondition`, `productDiscount`) VALUES
	('wirelessPlan', 'basic', 'Basic Plan', 22.99, 'basicwp.jpg', 'Basic', 'New', 2.99),
	('fitnessWatch', 'lg_fitness_watch', 'LG FitnessWatch', 399.99, 'lgfw.jpg', 'LG', 'New', 0.99),
	('headphone', 'lg_headphone', 'LG Headphone', 20.99, 'lghp.jpg', 'LG', 'New', 1.99),
	('laptop', 'lg_laptop', 'LG Laptop', 689.99, 'lglap.jpg', 'LG', 'New', 89.99),
	('phone', 'lg_phone', 'LG Phone', 389.99, 'lgph.jpg', 'LG', 'New', 19.99),
	('smartWatch', 'lg_smart_watch', 'LG SmartWatch', 289.99, 'lgsw.jpg', 'LG', 'New', 9.99),
	('soundSystem', 'lg_sound_system', 'LG SoundSystem', 72.99, 'lgss.jpg', 'LG', 'Refurbished', 2.99),
	('television', 'lg_tv', 'LG Television', 87.99, 'lgtv.jpg', 'LG', 'New', 2.99),
	('voiceAssistant', 'lg_voice_assistant', 'LG VoiceAssistant', 199.99, 'lgva.jpg', 'LG', 'New', 9.99),
	('fitnessWatch', 'microsoft_fitness_watch', 'Microsoft FitnessWatch', 40.99, 'msfw.jpg', 'Microsoft', 'New', 0),
	('headphone', 'microsoft_headphone', 'Microsoft Headphone', 149.99, 'mshp.jpg', 'Microsoft', 'New', 20),
	('laptop', 'microsoft_laptop', 'Microsoft Laptop', 849.99, 'mslap.jpg', 'Microsoft', 'New', 0),
	('phone', 'microsoft_phone', 'Microsoft Phone', 589.99, 'msph.jpg', 'Microsoft', 'New', 19.99),
	('smartWatch', 'microsoft_smart_watch', 'Microsoft SmartWatch', 389.99, 'mssw.jpg', 'Microsoft', 'New', 50),
	('soundSystem', 'microsoft_sound_system', 'Microsoft SoundSystem', 50.99, 'msss.jpg', 'Microsoft', 'New', 15.99),
	('television', 'microsoft_tv', 'Microsoft Television', 150.49, 'mstv.jpg', 'Microsoft', 'New', 0),
	('voiceAssistant', 'microsoft_voice_assistant', 'Microsoft VoiceAssistant', 150.99, 'msva.jpg', 'Microsoft', 'New', 0.99),
	('fitnessWatch', 'onida_fitness_watch', 'Onida FitnessWatch', 289.99, 'onidafw.jpg', 'Onida', 'New', 0),
	('headphone', 'onida_headphone', 'Onida Headphone', 89.99, 'onidahp.jpg', 'Onida', 'New', 0),
	('laptop', 'onida_laptop', 'Onida Laptop', 489.99, 'onidalap.jpg', 'Onida', 'New', 0),
	('phone', 'onida_phone', 'Onida Phone', 300.99, 'onidaph.jpg', 'Onida', 'New', 0.99),
	('smartWatch', 'onida_smart_watch', 'Onida SmartWatch', 149.99, 'onidasw.jpg', 'Microsoft', 'New', 40),
	('soundSystem', 'onida_sound_system', 'Onida SoundSystem', 59.99, 'onidass.jpg', 'Onida', 'New', 15),
	('television', 'onida_tv', 'Onida Television', 75.99, 'onidatv.jpg', 'Onida', 'New', 5.99),
	('voiceAssistant', 'onida_voice_assistant', 'Onida VoiceAssistant', 149.99, 'onidava.jpg', 'Onida', 'New', 9.99),
	('wirelessPlan', 'premium', 'Premium Plan', 32.99, 'premiumwp.jpg', 'Premium', 'New', 7.99),
	('fitnessWatch', 'samsung_fitness_watch', 'Samsung FitnessWatch', 499.99, 'samsungfw.jpg', 'Samsung', 'New', 99.99),
	('headphone', 'samsung_headphone', 'Samsung Headphone ', 89.99, 'samsunghp.jpg', 'Samsung', 'New', 0),
	('laptop', 'samsung_laptop', 'Samsung Laptop', 520.99, 'samsunglap.jpg', 'Samsung', 'New', 20.99),
	('phone', 'samsung_phone', 'Samsung Phone', 489.99, 'samsungph.jpg', 'Samsung', 'Used', 39.99),
	('smartWatch', 'samsung_smart_watch', 'Samsung SmartWatch', 280.99, 'samsungsw.jpg', 'Samsung', 'New', 30.99),
	('soundSystem', 'samsung_sound_system', 'Samsung SoundSystem', 200.99, 'samsungss.jpg', 'Samsung', 'New', 0),
	('television', 'samsung_tv', 'Samsung Television', 99.99, 'samsungtv.jpg ', 'Samsung', 'New', 4.99),
	('voiceAssistant', 'samsung_voice_assistant', 'Samsung VoiceAssistant', 50.99, 'samsungva.jpg', 'Samsung', 'New', 0.99),
	('fitnessWatch', 'sony_fitness_watch', 'Sony FitnessWatch', 289.99, 'sonyfw.jpg', 'Sony', 'New', 9.99),
	('headphone', 'sony_headphone', 'Sony Headphone', 189.99, 'sonyhp.jpg', 'Sony', 'New', 9.99),
	('laptop', 'sony_laptop', 'Sony Laptop', 549.99, 'sonylap.jpg', 'Sony', 'New', 19.99),
	('phone', 'sony_phone', 'Sony Phone', 189.99, 'sonyph.jpg', 'Sony', 'New', 40),
	('smartWatch', 'sony_smart_watch', 'Sony SmartWatch', 389.99, 'sonysw.jpg', 'Sony', 'New', 29.99),
	('soundSystem', 'sony_sound_system', 'Sony SoundSystem', 112.99, 'sonyss.jpg', 'Sony', 'New', 12.99),
	('television', 'sony_tv', 'Sony Television', 119.99, 'sonytv.jpg', 'Sony', 'New', 9.99),
	('voiceAssistant', 'sony_voice_assistant', 'Sony VoiceAssistant', 149.99, 'sonyva.jpg', 'Sony', 'New', 4.99),
	('wirelessPlan', 'ultimate', 'Ultimate Plan', 42.99, 'ultimatewp.jpg', 'Ultimate', 'New', 12.99);
/*!40000 ALTER TABLE `productdetails` ENABLE KEYS */;

-- Dumping structure for table assignment2.product_accessories
DROP TABLE IF EXISTS `product_accessories`;
CREATE TABLE IF NOT EXISTS `product_accessories` (
  `productName` varchar(20) DEFAULT NULL,
  `accessoriesName` varchar(20) DEFAULT NULL,
  KEY `productName` (`productName`),
  KEY `accessoriesName` (`accessoriesName`),
  CONSTRAINT `product_accessories_ibfk_1` FOREIGN KEY (`productName`) REFERENCES `productdetails` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `product_accessories_ibfk_2` FOREIGN KEY (`accessoriesName`) REFERENCES `productdetails` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table assignment2.product_accessories: ~0 rows (approximately)
DELETE FROM `product_accessories`;
/*!40000 ALTER TABLE `product_accessories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_accessories` ENABLE KEYS */;

-- Dumping structure for table assignment2.registration
DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `repassword` varchar(40) DEFAULT NULL,
  `usertype` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table assignment2.registration: ~6 rows (approximately)
DELETE FROM `registration`;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`username`, `password`, `repassword`, `usertype`) VALUES
	('AshCustomer', 'AshCustomer', 'AshCustomer', 'customer'),
	('AshStoreManager', 'AshStoreManager', 'AshStoreManager', 'storeManager'),
	('AshSalesman', 'AshSalesman', 'AshSalesman', 'salesman'),
	('Customer1', 'Customer1', 'Customer1', 'customer'),
	('Customer2', 'Customer2', 'Customer2', 'customer'),
	('Customer3', 'Customer3', 'Customer3', 'customer'),
	('Customer4', 'Customer4', 'Customer4', 'customer');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
