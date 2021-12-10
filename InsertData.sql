/* Страны */
INSERT countries(cn_code, cn_name)
VALUES
( 'RUS','Russia'),
('AUS','Australia'),
('BEL','Belgium'),
('BGR','Bulgaria'),
('BRA','Brazil'),
('HUN','Hungary'),
('VEN','Venezuela'),
('VNM','Vietnam'),
('GTM','Guatemala'),
('DEU','Germany'),
('GEO','Georgia'),
('DMA','Dominica'),
('EGY','Egypt'),
('IND','India'),
('ESP','Spain'),
('ITA','Italy'),
('KAZ','Kazakhstan'),
('CHN','China'),
('KOR','Korea'),
('USA','United States');

/* Города */
INSERT cities(ct_country, ct_name)
VALUES
('RUS','Moscow'),
('RUS','Tyumen'),
('RUS','Anapa'),
('RUS','Ekaterinburg'),
('AUS','Kanberra'),
('AUS','Andamooka'),
('BEL','Brussels'),
('BGR','Sofia'),
('BRA','Brasilia'),
('HUN','Budapest'),
('VEN','Caracas'),
('VNM','Hanoi'),
('GTM','Guatemala City'),
('DEU','Berlin'),
('GEO','Tbilisi'),
('DMA','Roseau'),
('EGY','Cair'),
('IND','New Deli'),
('ESP','Madrid'),
('ITA','Rome'),
('KAZ','Nursultan'),
('CHN','Pekin'),
('KOR','Seoul'),
('USA','Washington');

/* Документы */
INSERT documents(doc_country, doc_type)
VALUES
('RUS','passport'),
('AUS','passport'),
('BEL','identity card'),
('BGR','identity card'),
('BRA','identity card'),
('HUN','identity card'),
('VEN','homeland card'),
('VNM','ID card'),
('GTM','ID card'),
('DEU','identity card'),
('GEO','identity card'),
('DMA','ID card'),
('EGY','identity card'),
('IND','aadhaar card'),
('ESP','ID card'),
('ITA','ID card'),
('KAZ','identity card'),
('CHN','identity card'),
('KOR','identity card'),
('USA','passport');


/* Пассажиры */
INSERT passengers(psn_id, psn_first_name, psn_last_name, psn_country, psn_doctype, psn_docnum, psn_gender, psn_birthdate, psn_email, psn_phone, psn_bonus_miles)
VALUES
('1','Ivan','Petrov','RUS','passport','1234567890', 'm', '1999-05-30','ne_ivan_petrov@gmail.com','78005553535','123'),
('2','Julie','Turner','AUS','passport','23213213213','f','2005-06-12','julie_turner777@gmail.com','6451368367','0'),
('3','Maria','Peeters','BEL','identity card','1748463736','f','1969-12-01','justemail@gmail.com','32765397832','200'),
('4','Petar','Dimitrov','BGR','identity card','4352132332','m','1990-05-05','bulgarian_cool_guy@gmail.com','35909873232','956'),
('5','Ana','da Silva','BRA','identity card','4727262865895','f','1987-07-17','blm_4ever@gmail.com','55124569853','276'),
('6','Tibor','Kiss','HUN','identity card','395871728829','m','2007-02-28','superman001@gmail.com','36548293794','0'),
('7','Luz','Gonzales','VEN','homeland card','328293218','f','1999-05-09','not_usual_girl@gmail.com','58963949023','432'),
('8','Son','Vu','VNM','ID card','324724823923','m','1987-04-08','sonvu_the_best@gmail.com','84976752964','917'),
('9','Hulia','Lopez','GTM','ID card','2349242939','f','1996-06-19','1_2_3_okay@gmail.com','50296278436','0'),
('10','Hanz','Zimmer','DEU','identity card','32832183108','m','1990-09-14','flugegeheimen@gmail.com','49129580347','929'),
('11','Giorgi','Beridze','GEO','identity card','45345433423','m','1999-11-12','georgian_giorgi@gmail.com','9955783915','50'),
('12','Paul','Williams','DMA','ID card','90843273218','m','1970-08-17','WannaBeYourOne@gmail.com','173629579199','123'),
('13','Heba','Ali','EGY','identity card','26473878282','f','1985-10-31','love_pyramids@gmail.com','20010012030','486'),
('14','Gita','Devi','IND','aadhaar card','123412341234','f','1997-07-07','the_saint_cow3@gmail.com','91238758291','0'),
('15','Maria','Perez','ESP','ID card','23242342423','f','1999-12-17','the_hottest_burrito@gmail.com','34019749175','120'),
('16','Francecka','Russo','ITA','ID card','8432843282','f','1990-09-14','1pizza_please@gmail.com','39786935710','0'),
('17','Aigul','Toktarova','KAZ','identity card','2647194021','f','1995-05-18','oi_boi@gmail.com','77086557652','935'),
('18','Li','Chen','CHN','identity card','3291382181','m','1979-09-15','sushimaker01@gmail.com','86713701921','101'),
('19','Ha Yun','Cho','KOR','identity card','23843243291','f','1991-11-04','squid_game@gmail.com','82935679312','0'),
('20','John','Nolan','USA','passport','38218317171','m','1980-07-10','policeman_white@gmail.com','16557891234','895');

