
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
    doctors_id Integer NOT NULL REFERENCES doctors(id),
    patients_id Integer NOT NULL REFERENCES patients(id),
);


CREATE TABLE deceases (
id Integer PRIMARY KEY,
deceases TEXT NOT NULL,
patients_id Integer NOT NULL REFERENCES patients(id),
);


CREATE TABLE visits (
id Integer PRIMARY KEY,
visit_date datetime NOT NULL,
patients_id Integer NOT NULL REFERENCES patients(id),
doctors_id Integer NOT NULL REFERENCES doctors(id),
);

