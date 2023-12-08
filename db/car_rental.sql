-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 09:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_tb`
--

CREATE TABLE `address_tb` (
  `address_id` int(11) NOT NULL,
  `st_number` varchar(20) NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `province` varchar(20) NOT NULL,
  `postal_code` varchar(6) NOT NULL,
  `is_headquarter` char(1) NOT NULL CHECK (`is_headquarter` in ('Y','N'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_tb`
--

INSERT INTO `address_tb` (`address_id`, `st_number`, `st_name`, `city`, `province`, `postal_code`, `is_headquarter`) VALUES
(1, '123', 'Jalan Utama', 'Hamilton', 'DKI Jakarta', '12345', 'Y'),
(2, '456', 'Jalan Pemuda', 'Surabaya', 'Jawa Timur', '67890', 'N'),
(3, '789', 'Jalan Malioboro', 'Yogyakarta', 'DI Yogyakarta', '98742', 'N'),
(4, '101', 'Jalan Gatot Subroto', 'Bandung', 'Jawa Barat', '98765', 'N'),
(5, '202', 'Jalan Ahmad Yani', 'Semarang', 'Jawa Tengah', '34567', 'N'),
(6, '303', 'Jalan Thamrin', 'Medan', 'Sumatera Utara', '87654', 'N'),
(7, '404', 'Jalan Imam Bonjol', 'Makassar', 'Sulawesi Selatan', '23456', 'N'),
(8, '505', 'Jalan Pahlawan', 'Denpasar', 'Bali', '76543', 'N'),
(9, '606', 'Jalan Diponegoro', 'Palembang', 'Sumatera Selatan', '65432', 'N'),
(10, '707', 'Jalan Merdeka', 'Manado', 'Sulawesi Utara', '54321', 'N'),
(11, '808', 'Jalan Sudirman', 'Balikpapan', 'Kalimantan Timur', '43210', 'N'),
(12, '909', 'Jalan Gajah Mada', 'Padang', 'Sumatera Barat', '63427', 'N'),
(13, '111', 'Jalan Ahmad Dahlan', 'Malang', 'Jawa Timur', '57364', 'N'),
(14, '112', 'Jalan Cabang', 'Bandung', 'Jawa Barat', '34213', 'N'),
(20001, '675', 'Jalan Jambu', 'Pasuruan', 'Jawa Timur', '23423', 'N'),
(20002, '853', 'Jalan Jeruk', 'Surabaya', 'Jawa Timur', '23452', 'N'),
(20003, '982', 'Jalan Mangga', 'Yogyakarta', 'DI Yogyakarta', '43521', 'N'),
(20004, '236', 'Jalan Apel', 'Bandung', 'Jawa Barat', '34632', 'N'),
(20005, '975', 'Jalan Alpukat', 'Semarang', 'Jawa Tengah', '42312', 'N'),
(20006, '435', 'Jalan Nanas', 'Medan', 'Sumatera Utara', '43532', 'N'),
(20007, '324', 'Jalan Sawo', 'Makassar', 'Sulawesi Selatan', '56753', 'N'),
(20008, '746', 'Jalan Srikaya', 'Denpasar', 'Bali', '68675', 'N'),
(20009, '342', 'Jalan Nangka', 'Palembang', 'Sumatera Selatan', '32242', 'N'),
(20010, '221', 'Jalan Durian', 'Manado', 'Sulawesi Utara', '54371', 'N'),
(20011, '423', 'Jalan Mawar', 'Balikpapan', 'Kalimantan Timur', '32452', 'N'),
(20012, '933', 'Jalan Melati', 'Padang', 'Sumatera Barat', '63627', 'N'),
(20013, '228', 'Jalan Tulip', 'Malang', 'Jawa Timur', '78342', 'N'),
(20014, '275', 'Jalan Matahari', 'Bandung', 'Jawa Barat', '98232', 'N'),
(20015, '431', 'Jalan Teratai', 'Surakarta', 'Jawa Tengah', '32455', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `car_tb`
--

CREATE TABLE `car_tb` (
  `car_id` int(11) NOT NULL,
  `class_car` varchar(10) NOT NULL,
  `car_location` int(11) DEFAULT NULL,
  `make` varchar(10) NOT NULL,
  `model` varchar(20) NOT NULL,
  `year` int(11) NOT NULL,
  `colour` varchar(10) NOT NULL,
  `license_plate` varchar(8) NOT NULL
) ;

--
-- Dumping data for table `car_tb`
--

INSERT INTO `car_tb` (`car_id`, `class_car`, `car_location`, `make`, `model`, `year`, `colour`, `license_plate`) VALUES
(1001, 'Subcompact', 20001, 'Toyota', 'Yaris', 2022, 'Blue', 'AB123CD'),
(1002, 'Compact', 20002, 'Honda', 'Civic', 2021, 'Silver', 'EF456GH'),
(1003, 'Sedan', 20003, 'Nissan', 'Altima', 2023, 'Black', 'IJ789KL'),
(1004, 'Luxury', 20004, 'Mercedes', 'S-Class', 2020, 'White', 'MN012OP'),
(1005, 'Subcompact', 20005, 'Ford', 'Fiesta', 2022, 'Red', 'QR345ST'),
(1006, 'Compact', 20008, 'Chevrolet', 'Cruze', 2021, 'Gray', 'UV678WX'),
(1007, 'Sedan', 20009, 'BMW', '3 Series', 2023, 'Black', 'YZ901AB'),
(1008, 'Luxury', 20010, 'Audi', 'A8', 2020, 'Silver', 'CD234EF'),
(1009, 'Subcompact', 20006, 'Hyundai', 'Accent', 2022, 'Green', 'GH567IJ'),
(1010, 'Compact', 20007, 'Volkswagen', 'Jetta', 2021, 'Blue', 'KL890MN'),
(1011, 'Sedan', 20011, 'Toyota', 'Camry', 2023, 'White', 'OP123QR'),
(1012, 'Luxury', 20012, 'Lexus', 'LS', 2020, 'Black', 'ST456UV'),
(1013, 'Subcompact', 20013, 'Kia', 'Rio', 2022, 'Orange', 'WX789YZ'),
(1014, 'Compact', 20014, 'Mazda', 'Mazda3', 2021, 'Red', 'AB012CD'),
(1015, 'Sedan', 20015, 'Acura', 'TLX', 2023, 'Blue', 'EF345GH');

-- --------------------------------------------------------

--
-- Table structure for table `classcar_tb`
--

CREATE TABLE `classcar_tb` (
  `class_car` varchar(10) NOT NULL,
  `car_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classcar_tb`
--

INSERT INTO `classcar_tb` (`class_car`, `car_desc`) VALUES
('Compact', 'Efisien bahan bakar '),
('Luxury', 'Mewah dan tinggi'),
('Sedan', 'Nyaman untuk keluarg'),
('Subcompact', 'Kecil dan ekonomis');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `driver_license` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`driver_license`) VALUES
('DL012345'),
('DL234568'),
('DL456789'),
('DL567890'),
('DL678901'),
('DL890125');

-- --------------------------------------------------------

--
-- Table structure for table `dropoffcharge_tb`
--

CREATE TABLE `dropoffcharge_tb` (
  `class_car` varchar(10) NOT NULL,
  `from_location` int(11) NOT NULL,
  `to_location` int(11) NOT NULL,
  `charge` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dropoffcharge_tb`
--

INSERT INTO `dropoffcharge_tb` (`class_car`, `from_location`, `to_location`, `charge`) VALUES
('Compact', 20002, 20004, 60000.00),
('Luxury', 20004, 20006, 120000.00),
('Sedan', 20003, 20005, 80000.00),
('Subcompact', 20001, 20003, 50000.00);

-- --------------------------------------------------------

--
-- Table structure for table `employeetype_tb`
--

CREATE TABLE `employeetype_tb` (
  `employee_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeetype_tb`
--

INSERT INTO `employeetype_tb` (`employee_type`) VALUES
('Manager'),
('Pekerja'),
('Pembersih'),
('Pengemudi'),
('Petugas');

-- --------------------------------------------------------

--
-- Table structure for table `employee_tb`
--

CREATE TABLE `employee_tb` (
  `driver_license` varchar(20) NOT NULL,
  `location` int(11) NOT NULL,
  `employee_type` varchar(20) NOT NULL,
  `is_president` char(1) NOT NULL CHECK (`is_president` in ('Y','N')),
  `is_vicepres` char(1) NOT NULL CHECK (`is_vicepres` in ('Y','N'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_tb`
--

INSERT INTO `employee_tb` (`driver_license`, `location`, `employee_type`, `is_president`, `is_vicepres`) VALUES
('DL123456', 1, 'Manager', 'Y', 'N'),
('DL234567', 14, 'Petugas', 'N', 'N'),
('DL345678', 1, 'Manager', 'N', 'Y'),
('DL567890', 14, 'Pengemudi', 'N', 'N'),
('DL789012', 1, 'Manager', 'N', 'Y'),
('DL890123', 14, 'Pembersih', 'N', 'N'),
('DL901234', 14, 'Pekerja', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `person_tb`
--

CREATE TABLE `person_tb` (
  `address_id` int(11) NOT NULL,
  `driver_license` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person_tb`
--

INSERT INTO `person_tb` (`address_id`, `driver_license`, `first_name`, `last_name`) VALUES
(9, 'DL012345', 'James', 'Anderson'),
(3, 'DL123456', 'John', 'Doe'),
(7, 'DL234567', 'Sophia', 'Miller'),
(10, 'DL234568', 'Daniel', 'Garcia'),
(4, 'DL345678', 'Robert', 'Johnson'),
(8, 'DL456789', 'Olivia', 'Martinez'),
(2, 'DL567890', 'Michael', 'Brown'),
(12, 'DL678901', 'Emma', 'Lee'),
(5, 'DL789012', 'Jane', 'Smith'),
(11, 'DL890123', 'David', 'Davis'),
(13, 'DL890125', 'Ava', 'Hernandez'),
(6, 'DL901234', 'Emily', 'Williams');

-- --------------------------------------------------------

--
-- Table structure for table `phone_tb`
--

CREATE TABLE `phone_tb` (
  `driver_license` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phone_tb`
--

INSERT INTO `phone_tb` (`driver_license`, `phone`) VALUES
('DL012345', '08559990000'),
('DL123456', '081234567890'),
('DL234567', '085588899999'),
('DL234568', '08322233344'),
('DL345678', '085551112233'),
('DL456789', '08557778888'),
('DL567890', '085566677777'),
('DL678901', '08552223333'),
('DL789012', '089876543210'),
('DL890123', '08553332222'),
('DL890125', '08551112233'),
('DL901234', '085544455555');

-- --------------------------------------------------------

--
-- Table structure for table `promo_tb`
--

CREATE TABLE `promo_tb` (
  `duration` enum('1 Hari','1 Minggu','2 Minggu','1 Bulan') NOT NULL,
  `class_car` varchar(10) NOT NULL,
  `from_date` date NOT NULL,
  `percentage` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo_tb`
--

INSERT INTO `promo_tb` (`duration`, `class_car`, `from_date`, `percentage`) VALUES
('1 Hari', 'Subcompact', '2023-01-01', 0.60),
('1 Minggu', 'Subcompact', '2023-02-01', 0.60),
('2 Minggu', 'Subcompact', '2023-03-01', 0.60),
('1 Bulan', 'Subcompact', '2023-04-01', 0.60);

-- --------------------------------------------------------

--
-- Table structure for table `promrate_tb`
--

CREATE TABLE `promrate_tb` (
  `duration` enum('1 Hari','1 Minggu','2 Minggu','1 Bulan') NOT NULL,
  `class_car` varchar(10) NOT NULL,
  `amount` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promrate_tb`
--

INSERT INTO `promrate_tb` (`duration`, `class_car`, `amount`) VALUES
('1 Hari', 'Compact', 6000.00),
('1 Hari', 'Luxury', 12000.00),
('1 Hari', 'Sedan', 8000.00),
('1 Hari', 'Subcompact', 5000.00),
('1 Minggu', 'Compact', 35000.00),
('1 Minggu', 'Luxury', 80000.00),
('1 Minggu', 'Sedan', 45000.00),
('1 Minggu', 'Subcompact', 30000.00),
('2 Minggu', 'Compact', 60000.00),
('2 Minggu', 'Luxury', 120000.00),
('2 Minggu', 'Sedan', 70000.00),
('2 Minggu', 'Subcompact', 50000.00),
('1 Bulan', 'Compact', 200000.00),
('1 Bulan', 'Luxury', 400000.00),
('1 Bulan', 'Sedan', 250000.00),
('1 Bulan', 'Subcompact', 150000.00);

-- --------------------------------------------------------

--
-- Table structure for table `rentalrate_tb`
--

CREATE TABLE `rentalrate_tb` (
  `rental_id` int(11) NOT NULL,
  `duration` enum('1 Hari','1 Minggu','2 Minggu','1 Bulan') NOT NULL,
  `class_car` varchar(10) NOT NULL,
  `count` decimal(8,2) NOT NULL
) ;

--
-- Dumping data for table `rentalrate_tb`
--

INSERT INTO `rentalrate_tb` (`rental_id`, `duration`, `class_car`, `count`) VALUES
(40003, '2 Minggu', 'Sedan', 700000.00),
(40004, '1 Bulan', 'Luxury', 800000.00),
(40005, '1 Hari', 'Compact', 60000.00),
(40006, '1 Minggu', 'Subcompact', 300000.00),
(40007, '2 Minggu', 'Sedan', 700000.00);

-- --------------------------------------------------------

--
-- Table structure for table `rental_tb`
--

CREATE TABLE `rental_tb` (
  `rental_id` int(11) NOT NULL,
  `driver_license` varchar(20) NOT NULL,
  `car_id` int(11) NOT NULL,
  `from_location` int(11) NOT NULL,
  `dropoff_location` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  `tank` varchar(10) NOT NULL,
  `initial_odo` int(11) NOT NULL,
  `return_odo` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `rental_tb`
--

INSERT INTO `rental_tb` (`rental_id`, `driver_license`, `car_id`, `from_location`, `dropoff_location`, `from_date`, `to_date`, `tank`, `initial_odo`, `return_odo`) VALUES
(40003, 'DL890125', 1003, 20003, 20004, '2023-03-01', '2023-03-15', 'Setengah', 8000, 8500),
(40004, 'DL234568', 1004, 20004, 20005, '2023-04-01', '2023-04-10', 'Kosong', 15000, 15800),
(40005, 'DL456789', 1005, 20005, 20006, '2023-05-01', '2023-05-15', 'Seperempat', 11000, 11500),
(40006, 'DL012345', 1006, 20006, 20007, '2023-11-30', NULL, 'Penuh', 13000, NULL),
(40007, 'DL678901', 1007, 20007, 20008, '2023-12-01', NULL, 'Penuh', 9000, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_tb`
--
ALTER TABLE `address_tb`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `car_tb`
--
ALTER TABLE `car_tb`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `car_location` (`car_location`),
  ADD KEY `class_car` (`class_car`);

--
-- Indexes for table `classcar_tb`
--
ALTER TABLE `classcar_tb`
  ADD PRIMARY KEY (`class_car`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`driver_license`);

--
-- Indexes for table `dropoffcharge_tb`
--
ALTER TABLE `dropoffcharge_tb`
  ADD PRIMARY KEY (`class_car`,`from_location`,`to_location`),
  ADD KEY `from_location` (`from_location`),
  ADD KEY `to_location` (`to_location`);

--
-- Indexes for table `employeetype_tb`
--
ALTER TABLE `employeetype_tb`
  ADD PRIMARY KEY (`employee_type`);

--
-- Indexes for table `employee_tb`
--
ALTER TABLE `employee_tb`
  ADD PRIMARY KEY (`driver_license`),
  ADD KEY `location` (`location`),
  ADD KEY `employee_type` (`employee_type`);

--
-- Indexes for table `person_tb`
--
ALTER TABLE `person_tb`
  ADD PRIMARY KEY (`driver_license`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `phone_tb`
--
ALTER TABLE `phone_tb`
  ADD PRIMARY KEY (`driver_license`,`phone`);

--
-- Indexes for table `promo_tb`
--
ALTER TABLE `promo_tb`
  ADD PRIMARY KEY (`duration`,`class_car`);

--
-- Indexes for table `promrate_tb`
--
ALTER TABLE `promrate_tb`
  ADD PRIMARY KEY (`duration`,`class_car`),
  ADD KEY `class_car` (`class_car`);

--
-- Indexes for table `rentalrate_tb`
--
ALTER TABLE `rentalrate_tb`
  ADD PRIMARY KEY (`rental_id`,`duration`,`class_car`),
  ADD KEY `duration` (`duration`,`class_car`);

--
-- Indexes for table `rental_tb`
--
ALTER TABLE `rental_tb`
  ADD PRIMARY KEY (`rental_id`),
  ADD UNIQUE KEY `car_id` (`car_id`),
  ADD KEY `driver_license` (`driver_license`),
  ADD KEY `from_location` (`from_location`),
  ADD KEY `dropoff_location` (`dropoff_location`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_tb`
--
ALTER TABLE `car_tb`
  ADD CONSTRAINT `car_tb_ibfk_1` FOREIGN KEY (`car_location`) REFERENCES `address_tb` (`address_id`),
  ADD CONSTRAINT `car_tb_ibfk_2` FOREIGN KEY (`class_car`) REFERENCES `classcar_tb` (`class_car`);

--
-- Constraints for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD CONSTRAINT `customer_tb_ibfk_1` FOREIGN KEY (`driver_license`) REFERENCES `person_tb` (`driver_license`);

--
-- Constraints for table `dropoffcharge_tb`
--
ALTER TABLE `dropoffcharge_tb`
  ADD CONSTRAINT `dropoffcharge_tb_ibfk_1` FOREIGN KEY (`class_car`) REFERENCES `classcar_tb` (`class_car`),
  ADD CONSTRAINT `dropoffcharge_tb_ibfk_2` FOREIGN KEY (`from_location`) REFERENCES `address_tb` (`address_id`),
  ADD CONSTRAINT `dropoffcharge_tb_ibfk_3` FOREIGN KEY (`to_location`) REFERENCES `address_tb` (`address_id`);

--
-- Constraints for table `employee_tb`
--
ALTER TABLE `employee_tb`
  ADD CONSTRAINT `employee_tb_ibfk_1` FOREIGN KEY (`driver_license`) REFERENCES `person_tb` (`driver_license`),
  ADD CONSTRAINT `employee_tb_ibfk_2` FOREIGN KEY (`location`) REFERENCES `address_tb` (`address_id`),
  ADD CONSTRAINT `employee_tb_ibfk_3` FOREIGN KEY (`employee_type`) REFERENCES `employeetype_tb` (`employee_type`);

--
-- Constraints for table `person_tb`
--
ALTER TABLE `person_tb`
  ADD CONSTRAINT `person_tb_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address_tb` (`address_id`);

--
-- Constraints for table `phone_tb`
--
ALTER TABLE `phone_tb`
  ADD CONSTRAINT `phone_tb_ibfk_1` FOREIGN KEY (`driver_license`) REFERENCES `person_tb` (`driver_license`);

--
-- Constraints for table `promo_tb`
--
ALTER TABLE `promo_tb`
  ADD CONSTRAINT `promo_tb_ibfk_1` FOREIGN KEY (`duration`,`class_car`) REFERENCES `promrate_tb` (`duration`, `class_car`);

--
-- Constraints for table `promrate_tb`
--
ALTER TABLE `promrate_tb`
  ADD CONSTRAINT `promrate_tb_ibfk_1` FOREIGN KEY (`class_car`) REFERENCES `classcar_tb` (`class_car`);

--
-- Constraints for table `rentalrate_tb`
--
ALTER TABLE `rentalrate_tb`
  ADD CONSTRAINT `rentalrate_tb_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `rental_tb` (`rental_id`),
  ADD CONSTRAINT `rentalrate_tb_ibfk_2` FOREIGN KEY (`duration`,`class_car`) REFERENCES `promrate_tb` (`duration`, `class_car`);

--
-- Constraints for table `rental_tb`
--
ALTER TABLE `rental_tb`
  ADD CONSTRAINT `rental_tb_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car_tb` (`car_id`),
  ADD CONSTRAINT `rental_tb_ibfk_2` FOREIGN KEY (`driver_license`) REFERENCES `customer_tb` (`driver_license`),
  ADD CONSTRAINT `rental_tb_ibfk_3` FOREIGN KEY (`from_location`) REFERENCES `address_tb` (`address_id`),
  ADD CONSTRAINT `rental_tb_ibfk_4` FOREIGN KEY (`dropoff_location`) REFERENCES `address_tb` (`address_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