/* Билеты */
INSERT tickets (t_price, t_class, t_luggage, t_seat, t_flight_num, t_flight_datetime, t_psn_id, t_psn_booking)
VALUES 
(7526, 'e', 1, '18C', 'MY 7963', '2021-12-12 08:10:00', 1, 'EKT2166458965815/5'),
(7526, 'e', 0, '17D', 'MY 7963', '2021-12-12 08:10:00', 2, 'EKT0166469765815/3'),
(7526, 'e', 1, '15A', 'MY 7963', '2021-12-12 08:10:00', 3, 'EHT2166454765848/4'),
(7526, 'e', 0, '13B', 'MY 7963', '2021-12-12 08:10:00', 4, 'KTA5896458965574/1'),
(20457, 'b', 1, '1A', 'MY 3670', '2021-12-02 21:10:00', 5, 'BN127125476557/3'),
(20457, 'b', 1, '1B', 'MY 3670', '2021-12-02 21:10:00', 6, 'BN121175476575/2'),
(15638, 'b', 1, '3C', 'MY 3670', '2021-12-02 21:10:00', 7, 'BN127125455558/8'),
(20496, 'b', 1, '4F', 'MY 3670', '2021-12-02 21:10:00', 8, 'BN121166476955/9'),
(7496, 'e', 0, '15A', 'MY 9993', '2021-12-12 02:00:00', 9, 'PE121586853973/7'),
(9888, 'e', 0, '16F', 'MY 9993', '2021-12-12 02:00:00', 10, 'PE141589959805/6'),
(9858, 'e', 0, '20D', 'MY 9993', '2021-12-12 02:00:00', 11, 'PE121589953975/1'),
(9999, 'e', 1, '26F', 'MY 9993', '2021-12-12 02:00:00', 12, 'PE141589557975/7'),
(4589, 'e', 1, '17A', 'MY 9993', '2021-12-12 02:00:00', 13, 'PE131587653975/3'),
(2368, 'e', 0, '13F', 'MY 9307', '2021-12-02 17:40:00', 14, 'E12354697249/3'),
(2459, 'e', 0, '6A', 'MY 9307', '2021-12-02 17:40:00', 15, 'E24578554126/5'),
(2478, 'e', 0, '19D', 'MY 9307', '2021-12-02 17:40:00', 16, 'E12365497147/8'),
(2459, 'e', 0, '4F', 'MY 9307', '2021-12-02 17:40:00', 17, 'E12497558246/6'),
(4647, 'e', 0, '17D', 'MY 8896', '2021-12-05 11:10:00', 18, 'BM348654548985/6'),
(5979, 'e', 1, '13A', 'MY 8896', '2021-12-05 11:10:00', 19, 'BM578654694757/1'),
(8647, 'b', 1, '1C', 'MY 8896', '2021-12-05 11:10:00', 20, 'BM748477478888/9');

