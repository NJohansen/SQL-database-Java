CREATE TABLE winner ( 
  team_name VARCHAR(255), 
  tournaments_name VARCHAR(255),

  CONSTRAINT winner_primary PRIMARY KEY(team_name, tournaments_name)
)
