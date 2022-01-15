
DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league;


CREATE TABLE teams (
id Integer PRIMARY KEY,
team_name TEXT NOT NULL,
ranking TEXT NOT NULL,
);

CREATE TABLE goals (
id Integer PRIMARY KEY,
player_id Integer NOT NULL REFERENCES players.id,
league_id Integer NOT NULL REFERENCES league.id,
match_id Integer NOT NULL REFERENCES match.id,
);

CREATE TABLE players (
id Integer PRIMARY KEY,
player_name TEXT NOT NULL,
team_id Integer NOT NULL REFERENCES teams.id,
goals_id Integer NOT NULL REFERENCES goals.id
);

CREATE TABLE match (
id Integer PRIMARY KEY,
match_date datetime NOT NULL,
team_a_id Integer NOT NULL REFERENCES teams.id,
team_b_id Integer NOT NULL REFERENCES teams.id,
refree_id Integer NOT NULL REFERENCES refrees.id,
league_id Integer NOT NULL REFERENCES league.id
);


CREATE TABLE refrees (
id Integer PRIMARY KEY,
name TEXT NOT NULL
);


CREATE TABLE league (
id Integer PRIMARY KEY,
league_name TEXT NOT NULL,
league_date datetime NOT NULL
);
 