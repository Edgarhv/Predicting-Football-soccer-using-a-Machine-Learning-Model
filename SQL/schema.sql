-- Creating tables for Football_DB

-- Create club table
CREATE TABLE clubs (
     club_id INT NOT NULL,
     club_name VARCHAR(40) NOT NULL,
	 club_market_value INT NOT NULL,
     PRIMARY KEY (club_id),
     UNIQUE (club_id)
);
-- Create game table
CREATE TABLE games (
     game_id INT NOT NULL,
     season INT NOT NULL,
     PRIMARY KEY (game_id)
);
-- Create appearances table
CREATE TABLE appearances (
     player_id INT NOT NULL,
     appearance_id VARCHAR(40),
	 game_id INT NOT NULL,
	 goals INT NOT NULL,
	 assists INT NOT NULL,
	 minutes_played INT NOT NULL,
	 yellow_cards INT NOT NULL,
	 red_cards INT NOT NULL,
     PRIMARY KEY (appearance_id),
	 UNIQUE (appearance_id)
);
-- Create players table
CREATE TABLE players (
     player_id INT NOT NULL,
     player_name VARCHAR(40) NOT NULL,
	 club_id INT NOT NULL,
	 country_of_birth VARCHAR(40) NOT NULL,
	 country_of_citizenship VARCHAR(40) NOT NULL,
	 player_position VARCHAR(40) NOT NULL
);
-- Create Top250 table
CREATE TABLE Top250 (
     player_name VARCHAR(40) NOT NULL,
     transfer_fee INT NOT NULL,
	 age INT NOT NULL,
	 team_from VARCHAR(40) NOT NULL,
	 league_from VARCHAR(40) NOT NULL,
	 team_to VARCHAR(40) NOT NULL,
	 market_value INT NOT NULL,
	 season VARCHAR(40) NOT NULL
);

-- Create players db all years
CREATE TABLE players_db(
     player_id INT NOT NULL,
     player_name VARCHAR(40) NOT NULL,
     club_id INT NOT NULL,
     country_of_birth VARCHAR(40) NOT NULL,
     country_of_citizenship VARCHAR(40) NOT NULL,
     player_position VARCHAR(40) NOT NULL,
     game_id INT NOT NULL,
     appearance_id VARCHAR(40) NOT NULL,
     goals INT NOT NULL,
     assists INT NOT NULL,
     minutes_played INT NOT NULL,
     yellow_cards INT NOT NULL,
     red_cards INT NOT NULL,
     club_name VARCHAR(40) NOT NULL,
     club_market_value INT NOT NULL,
     season INT NOT NULL
);

-- Adding market values to players in all seasons
CREATE TABLE player_and_market_values (
	 player_id INT NOT NULL,
     player_name VARCHAR(40) NOT NULL,
     age INT NOT NULL,
	 club_id INT NOT NULL,
	 team_from VARCHAR(40) NOT NULL,
	 league_from VARCHAR(40) NOT NULL,
	 team_to VARCHAR(40) NOT NULL,
	 country_of_birth VARCHAR(40) NOT NULL,
	 country_of_citizenship VARCHAR(40) NOT NULL,
	 player_position VARCHAR(40) NOT NULL,
	 game_id INT NOT NULL,
	 appearance_id VARCHAR(40),
	 goals INT NOT NULL,
	 assists INT NOT NULL,
	 minutes_played INT NOT NULL,
	 yellow_cards INT NOT NULL,
	 red_cards INT NOT NULL,
	 transfer_fee INT NOT NULL,
	 market_value INT NOT NULL,
	 club_market_value INT NOT NULL,
	 season INT NOT NULL
);

-- Unique market values to players in all season with performance included
CREATE TABLE player_market_values (
	 player_id INT NOT NULL,
     player_name VARCHAR(40) NOT NULL,
     age INT NOT NULL,
	 club_id INT NOT NULL,
	 team_from VARCHAR(40) NOT NULL,
	 league_from VARCHAR(40) NOT NULL,
	 team_to VARCHAR(40) NOT NULL,
	 country_of_birth VARCHAR(40) NOT NULL,
	 country_of_citizenship VARCHAR(40) NOT NULL,
	 player_position VARCHAR(40) NOT NULL,
	 games INT NOT NULL,
	 goals INT NOT NULL,
	 assists INT NOT NULL,
	 hours_played DEC NOT NULL,
	 yellow_cards INT NOT NULL,
	 red_cards INT NOT NULL,
	 transfer_fee INT NOT NULL,
	 market_value INT NOT NULL,
	 club_market_value INT NOT NULL,
     season INT NOT NULL
);
