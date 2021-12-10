-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 03 2021 г., 19:03
-- Версия сервера: 5.7.36-log
-- Версия PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `avia`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ac_characteristics`
--

DROP TABLE IF EXISTS `ac_characteristics`;
CREATE TABLE IF NOT EXISTS `ac_characteristics` (
  `ch_model` varchar(20) NOT NULL,
  `ch_length` decimal(10,0) DEFAULT NULL,
  `ch_wingspan` decimal(10,0) DEFAULT NULL,
  `ch_heigth` decimal(10,0) DEFAULT NULL,
  `ch_engine_type` varchar(20) DEFAULT NULL,
  `ch_engine_power` decimal(10,0) DEFAULT NULL,
  `ch_fuel_capacity` decimal(10,0) DEFAULT NULL,
  `ch_cruise_speed` decimal(10,0) DEFAULT NULL,
  `ch_max_speed` decimal(10,0) DEFAULT NULL,
  `ch_max_altitude` decimal(10,0) DEFAULT NULL,
  `ch_max_range` decimal(10,0) DEFAULT NULL,
  `ch_max_takeoff_weight` decimal(10,0) DEFAULT NULL,
  `ch_max_landing_weight` decimal(10,0) DEFAULT NULL,
  `ch_econom_seats_amount` decimal(5,0) DEFAULT NULL,
  `ch_business_seats_amount` decimal(5,0) DEFAULT NULL,
  `ch_crew_seats_amount` decimal(5,0) DEFAULT NULL,
  `ch_cabin_width` decimal(5,0) DEFAULT NULL,
  `ch_luggage_compartments` tinyint(1) DEFAULT NULL,
  `ch_rescue_equipment` tinyint(1) DEFAULT NULL,
  `ch_release_date` date DEFAULT NULL,
  `ch_recommended_lifetime` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`ch_model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `ac_characteristics`
--

INSERT INTO `ac_characteristics` (`ch_model`, `ch_length`, `ch_wingspan`, `ch_heigth`, `ch_engine_type`, `ch_engine_power`, `ch_fuel_capacity`, `ch_cruise_speed`, `ch_max_speed`, `ch_max_altitude`, `ch_max_range`, `ch_max_takeoff_weight`, `ch_max_landing_weight`, `ch_econom_seats_amount`, `ch_business_seats_amount`, `ch_crew_seats_amount`, `ch_cabin_width`, `ch_luggage_compartments`, `ch_rescue_equipment`, `ch_release_date`, `ch_recommended_lifetime`) VALUES
('A319', '34', '34', '12', 'CFMI CFM56-5A/5B', NULL, '23860', '820', '890', '11900', '5900', '64000', '61000', '112', '12', '5', '4', 1, 1, '2010-03-17', '20'),
('A321', '45', '36', '12', 'IAE V2500-A5', NULL, '30030', '840', '890', '11900', '5900', '93500', '77800', '167', '18', '5', '4', 1, 1, '2016-08-04', '25'),
('A330', '59', '60', '18', 'P&W PW4168A', NULL, '0', '870', '910', '12500', '12100', '230000', '182000', '271', '22', '5', '5', 1, 1, '2019-04-09', '20'),
('Airbus A319', '34', '34', '12', 'CFMI CFM56-5A/5B', NULL, '23860', '820', '890', '11900', '5900', '64000', '61000', '112', '12', '5', '4', 1, 1, '2010-03-17', '20'),
('Airbus A321-200', '45', '36', '12', 'IAE V2500-A5', NULL, '30030', '840', '890', '11900', '5900', '93500', '77800', '167', '18', '5', '4', 1, 1, '2016-08-04', '25'),
('Airbus A330-200', '59', '60', '18', 'P&W PW4168A', NULL, '0', '870', '910', '12500', '12100', '230000', '182000', '271', '22', '5', '5', 1, 1, '2019-04-09', '20'),
('B737', '40', '34', '13', 'CFMI CFM56-7B24/26', NULL, '26020', '850', '890', '13100', '5400', '79000', '63320', '1898', '0', '10', '4', 1, 1, '2018-12-28', '30'),
('B777', '74', '65', '19', 'CFMI CFM56-7B24/26', '175000', '320100', '905', '955', '13100', '11200', '317500', NULL, '375', '52', '5', '6', 1, 1, '2010-11-08', '30'),
('Boeing 737-800', '40', '34', '13', 'CFMI CFM56-7B24/26', NULL, '26020', '850', '890', '13100', '5400', '79000', '63320', '1898', '0', '10', '4', 1, 1, '2018-12-28', '30'),
('Boeing 777-300ER', '74', '65', '19', 'CFMI CFM56-7B24/26', '175000', '320100', '905', '955', '13100', '11200', '317500', NULL, '375', '52', '5', '6', 1, 1, '2010-11-08', '30'),
('E170', '30', '26', '10', 'GE CF34-8E', NULL, '11840', '890', '940', '11900', '3100', '35990', '32800', '78', '0', '5', '3', 1, 1, '2019-10-28', '25'),
('Embraer 170', '30', '26', '10', 'GE CF34-8E', NULL, '11840', '890', '940', '11900', '3100', '35990', '32800', '78', '0', '5', '3', 1, 1, '2019-10-28', '25'),
('S100', '30', '28', '10', 'Trent XWB', NULL, NULL, '910', '950', '12500', '3050', '42500', '39400', '95', '0', '5', '4', 1, 1, '2014-01-08', '25'),
('Sukhoi Superjet 100', '30', '28', '10', 'Trent XWB', NULL, NULL, '910', '950', '12500', '3050', '42500', '39400', '95', '0', '5', '4', 1, 1, '2014-01-08', '25');

