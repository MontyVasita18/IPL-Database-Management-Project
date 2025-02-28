-- Business Problems

#------------------------------------------------------------------------------------

#--Category 1: Player Performance and Team Management


--1. Identify the top-performing players across all teams based on their runs scored and wickets taken.
   
   SELECT PlayerName, RunsScored, WicketsTaken
   FROM Players
   ORDER BY RunsScored DESC, WicketsTaken DESC
   LIMIT 5;
   

--2. Determine the most consistent players in terms of performance over the matches played.
   
   SELECT PlayerName, (RunsScored / MatchesPlayed) AS AvgRuns, (WicketsTaken / MatchesPlayed) AS AvgWickets
   FROM Players
   WHERE MatchesPlayed > 0
   ORDER BY AvgRuns DESC, AvgWickets DESC;
   

-- Join Query--
--3. Find all players along with their team names.
   
   SELECT Players.PlayerName, Teams.TeamName
   FROM Players
   JOIN Teams ON Players.TeamID = Teams.TeamID;
   

--4. List all players who played for teams with sponsorship amounts greater than 300,000,000.
   
   SELECT Players.PlayerName, Teams.TeamName, Sponsorships.SponsorshipAmount
   FROM Players
   JOIN Teams ON Players.TeamID = Teams.TeamID
   JOIN Sponsorships ON Teams.TeamID = Sponsorships.TeamID
   WHERE Sponsorships.SponsorshipAmount > 300000000;
   

--SubQuery--
--5. Find the player with the highest runs scored.

   SELECT PlayerName
   FROM Players
   WHERE RunsScored = (SELECT MAX(RunsScored) FROM Players);
 

--6. List all teams with players who have scored more than the average runs scored.
   
   SELECT DISTINCT Teams.TeamName
   FROM Teams
   JOIN Players ON Teams.TeamID = Players.TeamID
   WHERE Players.RunsScored > (SELECT AVG(RunsScored) FROM Players);

#------------------------------------------------------------------------------------

# --Category 2: Match Analysis and Stadium Utilization



7. Analyze match outcomes to determine which teams perform better in specific stadiums.
   
   SELECT Teams.TeamName, Stadiums.StadiumName, COUNT(*) AS Wins
   FROM Matches
   JOIN Teams ON Matches.WinnerTeamID = Teams.TeamID
   JOIN Stadiums ON Matches.StadiumID = Stadiums.StadiumID
   GROUP BY Teams.TeamName, Stadiums.StadiumName;
   ```

--8. Identify trends in match results based on the type of match (league or playoffs).

   SELECT MatchType, COUNT(*) AS MatchesPlayed, COUNT(WinnerTeamID) AS MatchesWon
   FROM Matches
   GROUP BY MatchType;
   

-- **Join Query**
--9. List all matches played along with the names of the teams that participated.
  
   SELECT Matches.MatchID, T1.TeamName AS Team1, T2.TeamName AS Team2
   FROM Matches
   JOIN Teams T1 ON Matches.Team1ID = T1.TeamID
   JOIN Teams T2 ON Matches.Team2ID = T2.TeamID;


--10. Find the total revenue generated from ticket sales for each stadium.

   SELECT Stadiums.StadiumName, SUM(Tickets.Price) AS TotalRevenue
   FROM Tickets
   JOIN Matches ON Tickets.MatchID = Matches.MatchID
   JOIN Stadiums ON Matches.StadiumID = Stadiums.StadiumID
   GROUP BY Stadiums.StadiumName;

-- SubQuery--
11. Find the stadium with the highest seating capacity.

   SELECT StadiumName
   FROM Stadiums
   WHERE SeatingCapacity = (SELECT MAX(SeatingCapacity) FROM Stadiums);
 

-- 12. List matches played in stadiums with seating capacities above the average.

   SELECT Matches.MatchID, Stadiums.StadiumName
   FROM Matches
   JOIN Stadiums ON Matches.StadiumID = Stadiums.StadiumID
   WHERE Stadiums.SeatingCapacity > (SELECT AVG(SeatingCapacity) FROM Stadiums);
   ```

#------------------------------------------------------------------------------------

# -- Category 3: Sponsorship and Financial Insights--


--13. Identify the most valuable sponsors based on their sponsorship amounts.

   SELECT SponsorName, SponsorshipAmount
   FROM Sponsorships
   ORDER BY SponsorshipAmount DESC
   LIMIT 5;

--14. Determine which teams generate the highest sponsorship revenue.

   SELECT Teams.TeamName, SUM(Sponsorships.SponsorshipAmount) AS TotalSponsorship
   FROM Sponsorships
   JOIN Teams ON Sponsorships.TeamID = Teams.TeamID
   GROUP BY Teams.TeamName
   ORDER BY TotalSponsorship DESC;
   ```

-- Join Query
15. Find the sponsors for each team along with sponsorship amounts.
   ```sql
   SELECT Teams.TeamName, Sponsorships.SponsorName, Sponsorships.SponsorshipAmount
   FROM Sponsorships
   JOIN Teams ON Sponsorships.TeamID = Teams.TeamID;

-- 16. List sponsors who sponsor multiple teams.

   SELECT SponsorName, COUNT(DISTINCT TeamID) AS TeamsSponsored
   FROM Sponsorships
   GROUP BY SponsorName
   HAVING TeamsSponsored > 1;


-- Subquery 
17. Find the sponsor with the highest sponsorship amount.

   SELECT SponsorName
   FROM Sponsorships
   WHERE SponsorshipAmount = (SELECT MAX(SponsorshipAmount) FROM Sponsorships);
  

-- 18. List teams sponsored by sponsors contributing more than the average sponsorship amount.

   SELECT Teams.TeamName
   FROM Teams
   JOIN Sponsorships ON Teams.TeamID = Sponsorships.TeamID
   WHERE Sponsorships.SponsorshipAmount > (SELECT AVG(SponsorshipAmount) FROM Sponsorships);
   ```
