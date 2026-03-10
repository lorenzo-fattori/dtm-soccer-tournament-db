-- =========================================
-- PLAYER

INSERT INTO PLAYER (playerID, name, last_name, date_of_birth, nationality, goal_score) 
VALUES
  (101, 'Dusan', 'Vlahovic', '2000-01-28', 'Serbia', 15),
  (102, 'Martinez', 'Lautaro', '1997-08-22', 'Argentina', 20),
  (103, 'Rafael', 'Leao', '1999-06-10', 'Portogallo', 12),
  (104, 'Victor', 'Osimhen', '1998-12-29', 'Nigeria', 18),
  (105, 'Paulo', 'Dybala', '1993-11-15', 'Argentina', 10),
  (106, 'Teun', 'Koopmeiners', '1998-02-28', 'Olanda', 8),
  (107, 'Ciro', 'Immobile', '1990-02-20', 'Italia', 7),
  (108, 'Lucas', 'Beltran', '1999-03-29', 'Argentina', 9),
  (109, 'Duvan', 'Zapata', '1991-04-01', 'Colombia', 11),
  (110, 'Joshua', 'Zirkzee', '2001-05-22', 'Olanda', 13),
  (111, 'Marcus', 'Thuram', '1997-08-06', 'Francia', 14),
  (112, 'Olivier', 'Giroud', '1986-09-30', 'Francia', 11),
  (113, 'Khvicha', 'Kvaratskhelia', '2001-02-12', 'Georgia', 13),
  (114, 'Lorenzo', 'Pellegrini', '1996-06-19', 'Italia', 6),
  (115, 'Gianluca', 'Scamacca', '1999-01-01', 'Italia', 12),
  (116, 'Felipe', 'Anderson', '1993-04-15', 'Brasile', 9),
  (117, 'Andrea', 'Belotti', '1993-12-20', 'Italia', 8),
  (118, 'Riccardo', 'Orsolini', '1997-01-24', 'Italia', 10),
  (119, 'Nikola', 'Vlasic', '1997-10-04', 'Croazia', 7),
  (120, 'Albert', 'Gudmundsson', '1997-06-15', 'Islanda', 9);

-- =========================================
-- REFEREE 

INSERT INTO REFEREE (refereeID, name, last_name, date_of_birth, nationality) 
VALUES
  (201, 'Daniele', 'Orsato', '1980-05-10', 'Italia'),
  (202, 'Davide', 'Massa', '1985-11-25', 'Italia'),
  (203, 'Anthony', 'Taylor', '1976-08-01', 'Inghilterra'),
  (204, 'Clément', 'Turpin', '1990-04-12', 'Francia'),
  (205, 'Szymon', 'Marciniak', '1982-01-30', 'Polonia'),
  (206, 'Marco', 'Guida', '1981-03-07', 'Italia'),
  (207, 'Fabio', 'Maresca', '1981-04-12', 'Italia'),
  (208, 'Daniele', 'Chiffi', '1984-12-14', 'Italia'),
  (209, 'Michael', 'Fabbri', '1983-12-19', 'Italia'),
  (210, 'Antonio', 'Rapuano', '1985-04-10', 'Italia');

-- =========================================
-- TEAM 

INSERT INTO TEAM (ID, name) 
VALUES
  (1, 'Juventus'),
  (2, 'Inter'),
  (3, 'Milan'),
  (4, 'Napoli'),
  (5, 'Roma'),
  (6, 'Atalanta'),
  (7, 'Lazio'),
  (8, 'Fiorentina'),
  (9, 'Torino'),
  (10, 'Bologna');

-- =========================================
-- LEAGUE 

INSERT INTO LEAGUE (season_year, name, type) 
VALUES
  (2024, 'Campionato Serie A 2024', 'Serie A'),
  (2024, 'Campionato Serie B 2024', 'Serie B'),
  (2023, 'Campionato Serie A 2023', 'Serie A'),
  (2024, 'Campionato Serie C 2024', 'Serie C');

-- =========================================
-- SEASON SQUAD 

INSERT INTO SEASON_SQUAD (teamID, year, goal_score, LEAGUE_season_year, LEAGUE_name) 
VALUES
  (1, 2024, 60, 2024, 'Campionato Serie A 2024'),
  (2, 2024, 75, 2024, 'Campionato Serie A 2024'),
  (3, 2024, 55, 2024, 'Campionato Serie A 2024'),
  (4, 2024, 50, 2024, 'Campionato Serie A 2024'),
  (5, 2024, 45, 2024, 'Campionato Serie A 2024'),
  (6, 2024, 58, 2024, 'Campionato Serie A 2024'),
  (7, 2024, 40, 2024, 'Campionato Serie A 2024'),
  (8, 2024, 38, 2024, 'Campionato Serie A 2024'),
  (9, 2024, 30, 2024, 'Campionato Serie A 2024'),
  (10, 2024, 42, 2024, 'Campionato Serie A 2024');

