--
CREATE INDEX game_team_score_btree ON Game(Home_Team_Score, Away_Team_Score);
DROP INDEX game_team_score_btree;

SELECT * FROM Game
WHERE Home_Team_Score BETWEEN 0 AND 100
  AND Away_Team_Score BETWEEN 0 AND 100;

--
CREATE CLUSTER game_team_name_cluster
  (Home_team_name VARCHAR(25), Away_team_name VARCHAR(25))
HASHKEYS 100;
DROP Cluster team_cluster;

select * from Game 
WHERE Home_Team_Name = 'Lakers' OR Away_Team_Name = 'Lakers';

--
CREATE BITMAP INDEX team_city_bitmap
ON Team(City);
DROP INDEX team_city_bitmap;

CREATE BITMAP INDEX game_team_name_bitmap ON Game(Home_Team_Name, Away_Team_Name);
DROP INDEX game_team_name_bitmap;

SELECT * FROM Team
WHERE City = 'Boston' OR City = 'Dallas';

--
create table PersonHash
(
 Person_ID smallint NOT NULL,
 First_Name varchar(30) NOT NULL,
 Last_Name varchar(30) NOT NULL,
 DOB Date NOT NULL,
 CONSTRAINT pkhash_person PRIMARY KEY (Person_ID)
) 
ORGANIZATION INDEX;
DROP table personHASH;

SELECT * FROM Statistics s
JOIN Person p ON s.Player_ID = p.Person_ID
WHERE p.First_Name = 'Lebron'; 

--
CREATE CLUSTER person_firstname_cluster 
(first_name VARCHAR2(50))
HASHKEYS 100;
  
CREATE TABLE PersonHash
(
Person_ID smallint NOT NULL,
First_Name varchar(30) NOT NULL,
Last_Name varchar(30) NOT NULL,
DOB Date NOT NULL,
CONSTRAINT pk_person PRIMARY KEY (Person_ID)
)
CLUSTER person_firstname_cluster(First_Name);

Select * FROM Person 
WHERE First_Name = 'Lebron';