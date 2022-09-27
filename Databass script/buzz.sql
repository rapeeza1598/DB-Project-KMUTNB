CREATE TABLE client (
    client_id serial PRIMARY KEY,
    client_name varchar(255) NOT NULL,
    client_surname varchar(255),
    client_phone varchar(255) NOT NULL,
    client_address varchar(255),
    client_citizen_id varchar(255)
)
CREATE TABLE employee (
    employee_id serial PRIMARY KEY,
    employee_name varchar(255) NOT NULL,
    employee_surname varchar(255) NOT NULL,
    employee_phone varchar(255) NOT NULL,
    employee_address varchar(255) NOT NULL,
    employee_citizen_id varchar(255) NOT NULL,
    employee_position varchar(255) NOT NULL
)
CREATE TABLE stop_station (
    stop_station_id serial PRIMARY KEY,
    stop_station_county varchar(255) NOT NULL
)
CREATE TABLE car (
    car_id serial PRIMARY KEY,
    car_id_plate varchar(255) NOT NULL,
    car_county_plate varchar(255) NOT NULL,
    car_model varchar(255),
    car_brand varchar(255),
    car_year int,
    car_employee_id_driver int REFERENCES employee(employee_id)
)
CREATE TABLE station (
    station_id serial PRIMARY KEY,
    station_name varchar(255) NOT NULL,
    station_address varchar(255) NOT NULL,
    station_empoyee_id int REFERENCES employee(employee_id)
)
CREATE TABLE schedule (
    schedule_id serial PRIMARY KEY,
    schedule_time varchar(255) NOT NULL,
    schedule_date varchar(255) NOT NULL,
    schedule_car_id int NOT NULL,
    schedule_start_stop_station_id int REFERENCES stop_station(stop_station_id),
    schedule_end_stop_station_id int REFERENCES stop_station(stop_station_id)
)
CREATE TABLE ticket (
    ticket_id serial PRIMARY KEY,
    ticket_price int,
    ticket_schedule_id int REFERENCES schedule(schedule_id),
    ticket_client_id int REFERENCES client(client_id),
    ticket_station_id int REFERENCES station(station_id),
    ticket_employee_id int REFERENCES employee(employee_id),
    ticket_start_station_id int REFERENCES stop_station(stop_station_id),
    ticket_end_station_id int REFERENCES stop_station(stop_station_id),
    ticket_timestamp timestamp NOT NULL
)
