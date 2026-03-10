-- 1
INSERT INTO PLAYER (playerID, name, last_name, date_of_birth, nationality, goal_score) 
VALUES
  (121, 'Giuseppe', 'Rossi', '1999-12-04', 'Italy', 0);

SELECT * 
FROM player 
WHERE playerID = 121;

-- 2
SELECT p.playerID, p.name, p.last_name
FROM PLAYER p
JOIN CONTRACT c 
    ON p.playerID = c.PLAYER_playerID
JOIN SEASON_SQUAD ss 
    ON c.SEASON_SQUAD_ID = ss.teamID
    AND c.SEASON_SQUAD_year = ss.year
JOIN TEAM t
    ON ss.teamID = t.ID
WHERE t.name = 'Juventus';

-- 3
SELECT *
FROM player
ORDER BY goal_score DESC 
LIMIT 1;

-- 4
SELECT COUNT(*) AS matches_without_goals
FROM game
WHERE result = '0-0'

-- 5
SELECT COUNT(*) AS matches_played
FROM GAME g
JOIN TEAM t 
    ON (g.SEASON_SQUAD_HOME_ID = t.ID 
        OR g.SEASON_SQUAD_GUEST_ID = t.ID)
WHERE t.name = 'Juventus';

-- 6
SELECT matchID, date, place, start_time, result, REFEREE_refereeID
FROM game
WHERE date = '2025-01-12';

-- 7
SELECT c.contractID, p.name, p.last_name, t.name AS team, 
       c.valid_period, c.salary
FROM CONTRACT c
JOIN PLAYER p 
    ON c.PLAYER_playerID = p.playerID
JOIN TEAM t
    ON c.SEASON_SQUAD_ID = t.ID
WHERE c.valid_period <= 1;

-- 8
SELECT *
FROM PLAYER
WHERE goal_score = 0;

-- 9
SELECT t.name AS team, p.name, p.last_name, p.goal_score
FROM player P
JOIN contract c
    ON (p.playerID = c.PLAYER_playerID)
JOIN season_squad s
    ON (c.SEASON_SQUAD_ID = s.teamID)
JOIN team t
    ON (s.teamID = t.ID)
GROUP BY team
ORDER BY p.goal_score DESC;

-- 10
SELECT g.LEAGUE_name, r.refereeID, r.name, r.last_name, COUNT(*) AS matches_refereed
FROM GAME g
JOIN REFEREE r 
    ON g.REFEREE_refereeID = r.refereeID
GROUP BY g.LEAGUE_name, r.refereeID
HAVING COUNT(*) >= ALL (
    SELECT COUNT(*) FROM GAME g2 WHERE g2.LEAGUE_name = g.LEAGUE_name
    GROUP BY g2.REFEREE_refereeID
);

-- 11
SELECT COUNT(g.matchID) AS No_of_matches, r.name, r.last_name
FROM game g
JOIN referee r 
    ON (g.REFEREE_refereeID = r.refereeID)
WHERE g.REFEREE_refereeID = 203
GROUP BY r.name, r.last_name;

-- 12
INSERT INTO REFEREE (refereeID, name, last_name, date_of_birth, nationality)
VALUES (211, 'Luca', 'Pairetto', '1984-04-01', 'Italia');

SELECT *
FROM REFEREE
WHERE refereeID = 211;

-- 13
SELECT c.valid_period, COUNT(*) AS no_of_players
FROM contract c
JOIN player p
    ON (p.playerID = c.PLAYER_playerID)
GROUP BY c.valid_period
HAVING c.valid_period >= 3;

-- 14
SELECT p.playerID, c.salary
FROM player p
JOIN contract c 
    ON (p.playerID = c.PLAYER_playerID)
JOIN played_by pb
    ON (p.playerID = pb.PLAYER_playerID)
GROUP BY p.playerID
HAVING COUNT(pb.GAME_matchID) > 1;

-- 15
SELECT p.name, p.last_name, c.salary
FROM contract c
JOIN player p
    ON (p.playerID = c.PLAYER_playerID)
ORDER BY 3 DESC
LIMIT 1;

