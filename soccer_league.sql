
DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league;


CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    team_name TEXT NOT NULL,
    ranking varchar,
);


CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    game_date DATE,
    team1_id INTEGER NOT NULL,
    team2_id INTEGER NOT NULL,
    league TEXT NOT NULL,
    refree TEXT NOT NULL
);


CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    player_name TEXT NOT NULL,
    team_id INTEGER NOT NULL,
    goals_scored INTEGER NOT NULL
);

INSERT INTO teams (team_name, ranking)
 VALUES
 ('Manchester City', 'P-1'),
 ('Real Madrid', 'P-2'),
 ('Barcelona', 'P-3'),
 ('Liverpool', 'P-4'),
 ('Bayern Munchin', 'P-5'),
 ('Chelsea', 'P-3');

 INSERT INTO games (game_date, teame1_id, team2_id, refree, league)
 VALUES
 ('2021-10-15', 1, 6, 'Sander Van', 'Euro 2021'),
 ('2021-05-25', 2, 3, 'Sander Van', 'El Clasico 2021'),
 ('2021-10-10', 2, 5, 'Sander Van', 'Euro 2021'),
 ('2021-01-20', 3, 4, 'Sander Van', 'Euro 2021'),
 ('2021-11-28', 1, 6, 'Sander Van', 'Euro 2021');


INSERT INTO players (player_name, teame_id, goals_scored)
 VALUES
 ('Cristiano Ronaldo', 2, 4),
 ('Karim Bezema', 2, 2),
 ('Leonel Messi', 3, 1),
 ('Jerard Pique', 3, 3),
 ('Hary Wilson', 4, 0),
 ('Sergio Aguero', 1, 2);