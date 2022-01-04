
DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center;

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    specialties TEXT NOT NULL
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    deseases TEXT [] NOT NULL
);

CREATE TABLE doctors_patients (
    id SERIAL PRIMARY KEY,
    doctors_id INTEGER NOT NULL,
    patients_id INTEGER NOT NULL
);


INSERT INTO doctors (first_name, last_name, specialties)
 VALUES
 ('John', 'Smith', 'Internal Medicine'),
 ('Lisa', 'Rose', 'Emegency Medicine'),
 ('Ali', 'Hussain', 'Dermetalogy'),
 ('Shiba', 'Khan', 'Family Medicine');


INSERT INTO patients (first_name, last_name, age, deseases)
 VALUES
 ('Lina', 'Edward', 55, 'sun burn'),
 ('Katrina', 'John', 30, 'Influenza'),
 ('Leela', 'Logan', 22, 'kidney failure'),
 ('Hamid', 'Ali', 44, 'sore throat');


 INSERT INTO doctors_patients (doctors_id, patients_id)
 VALUES
 (1, 2),
 (2, 3),
 (3, 1),
 (4, 4),
 (1, 4),
 (4, 2),
 (2, 2);


 
 