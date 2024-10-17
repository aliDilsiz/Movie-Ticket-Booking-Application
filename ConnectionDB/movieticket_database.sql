-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Oca 2023, 09:58:16
-- Sunucu sürümü: 10.4.25-MariaDB
-- PHP Sürümü: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `movieticket_database`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_check`
--

CREATE TABLE `admin_check` (
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `admin_check`
--

INSERT INTO `admin_check` (`password`) VALUES
(88194),
(88194);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_register`
--

CREATE TABLE `admin_register` (
  `Name` varchar(10) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `EmailID` varchar(20) NOT NULL,
  `Password` int(10) NOT NULL,
  `Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `admin_register`
--

INSERT INTO `admin_register` (`Name`, `EmailID`, `Password`, `Number`) VALUES
('a', 'aa@gmail.com', 54, 123),
('b', 'b@gmail.com', 14, 5858);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `register`
--

CREATE TABLE `register` (
  `Name` varchar(25) NOT NULL,
  `EmailID` varchar(25) NOT NULL,
  `Number` int(25) NOT NULL,
  `Password` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `register`
--

INSERT INTO `register` (`Name`, `EmailID`, `Number`, `Password`) VALUES
('a', 'a@gmail.com', 5656, 14),
('ali', 'ali@gmail.com', 123, 5454),
('b', 'b@gmail.com', 8989, 5),
('c', 'c@gmail.com', 8989, 3);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_register`
--
ALTER TABLE `admin_register`
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Tablo için indeksler `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
