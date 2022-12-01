-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2022 at 02:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductId` bigint(6) NOT NULL,
  `Product-Name` varchar(255) DEFAULT NULL,
  `Rating` int(6) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Picture` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `Product-Name`, `Rating`, `Price`, `Picture`, `Description`) VALUES
(1, 'Black Decker Toaster Oven ', 5, 170.63, 'blackdecker-toasteroven.jpg', 'A 6-Slice Convection Oven with four cooking features: bake, broil, toast, and keep warm that circulates hot air to quickly cook all your favorite appetizers, frozen snacks, pizzas, and more. '),
(2, 'Russell Hobbs Toaster', 4, 159.87, 'russellhobbs-toaster.jpg', '4-Slice Glass Accent Long Toaster. Luxurious, simple styling meets modern performance for premium toasting performance. The variable browning control ranges from 1 (light) to 6 (dark) to satisfy all preferences.'),
(3, 'Nutri Bullet Blender', 4, 96.18, 'nutribullet-blender.jpg', 'Meet the  Nutribullet, our compact-yet-powerful 600 Watt personal blender. You choose what goes in to get the most out of every ingredient.'),
(4, 'Kitchen AID Mixer', 5, 212.05, 'kitchenaid-mixer.jpg', 'Whether you need 9 dozen* of your signature chocolate chips cookies or shredded chicken for Taco Tuesday with friends and family, the KitchenAid mixer was built to knead, thoroughly mix and whip ingredients for a wide variety of recipes.'),
(5, 'Kitchen AID Stove', 5, 1987.33, 'kitchenaid-stove.jpg', 'This 30” Single Wall Oven with Even-Heat™ Thermal Bake/Broil cycles the bake and broil elements to maintain the perfect temperature for baking, broiling and roasting and its bold design details are the perfect balance of elegance and functionality.'),
(6, 'Mabe Stove', 4, 1312.87, 'mabe-stove.jpg', 'The Mabe stove comes 6 burners has a stainless steel top, cast grills and sealed burners for greater safety in your home. It also has a tempered glass lid and its multiple functions will allow you to cook with comfort and ease. '),
(7, 'Samsung Refrigerator', 4, 1012.87, 'samsung-refrigerator.jpg', 'Samsung Freestanding Counter Depth 4 Door French Door Refrigerator with 22.5 cu. ft. Total Capacity, Wi-Fi Enabled, 4 Glass Shelves, 6.8 cu. ft. Freezer Capacity, Crisper Drawer, Automatic Defrost, Energy Star Certified and Ice Maker.'),
(8, 'LG Refrigerator', 3, 888.12, 'lg-refrigerator.jpg', 'LG\'s Freestanding Bottom Freezer Refrigerator with 25.5 cu. ft. Total Capacity, 8.3 cu. ft. Freezer Capacity, 2 Glass Shelves, Crisper Drawer, Right Hinge with Reversible Doors, Sabbath Mode, Energy Star Certified, and Ice Maker.'),
(9, 'Samsung Washing Machine', 3, 1134.5, 'samsung-washingmachine.jpg', 'The Samsung Washer comes with 8 Wash Cycles, 1300 RPM, NFC Tag-On technology, ColdWash Technology, 6Motion Technology, NeveRust Stainless Steel Drum, 10 Year Warranty on Direct Drive Motor, SenseClean System, SmartDiagnosis in White'),
(10, 'Whirlpool Washing Machine', 4, 1134.5, 'whirlpool-washingmachine.jpg', 'Customize your loads the way you want in this Whirlpool Washer with 2 in 1 Removable Agitator. Simply remove the agitator to give bulky items a little more space to move and leave clothes as stainless as ever.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` bigint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
