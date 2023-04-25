-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 10:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udata`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` char(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `pnumber` bigint(10) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `pnumber`, `city`) VALUES
('2fec8ece-db05-11ed-ad9d-3085a9f72529', 'Harmohan Singh', 8423156712, 'Mumbai'),
('811b02aa-db06-11ed-ad9d-3085a9f72529', 'Suraj Mirwani', 7654321982, 'Hyderabad'),
('44a5b59d-db0c-11ed-ad9d-3085a9f72529', 'Sulochana nayak', 7654321892, 'Chennai'),
('94ec8629-db0d-11ed-ad9d-3085a9f72529', 'Subhojit Sharma', 7892345612, 'Mumbai'),
('fa9dfa22-db0d-11ed-ad9d-3085a9f72529', 'Subhojit Sharma', 7892345612, 'Mumbai'),
('417fc336-db11-11ed-ad9d-3085a9f72529', 'Subhramanyam Swamy', 8249345678, 'Delhi'),
('681bb261-db62-11ed-ac7b-3085a9f72529', 'Sachin Sekhawat', 9876432121, 'Pune'),
('b9c36f26-dbbc-11ed-bef4-3085a9f72529', 'saudamini sahu', 7845612347, 'Brahmapur'),
('100269887296897024', 'Rohan Biswas', 4556667971, 'Puri'),
('100269887296897025', 'Sunaina samani', 5697481237, 'Faridabad'),
('de3d07ac-87ab-4261-acc1-4420a4bfa471', 'Sarmistha Nayak', 7895641231, 'Bhubaneswar');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