/* Рейсы */
INSERT flights (f_num, f_datetime, f_aircraft, f_departure_actual, f_arrival_actual, f_registration_start, f_boarding_start, f_gate, f_status)
VALUES 
('MY 7963', '2021-12-12 08:10:00', 'B777', '2021-12-12 08:12:00', '2021-12-12 08:55:00', '2021-12-12 05:10:00', '2021-12-12 07:50:00', '10', 'upcoming'), 
('MY 8896', '2021-12-05 11:10:00', 'S100', '2021-12-05 11:10:00', '2021-12-05 18:27:00', '2021-12-05 08:10:00', '2021-12-05 10:50:00', '8', 'upcoming'), 
('MY 9307', '2021-12-02 17:40:00', 'A321', '2021-12-02 17:40:00', '2021-12-02 21:56:00', '2021-12-02 14:40:00', '2021-12-02 17:20:00', '5', 'upcoming'), 
('MY 3670', '2021-12-02 21:10:00', 'B737', '2021-12-02 21:30:00', '2021-12-02 23:40:00', '2021-12-02 18:10:00', '2021-12-02 20:50:00', '13', 'upcoming'), 
('MY 9993', '2021-12-12 02:00:00', 'E170', '2021-12-12 02:12:00', '2021-12-12 21:55:00', '2021-12-11 23:00:00', '2021-12-12 01:40:00', '1', 'upcoming');

/* Маршруты */
INSERT routes (r_num, r_departure_ap, r_destination_ap, r_departure_time, r_arrival_time, r_distance) VALUES
('MY 8893','SVX','AAQ','00:10:00','03:26:40',3699),
('MY 5493','AAQ','SVX','14:10:00','18:26:40',6698),
('MY 8896','DME','AAQ','11:10:00','18:26:40',9199),
('MY 5693','ADO','MAD','12:30:00','13:56:10',1698),
('MY 4893','DME','TJM','04:20:00','07:26:40',3987),
('MY 7963','BUD','SOF','08:10:00','08:57:40',965),
('MY 6903','DME','AAQ','12:10:00','17:26:40',4898),
('MY 3293','DME','BUD','03:50:00','09:26:40',5395),
('MY 9993','DME','MAD','02:00:00','03:26:40',1198),
('MY 3670','XRJ','DME','21:10:00','23:26:40',3642),
('MY 1225','SVX','DME','20:40:00','23:56:40',5193),
('MY 9307','AAQ','DME','17:40:00','21:55:40',7698),
('MY 2053','ADO','DME','11:20:00','13:16:40',2391);

/* Аэропорты */
INSERT airports (ap_code, ap_name, ap_country, ap_city, ap_phone, ap_email, ap_net_address) VALUES
('SVX','Koltsovo International Airport','RUS','Ekaterinburg','73432644202', 'info@koltsovo-airport.ru','http://www.koltsovo.ru'),
('AAQ','Vityazevo','RUS','Anapa','8613333233','info@anapa-airport.ru','http://www.anapa-airport.ru'),
('ABQ','Albuquerque International','USA','Washington','15052447700','jechavez@cabq.gov','http://www.cabq.gov/airport/'),
('ADO','Andamooka','AUS','Andamooka','886727007','peter@andamooka.au.com','http://www.andamookaopal.com.au'),
('MAD','Barajas','ESP','Madrid','0034902404704','http://barajas.com','http://www.manchesterairport.co.uk'),
('XRJ','Termini Rail Stn.','ITA','Rome','56772644202','rome_rail_termini@ita.com','http://www.termini-stn.ru'),
('SOF','Sofia','BGR','Sofia','35929372211','public@sofia-airport.bg','http://www.sofia-airport.bg'),
('TJM','Roschino','RUS','Tyumen','3452496413','mail@tjm.aero','http://www.tjm.aero'),
('CAI','Cairo International','EGY','Cair','8867270327','info@cairo-airport.com','http://www.cairo-airport.com/'),
('BUD','Ferihegy','HUN','Budapest','3612969696','info@bud.hu','http://www.bud.hu'),
('DME','Domodedovo','RUS','Moscow','74959336666','pr@eastline.ru','http://www.domodedovo.ru');

