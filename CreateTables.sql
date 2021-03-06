/*Страны*/
CREATE TABLE countries (
	cn_code CHAR(3) PRIMARY KEY,
	cn_name VARCHAR(50) NOT NULL UNIQUE
);

/*Города*/
CREATE TABLE cities (
	ct_country CHAR(3),
	ct_name VARCHAR(50),
	CONSTRAINT pk_ct PRIMARY KEY(ct_country, ct_name),
	CONSTRAINT fk_ct_cn FOREIGN KEY(ct_country) REFERENCES countries(cn_code)
);

/*Документы*/
CREATE TABLE documents (
	doc_country CHAR(3),
	doc_type VARCHAR(25),
	CONSTRAINT pk_doc PRIMARY KEY(doc_country, doc_type),
	CONSTRAINT fk_doc_cn FOREIGN KEY(doc_country) REFERENCES countries(cn_code)
);

/*Пассажиры*/
CREATE TABLE passengers (
	psn_id NUMERIC(10) PRIMARY KEY,
	psn_first_name VARCHAR(50) NOT NULL,
	psn_last_name VARCHAR(50) NOT NULL,
	psn_country CHAR(3) NOT NULL,
	psn_doctype VARCHAR(25) NOT NULL,
	psn_docnum VARCHAR(25) NOT NULL,
	psn_gender CHAR(1) NOT NULL,
	psn_birthdate DATE NOT NULL,
	psn_phone NUMERIC(20) NOT NULL,
	psn_email VARCHAR(50) NOT NULL,
	psn_bonus_miles NUMERIC(5),
	CONSTRAINT unique_psn_doc UNIQUE(psn_country, psn_doctype, psn_docnum),
	CONSTRAINT check_psn_gender CHECK(psn_gender = 'f' OR psn_gender = 'm'),
	CONSTRAINT fk_psn_doc FOREIGN KEY(psn_country, psn_doctype) REFERENCES documents(doc_country, doc_type)
);


/*Билеты*/
CREATE TABLE tickets (
	t_price NUMERIC(6) NOT NULL,
	t_class CHAR(1) NOT NULL,
	t_luggage NUMERIC(3) NOT NULL,
	t_seat VARCHAR(4),
	t_flight_num VARCHAR(10) NOT NULL,
	t_flight_datetime DATETIME NOT NULL,
	t_psn_id NUMERIC(10),
	t_psn_booking VARCHAR(20),
	CONSTRAINT check_t_class CHECK(t_class = 'e' OR t_class = 'b'),
	CONSTRAINT fk_t_f FOREIGN KEY(t_flight_num, t_flight_datetime) REFERENCES flights(f_num, f_datetime),
	CONSTRAINT fk_t_psn FOREIGN KEY(t_psn_id) REFERENCES passengers(psn_id)
);

/*Рейсы*/
CREATE TABLE flights (
f_num VARCHAR(10),
f_datetime DATETIME,
f_aircraft VARCHAR(20) NOT NULL,
f_departure_actual DATE,
f_arrival_actual DATE,
f_registration_start DATE,
f_boarding_start DATE,
f_gate VARCHAR(5),
f_status VARCHAR(10) NOT NULL,
CONSTRAINT pk_f PRIMARY KEY(f_num, f_datetime),
CONSTRAINT check_f_status CHECK(f_status IN ('upcoming', 'registration', 'boarding', 'departed', 'arrived', 'cancelled')),
CONSTRAINT fk_f_r FOREIGN KEY(f_num) REFERENCES routes(r_num),
CONSTRAINT fk_f_ac FOREIGN KEY(f_aircraft) REFERENCES aircrafts(ac_reg_number)
);

/*Маршруты*/
CREATE TABLE routes (
r_num VARCHAR(10) PRIMARY KEY,
r_departure_ap CHAR(3) NOT NULL,
r_destination_ap CHAR(3) NOT NULL,
r_departure_time TIME NOT NULL,
r_arrival_time TIME NOT NULL,
r_distance NUMERIC(10) NOT NULL,
CONSTRAINT fk_r_ac_dep FOREIGN KEY(r_departure_ap) REFERENCES airports(ap_code),
CONSTRAINT fk_r_ac_dst FOREIGN KEY(r_destination_ap) REFERENCES airports(ap_code),
CONSTRAINT check_r CHECK(r_departure_ap <> r_destination_ap)
);

