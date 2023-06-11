--Range Query--
SELECT pe.Last_Name, st.PPG, st.APG, st.RPG, st.FGP
FROM Statistics st
JOIN Person pe ON st.Player_ID = pe.Person_ID
AND st.PPG BETWEEN 20 AND 40;


-- b-tree
CREATE INDEX statistics_ppg_btree ON Statistics(PPG DESC);
DROP INDEX statistics_ppg_btree;
-- hash cluster
CREATE CLUSTER statistics_ppg_cluster
  (PPG INT)
HASHKEYS 100;
DROP CLUSTER statistics_ppg_cluster;

--Point Query
SELECT * FROM Game WHERE Home_Team_Name = 'Lakers' OR Away_Team_Name = 'Lakers';

-- b-tree
CREATE INDEX game_team_name_btree ON Game(Home_Team_Name, Away_Team_Name);
DROP INDEX game_team_name_btree;
-- hash cluster
CREATE CLUSTER game_team_name_cluster
  (Home_team_name VARCHAR(25), Away_team_name VARCHAR(25))
HASHKEYS 100;
DROP CLUSTER game_team_name_cluster;