/* Сотрудники */
INSERT employees (emp_ID, emp_surname, emp_name, emp_country, emp_doctype, emp_docnum, emp_gender, emp_birthdate, emp_phone, emp_airport, emp_position, emp_hours_all, emp_hours_month) VALUES
(1,'Vasin','Nikolay','RUS','passport','2117181433','m','1999-05-30','52731754427','ADO','pilot',9803,169),
(2,'Nasonov','Aleksey','RUS','passport','1686071850','m', '1979-09-15','74311522755','ABQ','IT Support Staff',68466,123),
(3,'Ivanova','Elena','RUS','passport','692800233','f', '1982-03-12','18217862288','DME','flight attendant',7623,149),
(4,'Miladze','Michail','RUS','passport','868087875','m','2005-06-12','73315712565','BUD','instructor',71040,225),
(5,'Nelman','Peter','RUS','passport','1131094707','f','1995-02-10','74254371831', 'BUD','meteorologist',32989,116),
(6,'Safonov','Ivan','RUS','passport','664643039','m','2001-08-04','44837833723','XRJ','pilot',55789,54),
(7,'Garaev','Egor','RUS','passport','186954129','m','2004-03-07','56473713673','SOF','instructor',71137,121),
(8,'Kyznetsov','Anton','RUS','passport','1577235074','m','1990-07-25','23843351653','SVX','pilot',69022,510),
(9,'Petrova','Aleksandra','RUS','passport','1734918176','f','2004-10-28','78847636752','DME','pilot',26795,207),
(10,'Voloshina','Darya','RUS','passport','1703452172','f','1999-04-07','54367153258','BUD','IT Support Staff',42151,187),
(11,'Kotova','Sofiya','RUS','passport','564526418','f','2001-01-09','66226476411','TJM','flight attendant',9099,293),
(12,'Luchkina','Marya','RUS','passport','1337083691','f','1998-06-16','31612233617','ADO','flight attendant',86766,395),
(13,'Rogov','Artem','RUS','passport','717211643','m','2002-05-21','73483135227','DME','general Director',92841,94),
(14,'Surova','Ekaterina','RUS','passport','235332305','f','2000-12-17','51552374163','DME','loader',50304,522),
(15,'Zaysev','Aleksander','RUS','passport','1988344885','m','1992-05-27','64123818254','MAD','mechanic',88002,33),
(16,'Samsonova','Rosa','RUS','passport','872245452','f','1986-10-24','48261265734','ABQ','HR Specialist',38349,105),
(17,'Savin','Gleb','RUS','passport','1058036857','m','1996-03-18','73837536761','DME','pilot',89629,113),
(18,'Fisher','Evgeniya','RUS','passport','1357884236','f','2001-07-19','81376715432','CAI','web designer',47015,87),
(19,'Ryabova','Svetlana','RUS','passport','975572291','f','2000-11-16','77635658115','DME','flight attendant',14850,39);

/* Должности */
INSERT positions (pst_name, pst_salary, pst_prepay, pst_schedule) VALUES
('flight attendant',130000,52000,'shift work'),
('traffic controller',90000, 36000,'changeable mode'),
('pilot',200000, 80000,'shift work'),
('IT Support Staff',100000,40000,'five-day work week'),
('mechanic',140000,52000,'changeable mode'),
('accountants',150000,60000,'five-day work week'),
('general Director',330000,132000,'five-day work week'),
('master',130000,52000,'changeable mode'),
('instructor',100000,40000,'fixed time'),
('secretary',90000,36000,'five-day work week'),
('cashier',50000,20000,'changeable mode'),
('driver',100000,40000,'fixed time'),
('meteorologist',140000,52000,'five-day work week'),
('customs officer',70000,28000,'shift work'),
('loader', 50000,20000,'fixed time'),
('HR Specialist',50000,20000,'remote work'),
('web designer',80000,32000,'remote work');

