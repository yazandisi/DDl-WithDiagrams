-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space


CREATE TABLE planets 
(
  id SERIAL PRIMARY KEY,
  planet_name TEXT,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL
);

CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  moon_name TEXT,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL
);


CREATE TABLE galaxy 
(
  id SERIAL PRIMARY KEY,
  moons_id INTEGER REFERENCES moons ON DELETE SET NULL,
  planet_id INTEGER REFERENCES planets ON DELETE SET NULL
  
);




