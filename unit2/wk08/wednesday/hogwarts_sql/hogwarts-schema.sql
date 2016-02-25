DROP DATABASE IF EXISTS harrypotterdb;
CREATE DATABASE harrypotterdb;

\c harrypotterdb;

CREATE TABLE people (
    id serial PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE house (
    id serial PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE class (
    id serial PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE teacher (
  id serial PRIMARY KEY,
  name varchar(255),
  house_id integer REFERENCES house(id),
  class_id integer REFERENCES class(id)  
);

CREATE TABLE student (
  id serial PRIMARY KEY,
  people_id integer REFERENCES people(id),
  house_id integer REFERENCES house(id),
  year integer DEFAULT 1,
  class_id integer REFERENCES class(id),
  MotherName varchar(255),
  FatherName varchar(255)
);