/* Члены экипажа */
INSERT crew (cr_person_ID, cr_route_ID, cr_date, cr_role)
VALUES 
(1,'MY 7963','2021-12-12 08:10:00','pilot'),
(3,'MY 7963','2021-12-12 08:10:00','flight attendant'),
(6,'MY 9307','2021-12-02 17:40:00','pilot'),
(8,'MY 9307','2021-12-02 17:40:00','pilot'),
(9,'MY 7963','2021-12-12 08:10:00','pilot'),
(11,'MY 9307','2021-12-02 17:40:00','flight attendant'),
(12,'MY 9307','2021-12-02 17:40:00','flight attendant'),
(18,'MY 8896','2021-12-05 11:10:00','pilot'),
(19,'MY 8896','2021-12-05 11:10:00','flight attendant');

/* Самолеты */
/* ДОБАВЛЕНО ПОЛЕ КОЛ ВО САМОЛЕТОВ ДАННОЙ МОДЕЛИ */
INSERT aircrafts (ac_reg_number, ac_model, ac_release_date, ac_count) VALUES
('B777','Boeing 777-300ER', '2010-11-08',2), ('S100','Sukhoi Superjet 100', '2014-01-08',3),('B737','Boeing 737-800', '2018-12-28',1),('A330','Airbus A330-200', '2019-04-09',4),('A321','Airbus A321-200', '2016-08-04',7),('E170','Embraer 170', '2019-10-28',10),('A319','Airbus A319', '2010-03-17',3);

/* Технические характеристики */
INSERT ac_characteristics (ch_model, ch_length, ch_wingspan, ch_heigth, ch_engine_type, ch_engine_power, ch_fuel_capacity, ch_cruise_speed, ch_max_speed, ch_max_altitude, ch_max_range, ch_max_takeoff_weight, ch_max_landing_weight, ch_econom_seats_amount, ch_business_seats_amount, ch_crew_seats_amount, ch_cabin_width, ch_luggage_compartments, ch_rescue_equipment, ch_release_date, ch_recommended_lifetime)
VALUES
('Boeing 777-300ER',73.9,64.8,18.7,'CFMI CFM56-7B24/26',175000,320100,905,955,13100,11200,317500,NULL,375,52,5,6.2,1,1,'2010-11-08',30),
('Sukhoi Superjet 100',29.8,27.8,10.3,'Trent XWB',NULL,NULL,910,950,12500,3050,42500,39400,95,0,5,3.54,1,1,'2014-01-08',25),
('Boeing 737-800',39.5,34.3,12.5,'CFMI CFM56-7B24/26',NULL,26020,850,890,13100,5400,79000,63320,1898,0,10,3.54,1,1,'2018-12-28',30),
('Airbus A330-200',59,60.3,17.9,'P&W PW4168A',NULL,00,870,910,12500,12100,230000,182000,271,22,5,5.28,1,1,'2019-04-09',20),
('Airbus A321-200',44.5,35.8,11.8,'IAE V2500-A5',NULL,30030,840,890,11900,5900,93500,77800,167,18,5,3.7,1,1,'2016-08-04',25),
('Embraer 170',29.9,26,9.8,'GE CF34-8E',NULL,11840,890,940,11900,3100,35990,32800,78,0,5,2.74,1,1,'2019-10-28',25),
('Airbus A319',33.8,34.1,11.8,'CFMI CFM56-5A/5B',NULL,23860,820,890,11900,5900,64000,61000,112,12,5,3.7,1,1,'2010-03-17',20);


/*Проверка*/

select * from passengers;
select emp_surname from employees;
select ac_model from aircrafts;
select * from routes where r_distance > 2000;
select * from crew;
