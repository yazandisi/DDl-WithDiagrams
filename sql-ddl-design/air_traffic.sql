-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic


CREATE TABLE flight_info 
(
  id SERIAL PRIMARY KEY,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL

);

CREATE TABLE customer 
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(15) NOT NULL,
  last_name VARCHAR(15) NOT NULL

);

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer ON DELETE SET NULL,
  seat TEXT NOT NULL,
  airline TEXT NOT NULL,
  flight_info_id INTEGER REFERENCES flight_info ON DELETE SET NULL

  
);
