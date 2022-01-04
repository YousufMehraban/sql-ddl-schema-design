
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
    username TEXT NOT NULL,
    location TEXT NOT NULL,
    region_id INTEGER REFERENCES regions(id) ON DELETE SET NULL,
    category TEXT NOT NULL
);


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    prefered_region_id INTEGER REFERENCES regions(id) ON DELETE SET NULL,
);


INSERT INTO regions (name)
 VALUES
('san francisco'),
('lake tahoe'),
('Buffalo'),
('San Jose'),
('Seattle'),
('New York');


INSERT INTO posts (title, username, location, region_id, category)
 VALUES
('funny', 'cattyfish', 'soma', 1, 'comedy'),
('snowing', 'ladyskier', 'south lake tahoe', 2, 'winter'),
('waterfall', 'photographer', 'Niagara Falls', 3, 'nature'),
('lightening', 'awesomeboy', 'north san jose', 4, 'nature');



INSERT INTO users (username, prefered_region_id)
 VALUES
('cattyfish', 1),
('ladyskier', 4),
('awesomeboy', 3),
('photographer', 2),
('junglebook', 5),
('funnyman', 6);

