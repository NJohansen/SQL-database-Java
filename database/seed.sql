--Every query neeed to fill database with dummy data



INSERT INTO tournament_participant VALUES
  (1, 1, false),
  (1, 2, false),
  (1, 3, false),
  (1, 4, false),
  (1, 5, false),
  (2, 1, true),
  (2, 2, true),
  (2, 3, false),
  (2, 4, false),
  (2, 5, false),
  (3, 1, false),
  (3, 2, false),
  (3, 3, false),
  (3, 4, false),
  (3, 5, true),
  (4, 1, false),
  (4, 2, false),
  (4, 3, false),
  (4, 4, false),
  (4, 5, false),
  (5, 1, false),
  (5, 2, false),
  (5, 3, true),
  (5, 4, false),
  (5, 5, false);




INSERT INTO people (name, email, nickname) VALUES
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
  ('player25', 'player25@player.com', 'p25'),
  ('player26', 'player26@player.com', 'p26'),
  ('player27', 'player27@player.com', 'p27'),
  ('player28', 'player28@player.com', 'p28'),
  ('player29', 'player29@player.com', 'p29'),
  ('player30', 'player30@player.com', 'p30'),
  ('player31', 'player31@player.com', 'p31'),
  ('player32', 'player32@player.com', 'p32'),
  ('player33', 'player33@player.com', 'p33');


INSERT INTO people (name, email, nickname) VALUES
  ('coach01', 'coach01@coach.com', 'c01'),
  ('coach02', 'coach02@coach.com', 'c02'),
  ('coach03', 'coach03@coach.com', 'c03'),
  ('coach04', 'coach04@coach.com', 'c04'),
  ('coach05', 'coach05@coach.com', 'c05');


INSERT INTO team_member VALUES
  (34, 1, 'coach'),
  (35, 2, 'coach'),
  (36, 3, 'coach'),
  (37, 4, 'coach'),
  (38, 5, 'coach');


INSERT INTO team_member VALUES
  (1, 1, 'player'),
  (2, 1, 'player'),
  (3, 1, 'player'),
  (4, 1, 'player'),
  (5, 1, 'player'),
  (6, 2, 'player'),
  (7, 2, 'player'),
  (8, 2, 'player'),
  (9, 2, 'player'),
  (10, 2, 'player'),
  (11, 3, 'player'),
  (12, 3,'player'),
  (13, 3, 'player'),
  (14, 3, 'player'),
  (15, 3, 'player'),
  (16, 4, 'player'),
  (17, 4, 'player'),
  (18, 4, 'player'),
  (19, 4, 'player'),
  (20, 4, 'player'),
  (21, 5, 'player'),
  (22, 5, 'player'),
  (23, 5, 'player'),
  (24, 5, 'player'),
  (25, 5, 'player'),
  (26, 5, 'player'),
  (27, 5, 'player'),
  (28, 5, 'player'),
  (29, 2, 'player'),
  (30, 2, 'player'),
  (31, 4, 'player'),
  (32, 1, 'player'),
  (33, 2, 'player');





INSERT INTO teams (name, country) VALUES
  ('team1', 'Denmark'),
  ('team2', 'Sweden'),
  ('team3', 'Norway') ,
  ('team4', 'Uzbekistan'),
  ('team5', 'Germany');



INSERT INTO tournaments (name, prize, date) VALUES
  ('tournament1', 500, now()),
  ('tournament2', 5000, '2016-12-03'),
  ('tournament3', 50000, '2017-06-05'),
  ('tournament4', 1000, '2015-11-18'),
  ('tournament5', 10000, '2018-02-28');
