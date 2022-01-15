
DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist;


CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);


CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id Integer NOT NULL,
    location TEXT NOT NULL,
    region_id INTEGER REFERENCES regions(id) ON DELETE SET NULL,
    category_id Integer NOT NULL
);


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    prefered_region_id INTEGER REFERENCES regions(id) ON DELETE SET NULL,
);



CREATE TABLE category (
id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
);

