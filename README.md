# IPL Database Management Project

## 📌 Project Overview
This project focuses on analyzing the IPL (Indian Premier League) database using SQL. The database includes information about players, teams, matches, stadiums, and sponsorships. Various SQL queries are used to extract insights related to player performance, match analysis, and financial aspects like sponsorships.

## ⚡ Technologies Used
- **Database Management System:** MySQL / PostgreSQL
- **Query Language:** SQL (Joins, Subqueries, Aggregations)

## 📂 Database Structure
The database consists of the following tables:
- **Players** (PlayerID, PlayerName, TeamID, RunsScored, WicketsTaken, MatchesPlayed)
- **Teams** (TeamID, TeamName, City)
- **Matches** (MatchID, Team1ID, Team2ID, WinnerTeamID, StadiumID, MatchType)
- **Stadiums** (StadiumID, StadiumName, SeatingCapacity)
- **Sponsorships** (SponsorID, SponsorName, TeamID, SponsorshipAmount)
- **Tickets** (TicketID, MatchID, Price)

## 🔍 SQL Queries Used

### **Category 1: Player Performance and Team Management**
```sql
-- Top-performing players based on runs and wickets
SELECT PlayerName, RunsScored, WicketsTaken
FROM Players
ORDER BY RunsScored DESC, WicketsTaken DESC
LIMIT 5;
```

```sql
-- Most consistent players based on average runs and wickets
SELECT PlayerName, (RunsScored / MatchesPlayed) AS AvgRuns, (WicketsTaken / MatchesPlayed) AS AvgWickets
FROM Players
WHERE MatchesPlayed > 0
ORDER BY AvgRuns DESC, AvgWickets DESC;
```

```sql
-- Players and their team names (Join)
SELECT Players.PlayerName, Teams.TeamName
FROM Players
JOIN Teams ON Players.TeamID = Teams.TeamID;
```

```sql
-- Players in teams with sponsorships > 300,000,000 (Join)
SELECT Players.PlayerName, Teams.TeamName, Sponsorships.SponsorshipAmount
FROM Players
JOIN Teams ON Players.TeamID = Teams.TeamID
JOIN Sponsorships ON Teams.TeamID = Sponsorships.TeamID
WHERE Sponsorships.SponsorshipAmount > 300000000;
```

```sql
-- Player with the highest runs (Subquery)
SELECT PlayerName
FROM Players
WHERE RunsScored = (SELECT MAX(RunsScored) FROM Players);
```

### **Category 2: Match Analysis and Stadium Utilization**
```sql
-- Team performance in specific stadiums
SELECT Teams.TeamName, Stadiums.StadiumName, COUNT(*) AS Wins
FROM Matches
JOIN Teams ON Matches.WinnerTeamID = Teams.TeamID
JOIN Stadiums ON Matches.StadiumID = Stadiums.StadiumID
GROUP BY Teams.TeamName, Stadiums.StadiumName;
```

```sql
-- Matches played by type
SELECT MatchType, COUNT(*) AS MatchesPlayed, COUNT(WinnerTeamID) AS MatchesWon
FROM Matches
GROUP BY MatchType;
```

```sql
-- Matches played with team names (Join)
SELECT Matches.MatchID, T1.TeamName AS Team1, T2.TeamName AS Team2
FROM Matches
JOIN Teams T1 ON Matches.Team1ID = T1.TeamID
JOIN Teams T2 ON Matches.Team2ID = T2.TeamID;
```

### **Category 3: Sponsorship and Financial Insights**
```sql
-- Most valuable sponsors
SELECT SponsorName, SponsorshipAmount
FROM Sponsorships
ORDER BY SponsorshipAmount DESC
LIMIT 5;
```

```sql
-- Teams with highest sponsorship revenue
SELECT Teams.TeamName, SUM(Sponsorships.SponsorshipAmount) AS TotalSponsorship
FROM Sponsorships
JOIN Teams ON Sponsorships.TeamID = Teams.TeamID
GROUP BY Teams.TeamName
ORDER BY TotalSponsorship DESC;
```

## 🚀 How to Use This Project
1. Clone this repository:  
   ```sh
   git clone https://github.com/MontyVasita18/ipl-database-project.git
   ```
2. Import the SQL files into your MySQL/PostgreSQL database:
   ```sh
   mysql -u root -p < ipl_schema.sql
   mysql -u root -p < ipl_data.sql
   ```
3. Run the queries from `ipl_queries.sql` to analyze the data.

## 📢 Conclusion
This project provides valuable insights into IPL player performances, team sponsorships, and match trends using SQL queries. The database design and queries help analyze key financial and performance metrics efficiently.

