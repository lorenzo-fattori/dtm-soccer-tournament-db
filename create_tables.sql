CREATE DATABASE IF NOT EXISTS soccer_tournament;

USE soccer_tournament;

-- =========================================
-- PLAYER

CREATE TABLE IF NOT EXISTS PLAYER (
  playerID INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  date_of_birth DATE NOT NULL,
  nationality VARCHAR(50) NOT NULL,
  goal_score INT NOT NULL,
  PRIMARY KEY (playerID)
);

-- =========================================
-- TEAM

CREATE TABLE IF NOT EXISTS TEAM (
  ID INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID)
);

-- =========================================
-- LEAGUE

CREATE TABLE IF NOT EXISTS LEAGUE (
  season_year INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  type VARCHAR(30) NOT NULL,
  PRIMARY KEY (season_year, name)
);

-- =========================================
-- REFEREE

CREATE TABLE IF NOT EXISTS REFEREE (
  refereeID INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  date_of_birth DATE NOT NULL,
  nationality VARCHAR(50) NOT NULL,
  PRIMARY KEY (refereeID)
);

-- =========================================
-- SEASON SQUAD

CREATE TABLE IF NOT EXISTS SEASON_SQUAD (
  teamID INT NOT NULL,
  year INT NOT NULL,
  goal_score INT NOT NULL,
  LEAGUE_season_year INT NOT NULL,
  LEAGUE_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (teamID, year),
  FOREIGN KEY (teamID) REFERENCES TEAM(ID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  FOREIGN KEY (LEAGUE_season_year, LEAGUE_name)
    REFERENCES LEAGUE(season_year, name)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- =========================================
-- GAME

CREATE TABLE IF NOT EXISTS GAME (
  matchID INT NOT NULL,
  date DATE NOT NULL,
  place VARCHAR(50) NOT NULL,
  start_time TIME NOT NULL,
  result VARCHAR(50) NOT NULL,
  
  LEAGUE_season_year INT NOT NULL,
  LEAGUE_name VARCHAR(50) NOT NULL,
  
  REFEREE_refereeID INT NOT NULL,

  SEASON_SQUAD_GUEST_ID INT NOT NULL,
  SEASON_SQUAD_GUEST_year INT NOT NULL,

  SEASON_SQUAD_HOME_ID INT NOT NULL,
  SEASON_SQUAD_HOME_year INT NOT NULL,

  PRIMARY KEY (matchID),

  FOREIGN KEY (LEAGUE_season_year,  LEAGUE_name)
  REFERENCES LEAGUE (season_year, name),

  FOREIGN KEY (REFEREE_refereeID)
  REFERENCES REFEREE (refereeID),

  FOREIGN KEY (SEASON_SQUAD_GUEST_ID, SEASON_SQUAD_GUEST_year)
  REFERENCES SEASON_SQUAD (teamID, year),

  FOREIGN KEY (SEASON_SQUAD_HOME_ID, SEASON_SQUAD_HOME_year)
  REFERENCES SEASON_SQUAD (teamID, year)
);

-- =========================================
-- CONTRACT

CREATE TABLE IF NOT EXISTS CONTRACT (
  contractID INT NOT NULL,
  valid_period INT NOT NULL,
  salary INT NOT NULL,

  SEASON_SQUAD_ID INT NOT NULL,
  SEASON_SQUAD_year INT NOT NULL,

  PLAYER_playerID INT NOT NULL,

  PRIMARY KEY (contractID),

  FOREIGN KEY (SEASON_SQUAD_ID, SEASON_SQUAD_year)
  REFERENCES SEASON_SQUAD (teamID, year),

  FOREIGN KEY (PLAYER_playerID)
  REFERENCES PLAYER (playerID)
);

-- =========================================
-- PLAYED_BY

CREATE TABLE IF NOT EXISTS PLAYED_BY (
  GAME_matchID INT NOT NULL,
  PLAYER_playerID INT NOT NULL,
  goal INT NOT NULL,
  cards INT NOT NULL,
  time_played INT NOT null,
  
  PRIMARY KEY (GAME_matchID, PLAYER_playerID),

  FOREIGN KEY (GAME_matchID)
  REFERENCES GAME (matchID),

  FOREIGN KEY (PLAYER_playerID)
  REFERENCES PLAYER (playerID)
);
