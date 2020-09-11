DROP TABLE IF EXISTS steam_games_table;
DROP TABLE IF EXISTS steam_games_table2;

CREATE TABLE steam_games_table (
	record_id int ,
	app_id INTEGER PRIMARY KEY,
	game_name VARCHAR ( 200 ) NOT NULL,
	developers VARCHAR ( 200 ),
	publisher VARCHAR ( 200 ),
	scores DECIMAL,
	owners FLOAT,
	genres VARCHAR (200)
);

CREATE TABLE steam_games_table2 (
	_id int ,
	game_name2 VARCHAR ( 200 ) NOT NULL,
	positive_votes INTEGER,
	negative_votes INTEGER,
	ratings DECIMAL,
	positive_vote_percent DECIMAL
);


COPY steam_games_table(record_id, app_id, game_name,
					   developers, publisher, scores, owners, genres)
FROM 'C:\Users\Public\steam_db1_.csv'
DELIMITER ','
CSV HEADER; 

COPY steam_games_table2(_id, game_name2, positive_votes,
					   negative_votes, ratings, positive_vote_percent)
FROM 'C:\Users\Public\steam_db2_.csv'
DELIMITER ','
CSV HEADER; 

SELECT * FROM steam_games_table2
SELECT * FROM steam_games_table