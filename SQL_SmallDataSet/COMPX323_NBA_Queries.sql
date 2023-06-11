-- Home Favourties
SELECT TeamWins, TeamLosses 
FROM (SELECT COUNT(*) AS TeamWins FROM Game 
WHERE(Home_Team_Name = 'Lakers' AND(Home_Team_Score > Away_Team_Score))OR(Away_Team_Name = 'Lakers' AND(Home_Team_Score < Away_Team_Score))),  
(SELECT COUNT(*) AS TeamLosses FROM Game 
WHERE(Home_Team_Name = 'Lakers' AND(Home_Team_Score < Away_Team_Score))OR(Away_Team_Name = 'Lakers' AND(Home_Team_Score > Away_Team_Score)));

SELECT st.PPG, st.APG, st.RPG, st.FGP FROM Statistics st, Person pe Where pe.First_Name = 'D''angelo' AND pe.Person_ID = st.Player_ID;

-- Game Data
SELECT * FROM Game ORDER BY Date_Played DESC;

-- Player Traditional Stats (Only players that play for a team)
SELECT pe.Last_Name, st.PPG, st.APG, st.RPG, st.FGP FROM Statistics st, Person pe, Player pl 
WHERE pe.Person_ID = st.Player_ID AND pe.Person_ID = pl.Player_ID AND pl.Team_Name IS NOT NULL ORDER BY st.PPG DESC;

-- Player Advanced Stats
SELECT pe.Last_Name, ROUND((st.PPG / total.Total_Points)*100, 2) AS TeamPPG, ROUND((st.APG / total.Total_Assists)*100, 2) AS TeamAPG, ROUND((st.RPG / total.Total_Rebounds)*100, 2) AS TeamRPG
FROM Statistics st
JOIN Player pl ON st.Player_ID = pl.Player_ID
JOIN (SELECT Team_Name, SUM(st.PPG) AS Total_Points, SUM(st.APG) AS Total_Assists, SUM(st.RPG) AS Total_Rebounds
      FROM Statistics st
      JOIN Player pl ON st.Player_ID = pl.Player_ID
      GROUP BY Team_Name) total
  ON pl.Team_Name = total.Team_Name
JOIN Person pe ON st.Player_ID = pe.Person_ID
ORDER BY TeamPPG DESC;

-- Team Traditional Stats
SELECT team_name, SUM(wins) AS total_wins, SUM(losses) AS total_losses FROM( SELECT Home_Team_Name AS team_name, CASE WHEN Home_Team_Score > Away_Team_Score THEN 1 ELSE 0 END AS wins, CASE WHEN Home_Team_Score < Away_Team_Score THEN 1 ELSE 0 END AS losses FROM game UNION ALL SELECT Away_Team_Name AS team_name, CASE WHEN Home_Team_Score < Away_Team_Score THEN 1 ELSE 0 END AS wins, CASE WHEN Home_Team_Score > Away_Team_Score THEN 1 ELSE 0 END AS losses FROM game ) GROUP BY team_name ORDER BY total_wins DESC;

-- Team Advanced Stats
SELECT Team_Name, ROUND(SUM(Game_Score)/Count(Game_Score), 2) AS ORating, ROUND(SUM(Opp_Game_Score)/Count(Game_Score), 2) AS DRating, ROUND((SUM(Game_Score)/Count(Game_Score))-(SUM(Opp_Game_Score)/Count(Game_Score)), 2) AS Net_Rating
FROM (SELECT Home_Team_Name AS Team_Name, Home_Team_Score AS Game_Score, Away_Team_Score AS Opp_Game_Score FROM Game UNION ALL SELECT Away_Team_Name AS Team_Name, Away_Team_Score AS Game_Score, Home_Team_Score AS Opp_Game_Score FROM Game)
GROUP BY Team_Name ORDER BY Net_Rating DESC;

--Favourites Selection
SELECT City, Team_Name FROM Team ORDER BY City ASC;
SELECT pe.First_Name, pe.Last_Name FROM Person pe JOIN Statistics st ON pe.Person_ID = st.Player_ID ORDER BY st.PPG DESC;

-- Add Game Selection
SELECT * FROM Game;
SELECT date_played, home_team_name, Away_Team_Name FROM Game;

INSERT INTO Game VALUES (TO_DATE('21-11-2023', 'DD-MM-YYYY'), 'Celtics', 124, 'Mavericks', 120);

DELETE FROM Game WHERE date_played = TO_DATE('23-05-2023', 'DD-MM-YYYY') AND home_team_name = 'Lakers';