-- --------------------------------------------------------

--
-- Структура таблицы `aircrafts`
--

DROP TABLE IF EXISTS `aircrafts`;
CREATE TABLE IF NOT EXISTS `aircrafts` (
  `ac_reg_number` varchar(20) NOT NULL,
  `ac_model` varchar(20) DEFAULT NULL,
  `ac_release_date` date DEFAULT NULL,
  `ac_count` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ac_reg_number`),
  KEY `ac_to_ch` (`ac_model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `aircrafts`
--

INSERT INTO `aircrafts` (`ac_reg_number`, `ac_model`, `ac_release_date`, `ac_count`) VALUES
('A319', 'Airbus A319', '2010-03-17', '3'),
('A321', 'Airbus A321-200', '2016-08-04', '7'),
('A330', 'Airbus A330-200', '2019-04-09', '4'),
('Airbus A319', 'A319', '2010-03-17', '3'),
('Airbus A321-200', 'A321', '2016-08-04', '7'),
('Airbus A330-200', 'A330', '2019-04-09', '4'),
('B737', 'Boeing 737-800', '2018-12-28', '1'),
('B777', 'Boeing 777-300ER', '2010-11-08', '2'),
('Boeing 737-800', 'B737', '2018-12-28', '1'),
('Boeing 777-300ER', 'B777', '2010-11-08', '2'),
('E170', 'Embraer 170', '2019-10-28', '10'),
('Embraer 170', 'E170', '2019-10-28', '10'),
('S100', 'Sukhoi Superjet 100', '2014-01-08', '3'),
('Sukhoi Superjet 100', 'S100', '2014-01-08', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `airports`
--

DROP TABLE IF EXISTS `airports`;
CREATE TABLE IF NOT EXISTS `airports` (
  `ap_code` char(3) NOT NULL,
  `ap_name` varchar(50) NOT NULL,
  `ap_country` char(3) NOT NULL,
  `ap_city` varchar(50) NOT NULL,
  `ap_phone` decimal(20,0) NOT NULL,
  `ap_email` varchar(50) NOT NULL,
  `ap_net_address` varchar(50) NOT NULL,
  PRIMARY KEY (`ap_code`),
  UNIQUE KEY `ap_email` (`ap_email`),
  UNIQUE KEY `ap_net_address` (`ap_net_address`),
  KEY `fk_ap_ct` (`ap_country`,`ap_city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `airports`
--

INSERT INTO `airports` (`ap_code`, `ap_name`, `ap_country`, `ap_city`, `ap_phone`, `ap_email`, `ap_net_address`) VALUES
('AAQ', 'Vityazevo', 'RUS', 'Anapa', '8613333233', 'info@anapa-airport.ru', 'http://www.anapa-airport.ru'),
('ABQ', 'Albuquerque International', 'USA', 'Washington', '15052447700', 'jechavez@cabq.gov', 'http://www.cabq.gov/airport/'),
('ADO', 'Andamooka', 'AUS', 'Andamooka', '886727007', 'peter@andamooka.au.com', 'http://www.andamookaopal.com.au'),
('BUD', 'Ferihegy', 'HUN', 'Budapest', '3612969696', 'info@bud.hu', 'http://www.bud.hu'),
('CAI', 'Cairo International', 'EGY', 'Cair', '8867270327', 'info@cairo-airport.com', 'http://www.cairo-airport.com/'),
('DME', 'Domodedovo', 'RUS', 'Moscow', '74959336666', 'pr@eastline.ru', 'http://www.domodedovo.ru'),
('MAD', 'Barajas', 'ESP', 'Madrid', '34902404704', 'http://barajas.com', 'http://www.manchesterairport.co.uk'),
('SOF', 'Sofia', 'BGR', 'Sofia', '35929372211', 'public@sofia-airport.bg', 'http://www.sofia-airport.bg'),
('SVX', 'Koltsovo International Airport', 'RUS', 'Ekaterinburg', '73432644202', 'info@koltsovo-airport.ru', 'http://www.koltsovo.ru'),
('TJM', 'Roschino', 'RUS', 'Tyumen', '3452496413', 'mail@tjm.aero', 'http://www.tjm.aero'),
('XRJ', 'Termini Rail Stn.', 'ITA', 'Rome', '56772644202', 'rome_rail_termini@ita.com', 'http://www.termini-stn.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `ct_country` char(3) NOT NULL,
  `ct_name` varchar(50) NOT NULL,
  PRIMARY KEY (`ct_country`,`ct_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`ct_country`, `ct_name`) VALUES
('AUS', 'Andamooka'),
('AUS', 'Kanberra'),
('BEL', 'Brussels'),
('BGR', 'Sofia'),
('BRA', 'Brasilia'),
('CHN', 'Pekin'),
('DEU', 'Berlin'),
('DMA', 'Roseau'),
('EGY', 'Cair'),
('ESP', 'Madrid'),
('GEO', 'Tbilisi'),
('GTM', 'Guatemala City'),
('HUN', 'Budapest'),
('IND', 'New Deli'),
('ITA', 'Rome'),
('KAZ', 'Nursultan'),
('KOR', 'Seoul'),
('RUS', 'Anapa'),
('RUS', 'Ekaterinburg'),
('RUS', 'Moscow'),
('RUS', 'Tyumen'),
('USA', 'Washington'),
('VEN', 'Caracas'),
('VNM', 'Hanoi');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `cn_code` char(3) NOT NULL,
  `cn_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cn_code`),
  UNIQUE KEY `cn_name` (`cn_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`cn_code`, `cn_name`) VALUES
('AUS', 'Australia'),
('BEL', 'Belgium'),
('BRA', 'Brazil'),
('BGR', 'Bulgaria'),
('CHN', 'China'),
('DMA', 'Dominica'),
('EGY', 'Egypt'),
('GEO', 'Georgia'),
('DEU', 'Germany'),
('GTM', 'Guatemala'),
('HUN', 'Hungary'),
('IND', 'India'),
('ITA', 'Italy'),
('KAZ', 'Kazakhstan'),
('KOR', 'Korea'),
('RUS', 'Russia'),
('ESP', 'Spain'),
('USA', 'United States'),
('VEN', 'Venezuela'),
('VNM', 'Vietnam');

-- --------------------------------------------------------

--
-- Структура таблицы `crew`
--

DROP TABLE IF EXISTS `crew`;
CREATE TABLE IF NOT EXISTS `crew` (
  `cr_person_ID` decimal(10,0) DEFAULT NULL,
  `cr_route_ID` varchar(10) DEFAULT NULL,
  `cr_date` datetime DEFAULT NULL,
  `cr_role` varchar(20) DEFAULT NULL,
  KEY `cr_to_emp` (`cr_person_ID`),
  KEY `cr_to_r` (`cr_route_ID`,`cr_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `crew`
--

INSERT INTO `crew` (`cr_person_ID`, `cr_route_ID`, `cr_date`, `cr_role`) VALUES
('1', 'MY 7963', '2021-12-12 08:10:00', 'pilot'),
('3', 'MY 7963', '2021-12-12 08:10:00', 'flight attendant'),
('6', 'MY 9307', '2021-12-02 17:40:00', 'pilot'),
('8', 'MY 9307', '2021-12-02 17:40:00', 'pilot'),
('9', 'MY 7963', '2021-12-12 08:10:00', 'pilot'),
('11', 'MY 9307', '2021-12-02 17:40:00', 'flight attendant'),
('12', 'MY 9307', '2021-12-02 17:40:00', 'flight attendant'),
('18', 'MY 8896', '2021-12-05 11:10:00', 'pilot'),
('19', 'MY 8896', '2021-12-05 11:10:00', 'flight attendant');

-- --------------------------------------------------------

--
-- Структура таблицы `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `doc_country` char(3) NOT NULL,
  `doc_type` varchar(25) NOT NULL,
  PRIMARY KEY (`doc_country`,`doc_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `documents`
--

INSERT INTO `documents` (`doc_country`, `doc_type`) VALUES
('AUS', 'passport'),
('BEL', 'identity card'),
('BGR', 'identity card'),
('BRA', 'identity card'),
('CHN', 'identity card'),
('DEU', 'identity card'),
('DMA', 'ID card'),
('EGY', 'identity card'),
('ESP', 'ID card'),
('GEO', 'identity card'),
('GTM', 'ID card'),
('HUN', 'identity card'),
('IND', 'aadhaar card'),
('ITA', 'ID card'),
('KAZ', 'identity card'),
('KOR', 'identity card'),
('RUS', 'passport'),
('USA', 'passport'),
('VEN', 'homeland card'),
('VNM', 'ID card');

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_ID` decimal(10,0) NOT NULL,
  `emp_surname` varchar(20) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `emp_country` char(3) NOT NULL,
  `emp_doctype` varchar(25) NOT NULL,
  `emp_docnum` varchar(25) NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_birthdate` date NOT NULL,
  `emp_phone` decimal(20,0) NOT NULL,
  `emp_airport` char(3) NOT NULL,
  `emp_position` varchar(20) NOT NULL,
  `emp_hours_all` decimal(20,0) DEFAULT NULL,
  `emp_hours_month` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`emp_ID`),
  UNIQUE KEY `unique_emp_doc` (`emp_country`,`emp_doctype`,`emp_docnum`),
  KEY `emp_to_ap` (`emp_airport`),
  KEY `emp_to_positions` (`emp_position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`emp_ID`, `emp_surname`, `emp_name`, `emp_country`, `emp_doctype`, `emp_docnum`, `emp_gender`, `emp_birthdate`, `emp_phone`, `emp_airport`, `emp_position`, `emp_hours_all`, `emp_hours_month`) VALUES
('1', 'Vasin', 'Nikolay', 'RUS', 'passport', '2117181433', 'm', '1999-05-30', '52731754427', 'ADO', 'pilot', '9803', '169'),
('2', 'Nasonov', 'Aleksey', 'RUS', 'passport', '1686071850', 'm', '1979-09-15', '74311522755', 'ABQ', 'IT Support Staff', '68466', '123'),
('3', 'Ivanova', 'Elena', 'RUS', 'passport', '692800233', 'f', '1982-03-12', '18217862288', 'DME', 'flight attendant', '7623', '149'),
('4', 'Miladze', 'Michail', 'RUS', 'passport', '868087875', 'm', '2005-06-12', '73315712565', 'BUD', 'instructor', '71040', '225'),
('5', 'Nelman', 'Peter', 'RUS', 'passport', '1131094707', 'f', '1995-02-10', '74254371831', 'BUD', 'meteorologist', '32989', '116'),
('6', 'Safonov', 'Ivan', 'RUS', 'passport', '664643039', 'm', '2001-08-04', '44837833723', 'XRJ', 'pilot', '55789', '54'),
('7', 'Garaev', 'Egor', 'RUS', 'passport', '186954129', 'm', '2004-03-07', '56473713673', 'SOF', 'instructor', '71137', '121'),
('8', 'Kyznetsov', 'Anton', 'RUS', 'passport', '1577235074', 'm', '1990-07-25', '23843351653', 'SVX', 'pilot', '69022', '510'),
('9', 'Petrova', 'Aleksandra', 'RUS', 'passport', '1734918176', 'f', '2004-10-28', '78847636752', 'DME', 'pilot', '26795', '207'),
('10', 'Voloshina', 'Darya', 'RUS', 'passport', '1703452172', 'f', '1999-04-07', '54367153258', 'BUD', 'IT Support Staff', '42151', '187'),
('11', 'Kotova', 'Sofiya', 'RUS', 'passport', '564526418', 'f', '2001-01-09', '66226476411', 'TJM', 'flight attendant', '9099', '293'),
('12', 'Luchkina', 'Marya', 'RUS', 'passport', '1337083691', 'f', '1998-06-16', '31612233617', 'ADO', 'flight attendant', '86766', '395'),
('13', 'Rogov', 'Artem', 'RUS', 'passport', '717211643', 'm', '2002-05-21', '73483135227', 'DME', 'general Director', '92841', '94'),
('14', 'Surova', 'Ekaterina', 'RUS', 'passport', '235332305', 'f', '2000-12-17', '51552374163', 'DME', 'loader', '50304', '522'),
('15', 'Zaysev', 'Aleksander', 'RUS', 'passport', '1988344885', 'm', '1992-05-27', '64123818254', 'MAD', 'mechanic', '88002', '33'),
('16', 'Samsonova', 'Rosa', 'RUS', 'passport', '872245452', 'f', '1986-10-24', '48261265734', 'ABQ', 'HR Specialist', '38349', '105'),
('17', 'Savin', 'Gleb', 'RUS', 'passport', '1058036857', 'm', '1996-03-18', '73837536761', 'DME', 'pilot', '89629', '113'),
('18', 'Fisher', 'Evgeniya', 'RUS', 'passport', '1357884236', 'f', '2001-07-19', '81376715432', 'CAI', 'web designer', '47015', '87'),
('19', 'Ryabova', 'Svetlana', 'RUS', 'passport', '975572291', 'f', '2000-11-16', '77635658115', 'DME', 'flight attendant', '14850', '39');

-- --------------------------------------------------------

--
-- Структура таблицы `flights`
--

DROP TABLE IF EXISTS `flights`;
CREATE TABLE IF NOT EXISTS `flights` (
  `f_num` varchar(10) NOT NULL,
  `f_datetime` datetime NOT NULL,
  `f_aircraft` varchar(20) NOT NULL,
  `f_departure_actual` datetime DEFAULT NULL,
  `f_arrival_actual` datetime DEFAULT NULL,
  `f_registration_start` datetime DEFAULT NULL,
  `f_boarding_start` datetime DEFAULT NULL,
  `f_gate` varchar(5) DEFAULT NULL,
  `f_status` varchar(10) NOT NULL,
  PRIMARY KEY (`f_num`,`f_datetime`),
  KEY `fk_f_ac` (`f_aircraft`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `flights`
--

INSERT INTO `flights` (`f_num`, `f_datetime`, `f_aircraft`, `f_departure_actual`, `f_arrival_actual`, `f_registration_start`, `f_boarding_start`, `f_gate`, `f_status`) VALUES
('MY 3670', '2021-12-02 21:10:00', 'B737', '2021-12-02 21:30:00', '2021-12-02 23:40:00', '2021-12-02 18:10:00', '2021-12-02 20:50:00', '13', 'upcoming'),
('MY 7963', '2021-12-12 08:10:00', 'B777', '2021-12-12 08:12:00', '2021-12-12 08:55:00', '2021-12-12 05:10:00', '2021-12-12 07:50:00', '10', 'upcoming'),
('MY 8896', '2021-12-05 11:10:00', 'S100', '2021-12-05 11:10:00', '2021-12-05 18:27:00', '2021-12-05 08:10:00', '2021-12-05 10:50:00', '8', 'upcoming'),
('MY 9307', '2021-12-02 17:40:00', 'A321', '2021-12-02 17:40:00', '2021-12-02 21:56:00', '2021-12-02 14:40:00', '2021-12-02 17:20:00', '5', 'upcoming'),
('MY 9993', '2021-12-12 02:00:00', 'E170', '2021-12-12 02:12:00', '2021-12-12 21:55:00', '2021-12-11 23:00:00', '2021-12-12 01:40:00', '1', 'upcoming');

-- --------------------------------------------------------

--
-- Структура таблицы `passengers`
--

DROP TABLE IF EXISTS `passengers`;
CREATE TABLE IF NOT EXISTS `passengers` (
  `psn_id` decimal(10,0) NOT NULL,
  `psn_first_name` varchar(50) NOT NULL,
  `psn_last_name` varchar(50) NOT NULL,
  `psn_country` char(3) NOT NULL,
  `psn_doctype` varchar(25) NOT NULL,
  `psn_docnum` varchar(25) NOT NULL,
  `psn_gender` char(1) NOT NULL,
  `psn_birthdate` date NOT NULL,
  `psn_phone` decimal(20,0) NOT NULL,
  `psn_email` varchar(50) NOT NULL,
  `psn_bonus_miles` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`psn_id`),
  UNIQUE KEY `unique_psn_doc` (`psn_country`,`psn_doctype`,`psn_docnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `passengers`
--

INSERT INTO `passengers` (`psn_id`, `psn_first_name`, `psn_last_name`, `psn_country`, `psn_doctype`, `psn_docnum`, `psn_gender`, `psn_birthdate`, `psn_phone`, `psn_email`, `psn_bonus_miles`) VALUES
('1', 'Ivan', 'Petrov', 'RUS', 'passport', '1234567890', 'm', '1999-05-30', '78005553535', 'ne_ivan_petrov@gmail.com', '123'),
('2', 'Julie', 'Turner', 'AUS', 'passport', '23213213213', 'f', '2005-06-12', '6451368367', 'julie_turner777@gmail.com', '0'),
('3', 'Maria', 'Peeters', 'BEL', 'identity card', '1748463736', 'f', '1969-12-01', '32765397832', 'justemail@gmail.com', '200'),
('4', 'Petar', 'Dimitrov', 'BGR', 'identity card', '4352132332', 'm', '1990-05-05', '35909873232', 'bulgarian_cool_guy@gmail.com', '956'),
('5', 'Ana', 'da Silva', 'BRA', 'identity card', '4727262865895', 'f', '1987-07-17', '55124569853', 'blm_4ever@gmail.com', '276'),
('6', 'Tibor', 'Kiss', 'HUN', 'identity card', '395871728829', 'm', '2007-02-28', '36548293794', 'superman001@gmail.com', '0'),
('7', 'Luz', 'Gonzales', 'VEN', 'homeland card', '328293218', 'f', '1999-05-09', '58963949023', 'not_usual_girl@gmail.com', '432'),
('8', 'Son', 'Vu', 'VNM', 'ID card', '324724823923', 'm', '1987-04-08', '84976752964', 'sonvu_the_best@gmail.com', '917'),
('9', 'Hulia', 'Lopez', 'GTM', 'ID card', '2349242939', 'f', '1996-06-19', '50296278436', '1_2_3_okay@gmail.com', '0'),
('10', 'Hanz', 'Zimmer', 'DEU', 'identity card', '32832183108', 'm', '1990-09-14', '49129580347', 'flugegeheimen@gmail.com', '929'),
('11', 'Giorgi', 'Beridze', 'GEO', 'identity card', '45345433423', 'm', '1999-11-12', '9955783915', 'georgian_giorgi@gmail.com', '50'),
('12', 'Paul', 'Williams', 'DMA', 'ID card', '90843273218', 'm', '1970-08-17', '173629579199', 'WannaBeYourOne@gmail.com', '123'),
('13', 'Heba', 'Ali', 'EGY', 'identity card', '26473878282', 'f', '1985-10-31', '20010012030', 'love_pyramids@gmail.com', '486'),
('14', 'Gita', 'Devi', 'IND', 'aadhaar card', '123412341234', 'f', '1997-07-07', '91238758291', 'the_saint_cow3@gmail.com', '0'),
('15', 'Maria', 'Perez', 'ESP', 'ID card', '23242342423', 'f', '1999-12-17', '34019749175', 'the_hottest_burrito@gmail.com', '120'),
('16', 'Francecka', 'Russo', 'ITA', 'ID card', '8432843282', 'f', '1990-09-14', '39786935710', '1pizza_please@gmail.com', '0'),
('17', 'Aigul', 'Toktarova', 'KAZ', 'identity card', '2647194021', 'f', '1995-05-18', '77086557652', 'oi_boi@gmail.com', '935'),
('18', 'Li', 'Chen', 'CHN', 'identity card', '3291382181', 'm', '1979-09-15', '86713701921', 'sushimaker01@gmail.com', '101'),
('19', 'Ha Yun', 'Cho', 'KOR', 'identity card', '23843243291', 'f', '1991-11-04', '82935679312', 'squid_game@gmail.com', '0'),
('20', 'John', 'Nolan', 'USA', 'passport', '38218317171', 'm', '1980-07-10', '16557891234', 'policeman_white@gmail.com', '895');

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

DROP TABLE IF EXISTS `positions`;
CREATE TABLE IF NOT EXISTS `positions` (
  `pst_name` varchar(20) NOT NULL,
  `pst_salary` decimal(10,0) DEFAULT NULL,
  `pst_prepay` decimal(10,0) DEFAULT NULL,
  `pst_schedule` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pst_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`pst_name`, `pst_salary`, `pst_prepay`, `pst_schedule`) VALUES
('accountants', '150000', '60000', 'five-day work week'),
('cashier', '50000', '20000', 'changeable mode'),
('customs officer', '70000', '28000', 'shift work'),
('driver', '100000', '40000', 'fixed time'),
('flight attendant', '130000', '52000', 'shift work'),
('general Director', '330000', '132000', 'five-day work week'),
('HR Specialist', '50000', '20000', 'remote work'),
('instructor', '100000', '40000', 'fixed time'),
('IT Support Staff', '100000', '40000', 'five-day work week'),
('loader', '50000', '20000', 'fixed time'),
('master', '130000', '52000', 'changeable mode'),
('mechanic', '140000', '52000', 'changeable mode'),
('meteorologist', '140000', '52000', 'five-day work week'),
('pilot', '200000', '80000', 'shift work'),
('secretary', '90000', '36000', 'five-day work week'),
('traffic controller', '90000', '36000', 'changeable mode'),
('web designer', '80000', '32000', 'remote work');

-- --------------------------------------------------------

--
-- Структура таблицы `routes`
--

DROP TABLE IF EXISTS `routes`;
CREATE TABLE IF NOT EXISTS `routes` (
  `r_num` varchar(10) NOT NULL,
  `r_departure_ap` char(3) NOT NULL,
  `r_destination_ap` char(3) NOT NULL,
  `r_departure_time` time NOT NULL,
  `r_arrival_time` time NOT NULL,
  `r_distance` decimal(10,0) NOT NULL,
  PRIMARY KEY (`r_num`),
  KEY `fk_r_ac_dep` (`r_departure_ap`),
  KEY `fk_r_ac_dst` (`r_destination_ap`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `routes`
--

INSERT INTO `routes` (`r_num`, `r_departure_ap`, `r_destination_ap`, `r_departure_time`, `r_arrival_time`, `r_distance`) VALUES
('MY 1225', 'SVX', 'DME', '20:40:00', '23:56:40', '5193'),
('MY 2053', 'ADO', 'DME', '11:20:00', '13:16:40', '2391'),
('MY 3293', 'DME', 'BUD', '03:50:00', '09:26:40', '5395'),
('MY 3670', 'XRJ', 'DME', '21:10:00', '23:26:40', '3642'),
('MY 4893', 'DME', 'TJM', '04:20:00', '07:26:40', '3987'),
('MY 5493', 'AAQ', 'SVX', '14:10:00', '18:26:40', '6698'),
('MY 5693', 'ADO', 'MAD', '12:30:00', '13:56:10', '1698'),
('MY 6903', 'DME', 'AAQ', '12:10:00', '17:26:40', '4898'),
('MY 7963', 'BUD', 'SOF', '08:10:00', '08:57:40', '965'),
('MY 8893', 'SVX', 'AAQ', '00:10:00', '03:26:40', '3699'),
('MY 8896', 'DME', 'AAQ', '11:10:00', '18:26:40', '9199'),
('MY 9307', 'AAQ', 'DME', '17:40:00', '21:55:40', '7698'),
('MY 9993', 'DME', 'MAD', '02:00:00', '03:26:40', '1198');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `t_price` decimal(6,0) NOT NULL,
  `t_class` char(1) NOT NULL,
  `t_luggage` decimal(3,0) NOT NULL,
  `t_seat` varchar(4) DEFAULT NULL,
  `t_flight_num` varchar(10) NOT NULL,
  `t_flight_datetime` datetime NOT NULL,
  `t_psn_id` decimal(10,0) DEFAULT NULL,
  `t_psn_booking` varchar(20) DEFAULT NULL,
  KEY `fk_t_f` (`t_flight_num`,`t_flight_datetime`),
  KEY `fk_t_psn` (`t_psn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`t_price`, `t_class`, `t_luggage`, `t_seat`, `t_flight_num`, `t_flight_datetime`, `t_psn_id`, `t_psn_booking`) VALUES
('7526', 'e', '1', '18C', 'MY 7963', '2021-12-12 08:10:00', '1', 'EKT2166458965815/5'),
('7526', 'e', '0', '17D', 'MY 7963', '2021-12-12 08:10:00', '2', 'EKT0166469765815/3'),
('7526', 'e', '1', '15A', 'MY 7963', '2021-12-12 08:10:00', '3', 'EHT2166454765848/4'),
('7526', 'e', '0', '13B', 'MY 7963', '2021-12-12 08:10:00', '4', 'KTA5896458965574/1'),
('20457', 'b', '1', '1A', 'MY 3670', '2021-12-02 21:10:00', '5', 'BN127125476557/3'),
('20457', 'b', '1', '1B', 'MY 3670', '2021-12-02 21:10:00', '6', 'BN121175476575/2'),
('15638', 'b', '1', '3C', 'MY 3670', '2021-12-02 21:10:00', '7', 'BN127125455558/8'),
('20496', 'b', '1', '4F', 'MY 3670', '2021-12-02 21:10:00', '8', 'BN121166476955/9'),
('7496', 'e', '0', '15A', 'MY 9993', '2021-12-12 02:00:00', '9', 'PE121586853973/7'),
('9888', 'e', '0', '16F', 'MY 9993', '2021-12-12 02:00:00', '10', 'PE141589959805/6'),
('9858', 'e', '0', '20D', 'MY 9993', '2021-12-12 02:00:00', '11', 'PE121589953975/1'),
('9999', 'e', '1', '26F', 'MY 9993', '2021-12-12 02:00:00', '12', 'PE141589557975/7'),
('4589', 'e', '1', '17A', 'MY 9993', '2021-12-12 02:00:00', '13', 'PE131587653975/3'),
('2368', 'e', '0', '13F', 'MY 9307', '2021-12-02 17:40:00', '14', 'E12354697249/3'),
('2459', 'e', '0', '6A', 'MY 9307', '2021-12-02 17:40:00', '15', 'E24578554126/5'),
('2478', 'e', '0', '19D', 'MY 9307', '2021-12-02 17:40:00', '16', 'E12365497147/8'),
('2459', 'e', '0', '4F', 'MY 9307', '2021-12-02 17:40:00', '17', 'E12497558246/6'),
('4647', 'e', '0', '17D', 'MY 8896', '2021-12-05 11:10:00', '18', 'BM348654548985/6'),
('5979', 'e', '1', '13A', 'MY 8896', '2021-12-05 11:10:00', '19', 'BM578654694757/1'),
('8647', 'b', '1', '1C', 'MY 8896', '2021-12-05 11:10:00', '20', 'BM748477478888/9');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD CONSTRAINT `ac_to_ch` FOREIGN KEY (`ac_model`) REFERENCES `ac_characteristics` (`ch_model`);

--
-- Ограничения внешнего ключа таблицы `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `fk_ap_ct` FOREIGN KEY (`ap_country`,`ap_city`) REFERENCES `cities` (`ct_country`, `ct_name`);

--
-- Ограничения внешнего ключа таблицы `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `fk_ct_cn` FOREIGN KEY (`ct_country`) REFERENCES `countries` (`cn_code`);

--
-- Ограничения внешнего ключа таблицы `crew`
--
ALTER TABLE `crew`
  ADD CONSTRAINT `cr_to_emp` FOREIGN KEY (`cr_person_ID`) REFERENCES `employees` (`emp_ID`),
  ADD CONSTRAINT `cr_to_r` FOREIGN KEY (`cr_route_ID`,`cr_date`) REFERENCES `flights` (`f_num`, `f_datetime`);

--
-- Ограничения внешнего ключа таблицы `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_doc_cn` FOREIGN KEY (`doc_country`) REFERENCES `countries` (`cn_code`);

--
-- Ограничения внешнего ключа таблицы `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `emp_to_ap` FOREIGN KEY (`emp_airport`) REFERENCES `airports` (`ap_code`),
  ADD CONSTRAINT `emp_to_documents` FOREIGN KEY (`emp_country`,`emp_doctype`) REFERENCES `documents` (`doc_country`, `doc_type`),
  ADD CONSTRAINT `emp_to_positions` FOREIGN KEY (`emp_position`) REFERENCES `positions` (`pst_name`);

--
-- Ограничения внешнего ключа таблицы `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `fk_f_ac` FOREIGN KEY (`f_aircraft`) REFERENCES `aircrafts` (`ac_reg_number`),
  ADD CONSTRAINT `fk_f_r` FOREIGN KEY (`f_num`) REFERENCES `routes` (`r_num`);

--
-- Ограничения внешнего ключа таблицы `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `fk_psn_doc` FOREIGN KEY (`psn_country`,`psn_doctype`) REFERENCES `documents` (`doc_country`, `doc_type`);

--
-- Ограничения внешнего ключа таблицы `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `fk_r_ac_dep` FOREIGN KEY (`r_departure_ap`) REFERENCES `airports` (`ap_code`),
  ADD CONSTRAINT `fk_r_ac_dst` FOREIGN KEY (`r_destination_ap`) REFERENCES `airports` (`ap_code`);

--
-- Ограничения внешнего ключа таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `fk_t_f` FOREIGN KEY (`t_flight_num`,`t_flight_datetime`) REFERENCES `flights` (`f_num`, `f_datetime`),
  ADD CONSTRAINT `fk_t_psn` FOREIGN KEY (`t_psn_id`) REFERENCES `passengers` (`psn_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
