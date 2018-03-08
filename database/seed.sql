--Every query needed to construct the entire database
--complete with dummy data

CREATE TABLE participants ( 
  people_email VARCHAR(255), 
  tournaments_name VARCHAR(255),

  CONSTRAINT participant_primary PRIMARY KEY(people_email, tournaments_name)
)

INSERT INTO participants VALUES 
  ('team1', 'tournament1'),
  ('team1', 'tournament2'),
  ('team1', 'tournament3'),
  ('team1', 'tournament4'),
  ('team1', 'tournament5'),
  ('team2', 'tournament1'),
  ('team2', 'tournament2'),
  ('team2', 'tournament3'),
  ('team2', 'tournament4'),
  ('team2', 'tournament5'),
  ('team3', 'tournament1'),
  ('team3', 'tournament2'),
  ('team3', 'tournament3'),
  ('team3', 'tournament4'),
  ('team3', 'tournament5'),
  ('team4', 'tournament1'),
  ('team4', 'tournament2'),
  ('team4', 'tournament3'),
  ('team4', 'tournament4'),
  ('team4', 'tournament5'),
  ('team5', 'tournament1'),
  ('team5', 'tournament2'),
  ('team5', 'tournament3'),
  ('team5', 'tournament4'),
  ('team5', 'tournament5')

CREATE TABLE people(
  name VARCHAR(255),
  email VARCHAR(255) PRIMARY KEY, 
  nickname VARCHAR(255) 
)

INSERT INTO people VALUES 
  ('player01', 'player01@player.com', 'p01'),
  ('player02', 'player02@player.com', 'p02'),
  ('player03', 'player03@player.com', 'p03'),
  ('player04', 'player04@player.com', 'p04'),
  ('player05', 'player05@player.com', 'p05'),
  ('player06', 'player06@player.com', 'p06'),
  ('player07', 'player07@player.com', 'p07'),
  ('player08', 'player08@player.com', 'p08'),
  ('player09', 'player09@player.com', 'p09'),
  ('player10', 'player10@player.com', 'p10'),
  ('player11', 'player11@player.com', 'p11'),
  ('player12', 'player12@player.com', 'p12'),
  ('player13', 'player13@player.com', 'p13'),
  ('player14', 'player14@player.com', 'p14'),
  ('player15', 'player15@player.com', 'p15'),
  ('player16', 'player16@player.com', 'p16'),
  ('player17', 'player17@player.com', 'p17'),
  ('player18', 'player18@player.com', 'p18'),
  ('player19', 'player19@player.com', 'p19'),
  ('player20', 'player20@player.com', 'p20'),
  ('player21', 'player21@player.com', 'p21'),
  ('player22', 'player22@player.com', 'p22'),
  ('player23', 'player23@player.com', 'p23'),
  ('player24', 'player24@player.com', 'p24'),
  ('player25', 'player25@player.com', 'p25')

INSERT INTO people VALUES 
  ('coach01', 'coach01@coach.com', 'c01'),
  ('coach02', 'coach02@coach.com', 'c02'),
  ('coach03', 'coach03@coach.com', 'c03'),
  ('coach04', 'coach04@coach.com', 'c04'),
  ('coach05', 'coach05@coach.com', 'c05')

CREATE TABLE team_member( 
  people_email VARCHAR(255), 
  team_name VARCHAR(255),
  type VARCHAR(255),  

  CONSTRAINT player_primary PRIMARY KEY(people_email, team_name)
)

INSERT INTO team_member VALUES 
  ('coach01@coach.com', 'team1', 'coach'),
  ('coach02@coach.com', 'team2', 'coach'),
  ('coach03@coach.com', 'team3', 'coach'),
  ('coach04@coach.com', 'team4', 'coach'),
  ('coach05@coach.com', 'team5', 'coach')


INSERT INTO team_member VALUES 
  ('player01@player.com', 'team1', 'player'),
  ('player02@player.com', 'team1', 'player'),
  ('player03@player.com', 'team1', 'player'),
  ('player04@player.com', 'team1', 'player'),
  ('player05@player.com', 'team1', 'player'),
  ('player06@player.com', 'team2', 'player'),
  ('player07@player.com', 'team2', 'player'),
  ('player08@player.com', 'team2', 'player'),
  ('player09@player.com', 'team2', 'player'),
  ('player10@player.com', 'team2', 'player'),
  ('player11@player.com', 'team3', 'player'),
  ('player12@player.com', 'team3', 'player'),
  ('player13@player.com', 'team3', 'player'),
  ('player14@player.com', 'team3', 'player'),
  ('player15@player.com', 'team3', 'player'),
  ('player16@player.com', 'team4', 'player'),
  ('player17@player.com', 'team4', 'player'),
  ('player18@player.com', 'team4', 'player'),
  ('player19@player.com', 'team4', 'player'),
  ('player20@player.com', 'team4', 'player'),
  ('player21@player.com', 'team5', 'player'),
  ('player22@player.com', 'team5', 'player'),
  ('player23@player.com', 'team5', 'player'),
  ('player24@player.com', 'team5', 'player'),
  ('player25@player.com', 'team5', 'player')



CREATE TABLE teams ( 
  name VARCHAR(255) PRIMARY KEY,
  country CHAR(255)
) 

INSERT INTO teams VALUES 
  ('team1', 'Denmark'),
  ('team2', 'Sweden'),
  ('team3', 'Norway') ,
  ('team4', 'Uzbekistan'),
  ('team5', 'Germany') 

CREATE TABLE tournaments ( 
  name VARCHAR(255) PRIMARY KEY, 
  prize INT, 
  date DATE
) 

INSERT INTO tournaments VALUES 
  ('tournament1', 500, now()), 
  ('tournament2', 5000, '2016-12-03'), 
  ('tournament3', 50000, '2017-06-05'), 
  ('tournament4', 1000, '2015-11-18'), 
  ('tournament5', 10000, '2018-02-28')

 
CREATE TABLE winner ( 
  team_name VARCHAR(255), 
  tournaments_name VARCHAR(255),

  CONSTRAINT winner_primary PRIMARY KEY(team_name, tournaments_name)
)

INSERT INTO winner VALUES 
  ('team1', 'tournament5'), 
  ('team2', 'tournament4'), 
  ('team3', 'tournament3'), 
  ('team4', 'tournament2'), 
  ('team5', 'tournament1')