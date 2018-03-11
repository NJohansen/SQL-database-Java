--Every query needed to construct database structure

DROP TABLE people ;

DROP TABLE team_member ;

DROP TABLE teams;

DROP TABLE tournaments;

DROP TABLE tournament_participant;


CREATE TABLE tournament_participant (
  people_id INT,
  tournaments_id INT,
  winner BOOLEAN,

  PRIMARY KEY(people_id, tournaments_id)
);


CREATE TABLE people(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  nickname VARCHAR(255)
);


CREATE TABLE team_member(
  people_id INT,
  team_id INT,
  type VARCHAR(255),

  PRIMARY KEY(people_id, team_id)
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  country CHAR(255)
) ;

CREATE TABLE tournaments (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  prize INT,
  date DATE
) ;
