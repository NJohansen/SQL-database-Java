CREATE TABLE coach ( 
  people_email VARCHAR(255), 
  team_name VARCHAR (255),

  CONSTRAINT coach_primary PRIMARY KEY (people_email, team_name)
) 