-- =========================================
-- CONTRACT

INSERT INTO CONTRACT (contractID, valid_period, salary, SEASON_SQUAD_ID, SEASON_SQUAD_year, PLAYER_playerID) 
VALUES
  (4001, 4, 7000000, 1, 2024, 101),
  (4002, 5, 8500000, 2, 2024, 102),
  (4003, 3, 5000000, 3, 2024, 103),
  (4004, 4, 6000000, 4, 2024, 104),
  (4005, 2, 4500000, 5, 2024, 105),
  (4006, 4, 3000000, 6, 2024, 106),
  (4007, 1, 3500000, 7, 2024, 107),
  (4008, 5, 2500000, 8, 2024, 108),
  (4009, 3, 2000000, 9, 2024, 109),
  (4010, 4, 2800000, 10, 2024, 110),
  (4011, 4, 6500000, 2, 2024, 111),
  (4012, 2, 4000000, 3, 2024, 112),
  (4013, 5, 7500000, 4, 2024, 113),
  (4014, 4, 4200000, 5, 2024, 114),
  (4015, 4, 5000000, 6, 2024, 115),
  (4016, 3, 3500000, 7, 2024, 116),
  (4017, 3, 3000000, 8, 2024, 117),
  (4018, 4, 2800000, 10, 2024, 118),
  (4019, 4, 3200000, 9, 2024, 119),
  (4020, 4, 3600000, 8, 2024, 120);

-- =========================================
-- GAME

INSERT INTO GAME (matchID, date, place, start_time, result, LEAGUE_season_year, LEAGUE_name, REFEREE_refereeID,
SEASON_SQUAD_GUEST_ID, SEASON_SQUAD_GUEST_year, SEASON_SQUAD_HOME_ID, SEASON_SQUAD_HOME_year)
VALUES
  (3001,'2025-01-05','Torino','20:45:00','1-1',2024,'Campionato Serie A 2024',201,2,2024,1,2024),
  (3002,'2025-01-06','Milano','18:00:00','3-0',2024,'Campionato Serie A 2024',202,4,2024,3,2024),
  (3003,'2025-01-12','Roma','15:00:00','2-1',2024,'Campionato Serie A 2024',203,6,2024,5,2024),
  (3004,'2025-01-12','Firenze','12:30:00','0-0',2024,'Campionato Serie A 2024',204,7,2024,8,2024),
  (3005,'2025-01-19','Bologna','20:45:00','2-0',2024,'Campionato Serie A 2024',205,9,2024,10,2024),
  (3006,'2025-01-19','Bergamo','18:00:00','1-2',2024,'Campionato Serie A 2024',201,1,2024,6,2024),
  (3007,'2025-01-26','Napoli','15:00:00','4-1',2024,'Campionato Serie A 2024',202,3,2024,4,2024),
  (3008,'2025-02-02','Milano','20:45:00','3-1',2024,'Campionato Serie A 2024',203,5,2024,2,2024),
  (3009,'2025-02-09','Torino','18:00:00','1-0',2024,'Campionato Serie A 2024',204,10,2024,1,2024),
  (3010,'2025-02-09','Roma','12:30:00','0-2',2024,'Campionato Serie A 2024',205,8,2024,7,2024),
  (3011,'2025-02-16','Milano','20:45:00','2-2',2024,'Campionato Serie A 2024',206,3,2024,2,2024),
  (3012,'2025-02-16','Napoli','18:00:00','3-1',2024,'Campionato Serie A 2024',207,5,2024,4,2024),
  (3013,'2025-02-23','Bergamo','15:00:00','1-0',2024,'Campionato Serie A 2024',208,7,2024,6,2024),
  (3014,'2025-02-23','Torino','12:30:00','2-1',2024,'Campionato Serie A 2024',201,8,2024,9,2024),
  (3015,'2025-03-02','Roma','20:45:00','1-3',2024,'Campionato Serie A 2024',210,2,2024,5,2024);

-- =========================================
-- PLAYED_BY

INSERT INTO PLAYED_BY (GAME_matchID, PLAYER_playerID, goal, cards, time_played) 
VALUES
  (3001,101,1,0,90),
  (3001,102,1,1,90),
  (3002,103,2,0,90),
  (3002,104,0,0,90),
  (3002,107,1,0,60),
  (3003,105,2,0,85),
  (3003,106,1,0,90),
  (3006,106,1,1,90),
  (3006,101,2,0,90),
  (3007,104,3,0,90),
  (3007,103,1,1,90),
  (3009,101,1,0,90),
  (3009,110,0,0,90),
  (3011,102,1,0,90),
  (3011,111,1,0,90),
  (3012,104,1,0,90),
  (3012,113,1,0,90),
  (3013,115,1,0,90),
  (3014,119,1,0,90),
  (3015,102,1,0,90);