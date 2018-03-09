--Every query needed to construct database structure

DROP TABLE participants

DROP TABLE people 

DROP TABLE team_member 

DROP TABLE teams

DROP TABLE tournaments 

DROP TABLE winner


CREATE TABLE participants ( 
  people_email VARCHAR(255), 
  tournaments_name VARCHAR(255),

  CONSTRAINT participant_primary PRIMARY KEY(people_email, tournaments_name)
)


CREATE TABLE people(
  name VARCHAR(255),
  email VARCHAR(255) PRIMARY KEY, 
  nickname VARCHAR(255) 
)


CREATE TABLE team_member( 
  people_email VARCHAR(255), 
  team_name VARCHAR(255),
  type VARCHAR(255),  

  CONSTRAINT player_primary PRIMARY KEY(people_email, team_name)
)

CREATE TABLE teams ( 
  name VARCHAR(255) PRIMARY KEY,
  country CHAR(255)
) 

CREATE TABLE tournaments ( 
  name VARCHAR(255) PRIMARY KEY, 
  prize INT, 
  date DATE
) 
 
CREATE TABLE winner ( 
  team_name VARCHAR(255), 
  tournaments_name VARCHAR(255),

  CONSTRAINT winner_primary PRIMARY KEY(team_name, tournaments_name)
)

