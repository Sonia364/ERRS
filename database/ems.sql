-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2024 at 05:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `agency_id` varchar(50) NOT NULL,
  `photo` varchar(700) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `state`, `username`, `password`, `address`, `agency_id`, `photo`) VALUES
(23, 'Mahakdeep Kaur', 'mahak@gmail.com', '098765432', 'Ontario', 'mahak', 'mahak@123@', 'Toronto', '5583', 'admin5cdc0ea83e573361ce845401c2590783.jpg'),
(24, 'Sonia Nain', 'sonia@gmail.com', '0984563789', 'Ontario', 'sonia', 'sonia@123@', 'Toronto', '7855', 'admin6bb8de13c30bf4b88dc3f6734242f223.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `id` int(11) NOT NULL,
  `agency_id` varchar(50) NOT NULL,
  `agency_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `personincharge` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`id`, `agency_id`, `agency_name`, `phone_number`, `email`, `personincharge`, `username`, `password`, `state`, `address`, `photo`) VALUES
(9, '9891', 'Hazardous Materials Team', '97634673467', 'hmt@gmail.com', 'Karina', 'karina', 'karina@123@', 'Ontario', '5678 Maple Avenue</br>\r\nSuite 101</br>\r\nToronto, ON M4B 1B3</br>\r\nCanada', 'agencyed54fdca59b049b1d7b7ffcfcc7691c3.jpg'),
(10, '5669', 'Roadside Assistance', '98477634783', 'ra@gmail.com', 'Trushna', 'trushna', 'trushna@123@', 'Ontario', '1234 Oak Street</br>\r\nUnit 12</br>\r\nVancouver, BC V5K 0A1</br>\r\nCanada', 'agency365d4f0718f11bc0419c2c75a8478b03.webp'),
(11, '2173', 'Search and Rescue', '976356379', 'sr@gmail.com', 'Jagpreet', 'jagpreet', 'jagpreet@123@', 'Ontario', '5678 Pine Road<br>\r\nSuite 300<br>\r\nCalgary, AB T2P 3C5<br>\r\nCanada', 'agency2c5aacae4a86ddeb947453cb0379514b.jpg'),
(12, '9244', 'Police Department', '97347677', 'pd@gmail.com', 'Aswathy', 'aswathy', 'aswathy@123@', 'Ontario', 'Police Department<br>\r\n123 Main Street<br>\r\nSuite 100<br>\r\nCityville, State 12345<br>\r\nUSA', 'agency19f3c0260d0ea0ca5d80ee5fc871003e.webp'),
(13, '1851', 'Emergency Medical Services', '97375328903', 'ems@gmail.com', 'Dev', 'dev', 'dev@123@', 'Ontario', 'Emergency Medical Services (EMS)<br>\r\n789 Elm Avenue<br>\r\nUnit 50<br>\r\nTownsville, Province XYZ<br>', 'agencyae5eb1ef69265815f9aa35b02ea506f0.jpeg'),
(14, '9741', 'Traffic Control', '87354523748', 'tc@gmail.com', 'Prabhjeet', 'prabhjeet', 'prabhjeet@123@', 'Ontario', '123 Main Street,<br>\r\nCityville, State ZIP Code,<br>\r\nCountry', 'agencye125cf19cf50f281e12da7ad73255f6a.jpeg'),
(15, '8048', 'Ambulance Services', '897354769', 'as@gmail.com', 'Davinder', 'davinder', 'davinder@123@', 'Ontario', 'Ambulance Services Department,<br>\r\nMaple EMS (Example Name),<br>\r\n789 Maple Avenue,<br>\r\nToronto, ON M1M 2M3,<br>\r\nCanada', 'agency50a10f402549f143ffa914ff81605a61.jpg'),
(16, '3943', 'Fire Department', '7593583580', 'fd@gmail.com', 'Ryan', 'ryan', 'ryan@123@', 'Ontario', 'Fire Department,\r\nToronto Fire Services,\r\n123 Main Street,\r\nToronto, ON M5R 1C2,\r\nCanada', 'agencyfde7bb9d6588206023d65b3cbb3f1a58.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE `emergency` (
  `id` int(11) NOT NULL,
  `emergency_id` int(11) NOT NULL,
  `agency_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `case_severity` varchar(50) NOT NULL,
  `emergency_category` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dates` varchar(500) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `victim_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(500) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emergency`
--

INSERT INTO `emergency` (`id`, `emergency_id`, `agency_id`, `case_severity`, `emergency_category`, `state`, `phone_number`, `address`, `name`, `status`, `email`, `dates`, `victim_id`, `description`, `photo`) VALUES
(94, 9752, '9891', 'Critical', 'Hazardous Material Spill', 'Ontario', '09063633140', 'Main Street,<br>\r\nCityville,<br>\r\nProvince, Postal Code,<br>\r\nCanada', 'Sonia Nain', 'Resolved', 'sonia@gmail.com', '12-07-2024', '3253', 'On July 11, 2024, at approximately 10:30 AM, an Autonomous Vehicle Corp VD2 model, bearing license plate AI-CAR-001 and VIN AV0123456789, experienced a software malfunction while transporting Chemical X, a corrosive substance, on Main Street, Cityville. This led to a potential leakage of approximately 50 liters of Chemical X. Immediate safety measures included evacuating the area, establishing a perimeter, and notifying the hazardous materials team. The hazmat team arrived promptly and conducted initial containment and securing procedures. As of the report, the vehicle remains disabled and isolated pending further inspection and decontamination procedures. The last service date of the vehicle was on July 1, 2024, with regular AI system updates and diagnostics performed. Further instructions include a thorough inspection of vehicle systems and coordination with the AI maintenance team to prevent future software malfunctions in hazardous material transport scenarios.', ''),
(95, 2675, '9244', 'Normal', 'Vehicle Theft or Hijacking Attempt', 'Ontario', '09063633140', '123 Main Street,<br>\r\nCityville,<br>\r\nProvince, Postal Code,<br>\r\nCanada\r\n', 'Sonia Nain', 'Pending', 'sonia@gmail.com', '12-07-2024', '3253', 'I am the owner of an Autonomous Vehicle Corp VD2 model, which has the license plate AI-CAR-001 and VIN AV0123456789. On July 12, 2024, at 9:00 AM, my Graphite Black-colored vehicle was stolen from 123 Main Street, Cityville where it was parked. The vehicle is insured under AV Insurance (Policy #AI123456789) and was securely parked at a private parking lot near the shopping mall. Immediate action is needed to locate and recover my vehicle.', ''),
(96, 7447, '9741', 'Normal', 'Obstruction on Roadway', 'Ontario', '09063633140', 'Main Street,<br>\r\nCityville,<br>\r\nProvince, Postal Code,<br>\r\nCanada', 'Sonia Nain', 'Resolved', 'sonia@gmail.com', '12-07-2024', '3253', 'On July 12, 2024, at 10:00 AM, a significant obstruction occurred on Main Street, Cityville. A fallen tree is obstructing the southbound lanes near the intersection with Oak Avenue, causing complete road closure. Immediate action is required to clear the obstruction and restore traffic flow. Please coordinate with the local authorities and maintenance team to resolve the issue promptly.', ''),
(99, 8174, '2173', 'Danger', 'Animal on Roadway', 'Ontario', '09876534278', '123, Main street', 'Mahakdeep ', 'Resolved', 'mahakdeep@gmail.com', '12-07-2024', '1469', 'Some text for testing', 'emergencya1ef8e5cb887d849b96be515b3959ba5.jpg'),
(100, 2743, '8048', 'Critical', 'Fire', 'Ontario', '09876534278', 'some text', 'Mahakdeep ', 'Resolved', 'mahakdeep@gmail.com', '12-07-2024', '1469', 'Some text', 'emergencyddc545bc5aa4900ca55773fbb7a7d514.jpg'),
(101, 9201, '9741', 'Danger', 'Pedestrian or Cyclist Impact', 'Ontario', '09876534278', 'some text', 'Mahakdeep ', 'Resolved', 'mahakdeep@gmail.com', '12-07-2024', '1469', 'some test', 'emergency6fb427e46bfd4b8ceec7d13ccf2bc54c.jpg'),
(102, 5336, '9741', 'Danger', 'Animal on Roadway', 'Ontario', '09876534278', 'some text', 'Mahakdeep ', 'Resolved', 'mahakdeep@gmail.com', '12-07-2024', '1469', 'some text', 'emergency1269abdd584e3a5d8f896ede66fce408.jpg'),
(103, 5280, '3943', 'Danger', 'Fire', 'Ontario', '09876534278', 'some content', 'Mahakdeep ', 'Resolved', 'mahakdeep@gmail.com', '12-07-2024', '1469', 'some content', 'emergencyd724ef750d07457568006e003aef6bc8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_type`
--

CREATE TABLE `emergency_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emergency_type`
--

INSERT INTO `emergency_type` (`id`, `name`, `description`) VALUES
(1, 'Collision', ''),
(2, 'Medical Emergency', ''),
(3, 'Fire', ''),
(4, 'Natural Disaster', ''),
(5, 'Mechanical Failure', ''),
(6, 'Hazardous Material Spill', ''),
(7, 'Obstruction on Roadway', ''),
(8, 'Weather-Related Incident', ''),
(9, 'Pedestrian or Cyclist Impact', ''),
(10, 'Vehicle Theft or Hijacking Attempt', ''),
(11, 'Animal on Roadway', ''),
(12, 'Other', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `vehicle_info` text NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `state`, `phone`, `user_id`, `vehicle_info`, `photo`) VALUES
(23, 'Sonia Nain', 'sonia@gmail.com', 'sonia', 'sonia@123@', 'Ontario', '09063633140', '3253', 'Make: Autonomous Vehicle Corp<br> Model: VD2<br> Year: 2024<br> Color: Graphite Black<br> VIN: AV0123456789<br> License Plate: AI-CAR-001<br> Mileage: 5,000 miles<br> Insurance: AV Insurance, Policy #AI123456789<br> Service History: Regular AI system updates and diagnostics. Last serviced on 07/01/2024.<br> Additional Notes: Equipped with advanced AI algorithms for autonomous driving and real-time data processing.', 'admin6bb8de13c30bf4b88dc3f6734242f223.jpg'),
(24, 'Mahakdeep ', 'mahakdeep@gmail.com', 'mahakdeep', 'mahakdeep@123@', 'Ontario', '09876534278', '1469', 'Make: Tesla</br>\nModel: Model S</br>\nYear: 2022</br>\nColor: Midnight Silver Metallic</br>\nVIN: 5YJSA1E26JF254678</br>\nLicense Plate: ABC-1234</br>\nMileage: 15,000 miles</br>\nInsurance: XYZ Insurance, Policy #987654321</br>\nService History: Regular maintenance performed every 6 months. Last serviced on 03/15/2024.</br>\nAdditional Notes: Equipped with autopilot and full self-driving capability.', 'user2e468420572dd20079acf46c10e503df.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency`
--
ALTER TABLE `emergency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_type`
--
ALTER TABLE `emergency_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `emergency`
--
ALTER TABLE `emergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `emergency_type`
--
ALTER TABLE `emergency_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
