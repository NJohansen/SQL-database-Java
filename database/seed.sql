--Every query neeed to fill database with dummy data



NSERT INTO tournament_participant VALUES
  ('team1', 'tournament1', false),
  ('team1', 'tournament2', false),
  ('team1', 'tournament3', false),
  ('team1', 'tournament4', false),
  ('team1', 'tournament5', false),
  ('team2', 'tournament1', true),
  ('team2', 'tournament2', true),
  ('team2', 'tournament3', false),
  ('team2', 'tournament4', false),
  ('team2', 'tournament5', false),
  ('team3', 'tournament1', false),
  ('team3', 'tournament2', false),
  ('team3', 'tournament3', false),
  ('team3', 'tournament4', false),
  ('team3', 'tournament5', true),
  ('team4', 'tournament1', false),
  ('team4', 'tournament2', false),
  ('team4', 'tournament3', false),
  ('team4', 'tournament4', false),
  ('team4', 'tournament5', false),
  ('team5', 'tournament1', false),
  ('team5', 'tournament2', false),
  ('team5', 'tournament3', true),
  ('team5', 'tournament4', false),
  ('team5', 'tournament5', false)




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





INSERT INTO teams VALUES
  ('team1', 'Denmark'),
  ('team2', 'Sweden'),
  ('team3', 'Norway') ,
  ('team4', 'Uzbekistan'),
  ('team5', 'Germany')



INSERT INTO tournaments VALUES
  ('tournament1', 500, now()),
  ('tournament2', 5000, '2016-12-03'),
  ('tournament3', 50000, '2017-06-05'),
  ('tournament4', 1000, '2015-11-18'),
  ('tournament5', 10000, '2018-02-28')
