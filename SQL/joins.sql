-- Creating player database from 2017 and 2018

-- Perform an INNER JOIN on appearances, games, players and clubs tables
INSERT INTO players_db
SELECT p.player_id,
     p.player_name,
     c.club_id,
	 p.country_of_birth,
	 p.country_of_citizenship,
	 p.player_position,
	 g.game_id,
	 a.appearance_id,
	 a.goals,
	 a.assists,
	 a.minutes_played,
	 a.yellow_cards,
	 a.red_cards,
	 c.club_name,
	 c.club_market_value,
	 g.season
FROM appearances AS a
INNER JOIN games AS g 
	ON a.game_id=g.game_id
INNER JOIN players as p
	ON a.player_id=p.player_id
INNER JOIN clubs as c
	ON p.club_id=c.club_id;

-- INNER JOIN players_db with Top250 by player name and season
INSERT INTO player_and_market_values
SELECT p.player_id,
     t.player_name,
     t.age,
	 p.club_id,
	 t.team_from,
	 t.league_from,
	 t.team_to,
	 p.country_of_birth,
	 p.country_of_citizenship,
	 p.player_position,
	 p.game_id,
	 p.appearance_id,
	 p.goals,
	 p.assists,
	 p.minutes_played,
	 p.yellow_cards,
	 p.red_cards,
	 t.transfer_fee,
	 t.market_value,
	 p.club_market_value,
	 p.season
FROM players_db as p
INNER JOIN top250 AS t 
	ON p.player_name=t.player_name
WHERE p.season = t.season;

-- Create unique player DB from all seasons
INSERT INTO player_market_values
SELECT p.player_id,
     p.player_name, 
     p.age,
	 p.club_id,
	 p.team_from,
	 p.league_from,
	 p.team_to,
	 p.country_of_birth,
	 p.country_of_citizenship,
	 p.player_position,
	 COUNT(p.game_id) AS "games",
	 SUM(p.goals) AS "goals",
	 SUM(p.assists) AS "assists",
	 ROUND(SUM(minutes_played)/60.0, 4) AS "hours_played",
	 SUM(p.yellow_cards) AS "yellow_cards",
	 SUM(p.red_cards) AS "red_cards",
	 p.transfer_fee,
	 p.market_value,
	 p.club_market_value,
     p.season
FROM player_and_market_values as p
GROUP BY p.player_name, 
	 p.player_id, 
	 p.age, 
	 p.country_of_birth, 
	 p.team_from, 
	 p.league_from,
	 p.club_id,
	 p.team_to,
	 p.country_of_citizenship,
	 p.player_position,
	 p.transfer_fee,
	 p.market_value,
	 p.club_market_value,
     p.season
ORDER BY market_value DESC;