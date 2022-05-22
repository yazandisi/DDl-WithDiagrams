-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE song_info 
(
  id SERIAL PRIMARY KEY,
  album VARCHAR(15),
  title VARCHAR(15) NOT NULL,
  duration TEXT
);

CREATE TABLE artist 
(
  id SERIAL PRIMARY KEY,
  artist_name TEXT
);

CREATE TABLE producer 
(
  id SERIAL PRIMARY KEY,
  producer_name TEXT
);

CREATE TABLE song 
(
  id SERIAL PRIMARY KEY,
  song_info_id INTEGER REFERENCES song_info ON DELETE SET NULL,
  artist_id INTEGER REFERENCES artist ON DELETE SET NULL,
  producer_id INTEGER REFERENCES producer ON DELETE SET NULL,
  describe TEXT
  
);


