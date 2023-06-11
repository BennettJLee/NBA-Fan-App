
-- Drop all existing tables
drop table GAME;
drop table PERSON;
drop table PLAYER;
drop table COACH;
drop table STATISTICS;
drop table TEAM;

-- Person Table
create table PERSON
(
 Person_ID smallint NOT NULL,
 First_Name varchar(30) NOT NULL,
 Last_Name varchar(30) NOT NULL,
 DOB Date NOT NULL,
 CONSTRAINT pk_person PRIMARY KEY (Person_ID)
);

-- Team Table
create table Team
(
 Team_Name varchar(25) NOT NULL,
 City varchar(20) not null,
 Stadium varchar(30) not null,
 CONSTRAINT pk_team PRIMARY KEY (Team_Name)
);

-- Coach Table
create table Coach
(
 Coach_ID smallint NOT NULL,
 Role varchar(20),
 Team_Name varchar(20),
 CONSTRAINT pk_coach PRIMARY KEY (Coach_ID),
 CONSTRAINT fk_coach FOREIGN KEY (Coach_ID) REFERENCES PERSON(PERSON_ID),
 CONSTRAINT fk_cteamname FOREIGN KEY (Team_Name) REFERENCES TEAM(TEAM_NAME),
 CONSTRAINT check_Role CHECK (Role IN ('Head Coach', 'Assistant'))
);

-- Player Table
create table Player
(
 Player_ID smallint NOT NULL,
 Position varchar(5) NOT NULL,
 Height varchar(10) NOT NULL, 
 Salary int,
 Starter smallint,
 Team_Name varchar(25),
 CONSTRAINT pk_player PRIMARY KEY (Player_ID),
 CONSTRAINT fk_player_person FOREIGN KEY (Player_ID) REFERENCES PERSON(PERSON_ID),
 CONSTRAINT fk_player_team FOREIGN KEY (Team_Name) REFERENCES TEAM(TEAM_NAME)
);
SELECT * from Person;

-- Statistics Table
create table Statistics
(
 Statistics_ID smallint NOT NULL,
 Player_ID smallint NOT NULL,
 PPG DECIMAL NOT NULL,
 RPG DECIMAL NOT NULL, 
 APG DECIMAL NOT NULL, 
 FGP DECIMAL NOT NULL,
 CONSTRAINT pk_statistics PRIMARY KEY (Statistics_ID, Player_ID),
 CONSTRAINT fk_statistics_player FOREIGN KEY (Player_ID) REFERENCES PLAYER(Player_ID)
);

-- Game Table
create table Game
(
 Date_Played Date NOT NULL,
 Home_Team_Name varchar(25) NOT NULL,
 Home_Team_Score int,
 Away_Team_Name varchar(25) NOT NULL,
 Away_Team_Score int,
 CONSTRAINT pk_game PRIMARY KEY (Date_Played, Home_Team_Name),
 CONSTRAINT fk_game_hometeam FOREIGN KEY (Home_Team_Name) REFERENCES TEAM(Team_Name),
 CONSTRAINT fk_game_awayteam FOREIGN KEY (Away_Team_Name) REFERENCES TEAM(Team_Name)
);

-- Select from tables
select * from GAME;
select * from PERSON;
select * from PLAYER;
select * from COACH;
select * from STATISTICS;
select * from TEAM;