/*Аэропорты*/
CREATE TABLE airports (
ap_code CHAR(3) PRIMARY KEY,
ap_name VARCHAR(50) NOT NULL,
ap_country CHAR(3) NOT NULL,
ap_city VARCHAR(50) NOT NULL,
ap_phone NUMERIC(20) NOT NULL,
ap_email VARCHAR(50) NOT NULL UNIQUE,
ap_net_address VARCHAR(50) NOT NULL UNIQUE,
CONSTRAINT fk_ap_ct FOREIGN KEY(ap_country, ap_city) references cities(ct_country, ct_name)
);

/*Сотрудники*/
CREATE TABLE employees (
	emp_ID NUMERIC(10) PRIMARY KEY,
	emp_surname  VARCHAR(20) NOT NULL,
	emp_name  VARCHAR(20) NOT NULL,
	emp_country CHAR(3) NOT NULL,
	emp_doctype VARCHAR(25) NOT NULL,
	emp_docnum VARCHAR(25) NOT NULL,
	emp_gender CHAR(1) NOT NULL,
	emp_birthdate DATE NOT NULL,
	emp_phone NUMERIC(20) NOT NULL,
	emp_airport CHAR(3) NOT NULL,
	emp_position VARCHAR(20) NOT NULL,
	emp_hours_all  NUMERIC(20),
	emp_hours_month  NUMERIC(20),
CONSTRAINT unique_emp_doc UNIQUE(emp_country, emp_doctype, emp_docnum),
	CONSTRAINT emp_to_ap FOREIGN KEY(emp_airport) REFERENCES airports(ap_code),
	CONSTRAINT check_emp_gender CHECK(emp_gender = 'f' OR emp_gender = 'm'),
	CONSTRAINT emp_to_positions FOREIGN KEY(emp_position) REFERENCES positions(pst_name),
	CONSTRAINT emp_to_documents FOREIGN KEY(emp_country, emp_doctype) REFERENCES documents(doc_country, doc_type)
);


/*Должности*/
CREATE TABLE positions (
	pst_name VARCHAR(20) PRIMARY KEY,
	pst_salary NUMERIC(10),
	pst_prepay NUMERIC(10),
	pst_schedule VARCHAR(20)
);

/*Члены экипажа*/
CREATE TABLE crew (
	cr_person_ID NUMERIC(10),
	cr_route_ID VARCHAR(10),
	cr_date DATETIME,
	cr_role VARCHAR(20),
	CONSTRAINT cr_to_emp FOREIGN KEY(cr_person_ID) REFERENCES employees(emp_ID),
	CONSTRAINT cr_to_r FOREIGN KEY(cr_route_ID, cr_date) REFERENCES flights(f_num, f_datetime)
);

/*Самолеты*/
CREATE TABLE aircrafts (
	ac_reg_number VARCHAR(20) PRIMARY KEY,
	ac_model VARCHAR(20),
	ac_release_date DATE,
	ac_count DECIMAL(10),
	CONSTRAINT ac_to_ch FOREIGN KEY(ac_model) REFERENCES ac_characteristics(ch_model)
);

/*Технические характеристики*/
CREATE TABLE ac_characteristics (
ch_model VARCHAR(20) PRIMARY KEY,
ch_length DECIMAL(10),
ch_wingspan DECIMAL(10),
ch_heigth DECIMAL(10),
ch_engine_type VARCHAR(20),
ch_engine_power NUMERIC(10),
ch_fuel_capacity NUMERIC(10),
ch_cruise_speed NUMERIC(10),
ch_max_speed NUMERIC(10),
ch_max_altitude NUMERIC(10),
ch_max_range NUMERIC(10),
ch_max_takeoff_weight NUMERIC(10),
ch_max_landing_weight NUMERIC(10),
ch_econom_seats_amount NUMERIC(5),
ch_business_seats_amount NUMERIC(5),
ch_crew_seats_amount NUMERIC(5),
ch_cabin_width DECIMAL(5),
ch_luggage_compartments BOOL,
ch_rescue_equipment BOOL,
ch_release_date  DATE,
ch_recommended_lifetime NUMERIC(2)
);


