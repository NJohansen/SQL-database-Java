CREATE TABLE team_member( 
  people_email VARCHAR(255), 
  team_name VARCHAR(255),
  type VARCHAR(255),  

  CONSTRAINT player_primary PRIMARY KEY(people_email, team_name)
)
