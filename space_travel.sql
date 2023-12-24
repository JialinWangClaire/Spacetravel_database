-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-12-11 09:45:48
-- 服务器版本： 10.4.21-MariaDB
-- PHP 版本： 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `space_travel`
--

-- --------------------------------------------------------

--
-- 表的结构 `arrives`
--

CREATE TABLE `arrives` (
  `flight_number` varchar(255) NOT NULL,
  `spaceport_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `arrives`
--

INSERT INTO `arrives` (`flight_number`, `spaceport_name`) VALUES
('CH01', 'TKY'),
('CH02', 'PVG'),
('CR01', 'MCY'),
('UN02', 'GHG');

-- --------------------------------------------------------

--
-- 表的结构 `booking_agent`
--

CREATE TABLE `booking_agent` (
  `id` varchar(255) NOT NULL,
  `booking_company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `booking_agent`
--

INSERT INTO `booking_agent` (`id`, `booking_company_name`) VALUES
('626353415', 'Booking '),
('712974649', 'Booking '),
('725611809', 'Booking '),
('16354455', 'Expedia'),
('26424174', 'Expedia'),
('37252411', 'Expedia'),
('1927283', 'Flyover'),
('3524162', 'Flyover'),
('8936452', 'Flyover'),
('12834', 'Hope'),
('16354', 'Hope'),
('19283', 'Hope'),
('27364518', 'Trip'),
('72633495', 'Trip'),
('82779772', 'Trip');

-- --------------------------------------------------------

--
-- 表的结构 `booking_company`
--

CREATE TABLE `booking_company` (
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `telephone_num` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `booking_company`
--

INSERT INTO `booking_company` (`name`, `loacation`, `telephone_num`) VALUES
('Booking ', 'Amsterdam', '8888503958'),
('Expedia', 'Shanghai', '7785658888'),
('Flyover', 'New York', '2359173399'),
('Hope', 'Berkeley', '5103462283'),
('Trip', 'Beijing', '8338960077');

-- --------------------------------------------------------

--
-- 表的结构 `cabin_crew`
--

CREATE TABLE `cabin_crew` (
  `id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `cabin_crew`
--

INSERT INTO `cabin_crew` (`id`) VALUES
('15342'),
('17075'),
('2283619'),
('2708944'),
('325344'),
('471039'),
('54262500'),
('57239230');

-- --------------------------------------------------------

--
-- 表的结构 `customer`
--

CREATE TABLE `customer` (
  `id` varchar(255) NOT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `passport_exp_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `customer`
--

INSERT INTO `customer` (`id`, `card_number`, `phone_number`, `passport_number`, `passport_exp_date`) VALUES
('1246855', '8901 2345 6789 0123', '3345678901', 'AB3456789', '2027-08-15'),
('12834', '9870 5432 1098 7612', '3123456789', 'CD5678901', '2030-10-14'),
('1528484', '7890 1234 5678 9012', '2987654321', 'ST7890123', '2029-07-26'),
('16354', '6011 3456 7890 1234', '1234567890', 'GH5678901', '2027-11-07'),
('16354455', '2345 6789 0123 4567', '5555678901', 'OP3456789', '2028-12-04'),
('1927283', '3528 4567 8901 2345', '2876543210', 'EF3456789', '2027-12-10'),
('19283', '5678 9012 3456 7890', '1234567890', 'WX1234567', '2030-05-16'),
('26424174', '9876 5432 1098 7654', '3087654321', 'KL1234567', '2025-10-18'),
('27364518', '6789 0123 4567 8901', '5555678901', 'YZ2345678', '2028-12-01'),
('364572', '4321 0987 6543 2109', '3023456789', 'MN5678901', '2030-04-23'),
('37252411', '3456 7890 1234 5678', '2789012345', 'UV5678901', '2026-11-08'),
('40564', '3456 7890 1234 5678', '2012345678', 'EF1234567', '2028-06-19'),
('5407569', '7890 1234 5678 9012', '5557890123', 'QR2345678', '2029-09-29'),
('556541', '6789 0123 4567 8901', '2345678901', 'GH2345678', '2024-03-08'),
('566684', '3456 7890 1234 5678', '2034567890', 'QR5678901', '2028-04-14'),
('6054815', '9870 5432 1098 7612', '5558765432', 'CD5678901', '2026-11-25'),
('61957256', '5678 9012 3456 7890', '3812345678', 'OP1234567', '2024-07-05'),
('626353415', '1234 5678 9012 3456', '5559876543', 'IJ9012345', '2025-08-22'),
('712974649', '8765 4321 0987 6543', '3123456789', 'MN2345678', '2024-06-30'),
('725611809', '4025 1234 5678 9012', '5551234567', 'AB1234567', '2028-05-15'),
('72633495', '8901 2345 6789 0123', '3087654321', 'AB3456789', '2026-08-23'),
('74551452', '6543 2109 8765 4321', '3098765432', 'YZ9012345', '2024-09-12'),
('7852466', '8765 4321 0987 6543', '5553456789', 'KL9012345', '2024-01-17'),
('82779772', '5410 9876 5432 1098', '2012345678', 'CD7890123', '2026-09-28'),
('8556964', '5678 9012 3456 7890', '1876543210', 'UV1234567', '2024-02-09'),
('985664', '4321 0987 6543 2109', '5552345678', 'WX2345678', '2027-05-31'),
('998584', '1234 5678 9012 3456', '1987654321', 'IJ7890123', '2026-10-02');

-- --------------------------------------------------------

--
-- 表的结构 `departs`
--

CREATE TABLE `departs` (
  `flight_number` varchar(255) NOT NULL,
  `spaceport_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `departs`
--

INSERT INTO `departs` (`flight_number`, `spaceport_name`) VALUES
('CH01', 'PVG'),
('CH02', 'JFK'),
('CR01', 'SFO'),
('UN02', 'NVWA');

-- --------------------------------------------------------

--
-- 表的结构 `flight`
--

CREATE TABLE `flight` (
  `number` varchar(255) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `flight`
--

INSERT INTO `flight` (`number`, `departure_time`, `arrival_time`) VALUES
('CH01', '19:00:00', '20:00:00'),
('CH02', '07:08:00', '11:53:00'),
('CR01', '06:05:00', '09:17:00'),
('UN02', '13:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `maintenance_personnel`
--

CREATE TABLE `maintenance_personnel` (
  `id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `maintenance_personnel`
--

INSERT INTO `maintenance_personnel` (`id`) VALUES
('14568'),
('2478742'),
('369568'),
('372635'),
('424355'),
('454372'),
('53539625');

-- --------------------------------------------------------

--
-- 表的结构 `managed`
--

CREATE TABLE `managed` (
  `spaceport_name` varchar(255) NOT NULL,
  `property_manager_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `managed`
--

INSERT INTO `managed` (`spaceport_name`, `property_manager_id`) VALUES
('GHG', '7544567'),
('JFK', '7897897'),
('MCY', '876543210'),
('NVWA', '45645677'),
('PVG', '94709'),
('SFO', '95678'),
('TKY', '456789012');

-- --------------------------------------------------------

--
-- 表的结构 `manufacturer`
--

CREATE TABLE `manufacturer` (
  `name_code` varchar(255) NOT NULL,
  `start_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `manufacturer`
--

INSERT INTO `manufacturer` (`name_code`, `start_year`) VALUES
('BEAT', 2002),
('IRON', 1964),
('STEEL', 1866),
('STRONG', 2000);

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE `member` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `email`, `first_name`, `last_name`, `date_of_birth`) VALUES
('1246855', 'charlotte312@gmail.com', 'Charlotte', 'Smith', '1976-08-15'),
('12834', 'amelia0211@gmail.com', 'Amelia ', 'Davis', '1984-02-11'),
('1528484', 'selena518@gmail.com', 'Selena', 'Anderson', '1999-07-26'),
('16354', 'dd444@gmail.com', 'David ', 'Lee', '2001-01-03'),
('16354455', 'william888@nyu.edu', 'William ', 'Garcia', '2007-04-08'),
('1927283', 'isabellam1210@qq.com', 'Isabella', 'Martinez', '1992-08-25'),
('19283', 'kk000@qq.com', 'Daniel ', 'Nguyen', '2000-06-04'),
('26424174', 'james1015@gmail.com', 'James ', 'Brown', '1996-10-15'),
('27364518', 'ava_robinson111@qq.com', 'Ava ', 'Robinson', '2005-04-09'),
('3524162', 'harper555@gmail.com', 'Harper ', 'Clark', '1997-08-10'),
('364572', 'jk1980@gmail.com', 'Ju-won', 'Kim', '1953-04-23'),
('37252411', 'kimmm2015@nyu.edu', 'Olivia', 'Kim', '2001-05-09'),
('40564', 'tonygarcia@gmail.com', 'Tony', 'Garcia', '2014-06-19'),
('5407569', 'minjun48@gmail.com', 'Min-jun', 'Choi', '2019-09-29'),
('556541', 'erica_conner@gmail.com', 'Erica', 'Connor', '2007-03-08'),
('566684', 'emma_tsai00@gmail.com', 'Emma', 'Tsai', '2000-07-27'),
('6054815', 'wangqian0710@gmail.com', 'Qian', 'Wang', '1997-11-25'),
('61957256', 'freya_del@gmail.com', 'Freya', 'Delvina', '2010-07-05'),
('626353415', 'ee555@gmail.com', 'Sophia ', 'Patel', '1999-04-01'),
('712974649', 'miahern11@nyu.edu', 'Mia ', 'Hernandez', '2001-01-30'),
('725611809', 'emily_johnson@qq.com', 'Emily', 'Johnson', '1990-08-05'),
('72633495', 'mm222@qq.com', 'Joseph ', 'Wilson', '1989-03-10'),
('74551452', 'heidi1212@gmail.com', 'Heidi', 'Lin', '1964-09-12'),
('7852466', 'lilizhao66@gmail.com', 'Lili', 'Zhao', '1949-01-17'),
('82779772', 'bb1211@qq.com', 'Michael ', 'Smith', '1989-12-11'),
('8556964', 'ayasu88@gmail.com', 'Aya', 'Suzuki', '2008-02-09'),
('8936452', 'ethanlopez3366@gmai.com', 'Ethan ', 'Lopez', '1956-03-06'),
('985664', 'ricknono666@gmail.com', 'Rick', 'Novak', '1954-05-31'),
('998584', 'haha9090@gmail.com', 'Hana', 'Nakamura', '1997-10-02');

-- --------------------------------------------------------

--
-- 表的结构 `property_manager`
--

CREATE TABLE `property_manager` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_num` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `property_manager`
--

INSERT INTO `property_manager` (`id`, `name`, `phone_num`) VALUES
('1230118', 'Aiden Whitaker', '646-555-3333'),
('23012318', 'Harper Sinclair', '917-555-6789'),
('294709', 'Lucas Kensington', '718-555-2222'),
('36549877', 'Mason Whitman', '987-654-3210'),
('45645677', 'Ava Sinclair', '646-515-1234'),
('456789012', 'Raj Kapoor', '555-2180-4322'),
('7544567', 'Mia Donovan', '555-2830-1234'),
('7897897', 'Zoe Caldwell', '555-9876-5432'),
('876543210', 'Ji-hyun Kim', '212-555-4444'),
('94709', 'Mei Chen', '156-8765-4321'),
('95678', 'Lei Wang', '137-6543-2109'),
('987123654', 'Minh Nguyen', '654-321-0987');

-- --------------------------------------------------------

--
-- 表的结构 `purchases`
--

CREATE TABLE `purchases` (
  `ticket_id` varchar(255) NOT NULL,
  `booking_agent_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `purchases`
--

INSERT INTO `purchases` (`ticket_id`, `booking_agent_id`, `customer_id`, `price`, `date`) VALUES
('TCH1918', '725611809', '7852466', 3020, '2023-06-06'),
('TCH1919', '725611809', '364572', 1030, '2023-06-06'),
('TCH1920', '12834', '61957256', 980, '2023-06-06'),
('TCH1921', '8936452', '5407569', 1020, '2023-06-06'),
('TCH6632', '16354', '998584', 778, '2024-12-12'),
('TCH6633', '626353415', '7852466', 888, '2024-12-12'),
('TCH6634', '26424174', '364572', 699, '2024-12-12'),
('TCH6635', '712974649', '61957256', 999, '2024-12-12'),
('TCH6636', '16354455', '5407569', 1033, '2024-12-12'),
('TCH6637', '27364518', '725611809', 1555, '2024-12-12'),
('TCH6638', '72633495', '82779772', 1020, '2024-12-12'),
('TCH6639', '12834', '1927283', 2988, '2024-12-12'),
('TCH6640', '26424174', '566684', 3000, '2024-12-12'),
('TCH6641', '712974649', '1528484', 2024, '2024-12-12'),
('TCH6642', '16354455', '8556964', 1988, '2024-12-12'),
('TCH6643', '27364518', '985664', 2000, '2024-12-12'),
('TCH8754', '626353415', '725611809', 999, '2024-12-12'),
('TCH8755', '26424174', '82779772', 777, '2024-12-12'),
('TCH8756', '712974649', '1927283', 666, '2024-12-12'),
('TCH8757', '16354455', '16354', 2222, '2024-12-12'),
('TCH8758', '37252411', '27364518', 780, '2024-12-12'),
('TCH8759', '19283', '72633495', 880, '2024-12-12'),
('TCH8760', '27364518', '566684', 2020, '2024-12-12'),
('TCH8761', '712974649', '1528484', 666, '2024-12-12'),
('TCH8762', '16354455', '8556964', 778, '2024-12-12'),
('TCH8763', '37252411', '985664', 1000, '2024-12-12'),
('TCH9898', '712974649', '27364518', 1020, '2023-06-06'),
('TCH9899', '16354455', '72633495', 980, '2023-06-06'),
('TCH9900', '37252411', '12834', 3000, '2023-06-06'),
('TCR1906', '72633495', '74551452', 8888, '2025-01-01'),
('TCR1907', '12834', '1246855', 6666, '2025-01-01'),
('TCR1908', '8936452', '6054815', 4444, '2025-01-01'),
('TCR1909', '3524162', '40564', 7777, '2025-01-01'),
('TCR1910', '12834', '556541', 5050, '2025-01-01'),
('TCR2005', '82779772', '16354455', 6666, '2025-01-01'),
('TCR2006', '1927283', '37252411', 3838, '2025-01-01'),
('TUN0076', '712974649', '566684', 1299, '2024-03-27'),
('TUN0077', '16354455', '1528484', 998, '2024-03-27'),
('TUN0078', '37252411', '8556964', 2580, '2024-03-27'),
('TUN0079', '19283', '985664', 1000, '2024-03-27'),
('TUN0080', '37252411', '725611809', 2600, '2024-03-27'),
('TUN0081', '19283', '82779772', 1530, '2024-03-27'),
('TUN0082', '37252411', '1927283', 1288, '2024-03-27'),
('TUN0083', '19283', '566684', 2580, '2024-03-27'),
('TUN1423', '725611809', '74551452', 2000, '2024-03-27'),
('TUN1424', '82779772', '1246855', 998, '2024-03-27'),
('TUN1425', '1927283', '6054815', 889, '2024-03-27'),
('TUN1426', '26424174', '40564', 778, '2024-03-27'),
('TUN1427', '712974649', '556541', 1000, '2024-03-27'),
('TUN1428', '16354455', '998584', 2500, '2024-03-27'),
('TUN1429', '37252411', '7852466', 3000, '2024-03-27'),
('TUN1430', '626353415', '364572', 3838, '2024-03-27'),
('TUN1431', '26424174', '61957256', 888, '2024-03-27'),
('TUN1432', '712974649', '5407569', 1800, '2024-03-27');

-- --------------------------------------------------------

--
-- 表的结构 `serve`
--

CREATE TABLE `serve` (
  `cabin_crew_id` varchar(255) NOT NULL,
  `flight_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `serve`
--

INSERT INTO `serve` (`cabin_crew_id`, `flight_number`) VALUES
('15342', 'CH01'),
('17075', 'CH01'),
('2283619', 'CH02'),
('2708944', 'CH02'),
('325344', 'UN02'),
('471039', 'UN02'),
('54262500', 'CR01'),
('57239230', 'CR01');

-- --------------------------------------------------------

--
-- 表的结构 `spaceline`
--

CREATE TABLE `spaceline` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `spaceline`
--

INSERT INTO `spaceline` (`name`) VALUES
('China Spaceline'),
('Crazy Spaceline'),
('King Spaceline'),
('Moon Spaceline'),
('United Spaceline');

-- --------------------------------------------------------

--
-- 表的结构 `spaceline_staff`
--

CREATE TABLE `spaceline_staff` (
  `id` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `spaceline_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `spaceline_staff`
--

INSERT INTO `spaceline_staff` (`id`, `first_name`, `last_name`, `salary`, `spaceline_name`) VALUES
('14568', 'David', 'Miller', 245000, 'Moon Spaceline'),
('15342', 'Stella', 'William', 200000, 'Moon Spaceline'),
('17075', 'John', 'Doe', 550000, 'Moon Spaceline'),
('2283619', 'Jackson', 'Clark', 250000, 'King Spaceline'),
('2478742', 'Bo', 'Zhang', 140000, 'King Spaceline'),
('2708944', 'Amy', 'Smith', 350000, 'King Spaceline'),
('325344', 'Grace', 'Brown', 217500, 'United Spaceline'),
('369568', 'Ethan', 'Lee', 305000, 'United Spaceline'),
('372635', 'Eric', 'Johnson', 138000, 'United Spaceline'),
('424355', 'Qing', 'Wang', 155000, 'China Spaceline'),
('454372', 'Hua', 'Sun', 325100, 'China Spaceline'),
('471039', 'Si', 'Li', 385000, 'China Spaceline'),
('53539625', 'Jack', 'Young', 362000, 'Crazy Spaceline'),
('54262500', 'Elizabeth', 'Gilbert', 620000, 'Crazy Spaceline'),
('57239230', 'James', 'Smith', 215000, 'Crazy Spaceline');

-- --------------------------------------------------------

--
-- 表的结构 `spaceport`
--

CREATE TABLE `spaceport` (
  `name` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `spaceport`
--

INSERT INTO `spaceport` (`name`, `city`) VALUES
('GHG', 'Mooncity'),
('JFK', 'New York'),
('MCY', 'Mooncity'),
('NVWA', 'Marscity'),
('PVG', 'Shanghai'),
('SFO', 'San Francisco '),
('TKY', 'Tokyo ');

-- --------------------------------------------------------

--
-- 表的结构 `spaceship`
--

CREATE TABLE `spaceship` (
  `id` varchar(255) NOT NULL,
  `seats` int(11) DEFAULT NULL,
  `model_type` varchar(255) NOT NULL,
  `spaceline_name` varchar(255) NOT NULL,
  `manufacturer_name_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `spaceship`
--

INSERT INTO `spaceship` (`id`, `seats`, `model_type`, `spaceline_name`, `manufacturer_name_code`) VALUES
('111123', 200, 'Rocket001', 'China Spaceline', 'IRON'),
('131415', 300, 'Rocket007', 'United Spaceline', 'IRON'),
('26887', 250, 'Deep999', 'Crazy Spaceline', 'STRONG'),
('35794', 180, 'Go787', 'King Spaceline', 'BEAT'),
('45671', 200, 'Rocket001', 'Moon Spaceline', 'IRON'),
('75776', 250, 'Deep999', 'King Spaceline', 'STRONG'),
('94709', 100, 'Ship001', 'United Spaceline', 'STRONG');

-- --------------------------------------------------------

--
-- 表的结构 `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` varchar(255) NOT NULL,
  `flight_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `flight_number`) VALUES
('TCH1918', 'CH01'),
('TCH1919', 'CH01'),
('TCH1920', 'CH01'),
('TCH1921', 'CH01'),
('TCH9898', 'CH01'),
('TCH9899', 'CH01'),
('TCH9900', 'CH01'),
('TCH6632', 'CH02'),
('TCH6633', 'CH02'),
('TCH6634', 'CH02'),
('TCH6635', 'CH02'),
('TCH6636', 'CH02'),
('TCH6637', 'CH02'),
('TCH6638', 'CH02'),
('TCH6639', 'CH02'),
('TCH6640', 'CH02'),
('TCH6641', 'CH02'),
('TCH6642', 'CH02'),
('TCH6643', 'CH02'),
('TCH8754', 'CH02'),
('TCH8755', 'CH02'),
('TCH8756', 'CH02'),
('TCH8757', 'CH02'),
('TCH8758', 'CH02'),
('TCH8759', 'CH02'),
('TCH8760', 'CH02'),
('TCH8761', 'CH02'),
('TCH8762', 'CH02'),
('TCH8763', 'CH02'),
('TCR1906', 'CR01'),
('TCR1907', 'CR01'),
('TCR1908', 'CR01'),
('TCR1909', 'CR01'),
('TCR1910', 'CR01'),
('TCR2005', 'CR01'),
('TCR2006', 'CR01'),
('TUN0076', 'UN02'),
('TUN0077', 'UN02'),
('TUN0078', 'UN02'),
('TUN0079', 'UN02'),
('TUN0080', 'UN02'),
('TUN0081', 'UN02'),
('TUN0082', 'UN02'),
('TUN0083', 'UN02'),
('TUN1423', 'UN02'),
('TUN1424', 'UN02'),
('TUN1425', 'UN02'),
('TUN1426', 'UN02'),
('TUN1427', 'UN02'),
('TUN1428', 'UN02'),
('TUN1429', 'UN02'),
('TUN1430', 'UN02'),
('TUN1431', 'UN02'),
('TUN1432', 'UN02');

-- --------------------------------------------------------

--
-- 表的结构 `uses`
--

CREATE TABLE `uses` (
  `spaceship_id` varchar(255) NOT NULL,
  `flight_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `uses`
--

INSERT INTO `uses` (`spaceship_id`, `flight_number`) VALUES
('111123', 'CH01'),
('111123', 'CH02'),
('131415', 'UN02'),
('26887', 'CR01');

--
-- 转储表的索引
--

--
-- 表的索引 `arrives`
--
ALTER TABLE `arrives`
  ADD PRIMARY KEY (`flight_number`,`spaceport_name`),
  ADD KEY `flight_number` (`flight_number`),
  ADD KEY `spaceport_name` (`spaceport_name`);

--
-- 表的索引 `booking_agent`
--
ALTER TABLE `booking_agent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `booking_company_name` (`booking_company_name`);

--
-- 表的索引 `booking_company`
--
ALTER TABLE `booking_company`
  ADD PRIMARY KEY (`name`);

--
-- 表的索引 `cabin_crew`
--
ALTER TABLE `cabin_crew`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- 表的索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- 表的索引 `departs`
--
ALTER TABLE `departs`
  ADD PRIMARY KEY (`flight_number`,`spaceport_name`),
  ADD KEY `flight_number` (`flight_number`),
  ADD KEY `spaceport_name` (`spaceport_name`);

--
-- 表的索引 `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`number`);

--
-- 表的索引 `maintenance_personnel`
--
ALTER TABLE `maintenance_personnel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- 表的索引 `managed`
--
ALTER TABLE `managed`
  ADD PRIMARY KEY (`spaceport_name`,`property_manager_id`),
  ADD KEY `spaceport_name` (`spaceport_name`),
  ADD KEY `property_manager_id` (`property_manager_id`);

--
-- 表的索引 `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`name_code`);

--
-- 表的索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `property_manager`
--
ALTER TABLE `property_manager`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`ticket_id`,`booking_agent_id`,`customer_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `booking_agent_id` (`booking_agent_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- 表的索引 `serve`
--
ALTER TABLE `serve`
  ADD PRIMARY KEY (`cabin_crew_id`,`flight_number`),
  ADD KEY `cabin_crew_id` (`cabin_crew_id`),
  ADD KEY `flight_number` (`flight_number`);

--
-- 表的索引 `spaceline`
--
ALTER TABLE `spaceline`
  ADD PRIMARY KEY (`name`);

--
-- 表的索引 `spaceline_staff`
--
ALTER TABLE `spaceline_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spaceline_name` (`spaceline_name`);

--
-- 表的索引 `spaceport`
--
ALTER TABLE `spaceport`
  ADD PRIMARY KEY (`name`);

--
-- 表的索引 `spaceship`
--
ALTER TABLE `spaceship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spaceline_name` (`spaceline_name`),
  ADD KEY `manufacturer_name_code` (`manufacturer_name_code`);

--
-- 表的索引 `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `flight_number` (`flight_number`);

--
-- 表的索引 `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`spaceship_id`,`flight_number`),
  ADD KEY `spaceship_id` (`spaceship_id`),
  ADD KEY `flight_number` (`flight_number`);

--
-- 限制导出的表
--

--
-- 限制表 `arrives`
--
ALTER TABLE `arrives`
  ADD CONSTRAINT `arrives_ibfk_1` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`),
  ADD CONSTRAINT `arrives_ibfk_2` FOREIGN KEY (`spaceport_name`) REFERENCES `spaceport` (`name`);

--
-- 限制表 `booking_agent`
--
ALTER TABLE `booking_agent`
  ADD CONSTRAINT `booking_agent_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `booking_agent_ibfk_2` FOREIGN KEY (`booking_company_name`) REFERENCES `booking_company` (`name`);

--
-- 限制表 `cabin_crew`
--
ALTER TABLE `cabin_crew`
  ADD CONSTRAINT `cabin_crew_ibfk_1` FOREIGN KEY (`id`) REFERENCES `spaceline_staff` (`id`);

--
-- 限制表 `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member` (`id`);

--
-- 限制表 `departs`
--
ALTER TABLE `departs`
  ADD CONSTRAINT `departs_ibfk_1` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`),
  ADD CONSTRAINT `departs_ibfk_2` FOREIGN KEY (`spaceport_name`) REFERENCES `spaceport` (`name`);

--
-- 限制表 `maintenance_personnel`
--
ALTER TABLE `maintenance_personnel`
  ADD CONSTRAINT `maintenance_personnel_ibfk_1` FOREIGN KEY (`id`) REFERENCES `spaceline_staff` (`id`);

--
-- 限制表 `managed`
--
ALTER TABLE `managed`
  ADD CONSTRAINT `managed_ibfk_1` FOREIGN KEY (`spaceport_name`) REFERENCES `spaceport` (`name`),
  ADD CONSTRAINT `managed_ibfk_2` FOREIGN KEY (`property_manager_id`) REFERENCES `property_manager` (`id`);

--
-- 限制表 `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`booking_agent_id`) REFERENCES `booking_agent` (`id`),
  ADD CONSTRAINT `purchases_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- 限制表 `serve`
--
ALTER TABLE `serve`
  ADD CONSTRAINT `serve_ibfk_1` FOREIGN KEY (`cabin_crew_id`) REFERENCES `cabin_crew` (`id`),
  ADD CONSTRAINT `serve_ibfk_2` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`);

--
-- 限制表 `spaceline_staff`
--
ALTER TABLE `spaceline_staff`
  ADD CONSTRAINT `spaceline_staff_ibfk_1` FOREIGN KEY (`spaceline_name`) REFERENCES `spaceline` (`name`);

--
-- 限制表 `spaceship`
--
ALTER TABLE `spaceship`
  ADD CONSTRAINT `spaceship_ibfk_1` FOREIGN KEY (`spaceline_name`) REFERENCES `spaceline` (`name`),
  ADD CONSTRAINT `spaceship_ibfk_2` FOREIGN KEY (`manufacturer_name_code`) REFERENCES `manufacturer` (`name_code`);

--
-- 限制表 `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`);

--
-- 限制表 `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `uses_ibfk_1` FOREIGN KEY (`spaceship_id`) REFERENCES `spaceship` (`id`),
  ADD CONSTRAINT `uses_ibfk_2` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
