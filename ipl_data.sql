-- INSERTING RECORDS IN TEAMS TABLE


INSERT INTO Teams (TeamID, TeamName, HomeCity, Coach)
VALUES
  (1, 'Mumbai Indians', 'Mumbai', 'Rohit Sharma'),
  (2, 'Chennai Super Kings', 'Chennai', 'MS Dhoni'),
  (3, 'Royal Challengers Bangalore', 'Bangalore', 'Faf du Plessis'),
  (4, 'Kolkata Knight Riders', 'Kolkata', 'Nitish Rana'),
  (5, 'Delhi Capitals', 'Delhi', 'David Warner'),
  (6, 'Sunrisers Hyderabad', 'Hyderabad', 'Aiden Markram'),
  (7, 'Rajasthan Royals', 'Jaipur', 'Sanju Samson'),
  (8, 'Gujarat Titans', 'Ahmedabad', 'Hardik Pandya'),
  (9, 'Lucknow Super Giants', 'Lucknow', 'KL Rahul'),
  (10, 'Punjab Kings', 'Mohali', 'Shikhar Dhawan');


  
-- INSERTING RECORDS IN Players TABLE 
 
INSERT INTO Players (PlayerID, PlayerName, TeamID, Role, MatchesPlayed, RunsScored, WicketsTaken)
VALUES
  (1, 'Rohit Sharma', 1, 'Captain/Batsman', 250, 5000, 10),
  (2, 'Virat Kohli', 3, 'Batsman', 250, 6000, 0),
  (3, 'MS Dhoni', 2, 'Wicket-keeper/Captain', 250, 4500, 100),
  (4, 'Jasprit Bumrah', 1, 'Bowler', 200, 500, 300),
  (5, 'Ravindra Jadeja', 2, 'All-rounder', 220, 2500, 250),
  (6, 'KL Rahul', 9, 'Batsman/Wicket-keeper', 150, 3000, 10),
  (7, 'Hardik Pandya', 8, 'All-rounder/Captain', 100, 1500, 100),
  (8, 'Bhuvneshwar Kumar', 6, 'Bowler', 180, 500, 200),
  (9, 'Yuzvendra Chahal', 3, 'Bowler', 200, 200, 350),
  (10, 'Rashid Khan', 6, 'Bowler', 150, 100, 250),
  (11, 'Shubman Gill', 8, 'Batsman', 120, 2500, 0),
  (12, 'Ruturaj Gaikwad', 2, 'Batsman', 80, 1800, 0),
  (13, 'Deepak Chahar', 2, 'Bowler', 120, 300, 150),
  (14, 'Sanju Samson', 7, 'Batsman/Captain', 140, 3200, 5),
  (15, 'Dinesh Karthik', 3, 'Wicket-keeper', 230, 3000, 5),
  (16, 'Mohammed Shami', 8, 'Bowler', 180, 200, 210),
  (17, 'Ravi Bishnoi', 9, 'Bowler', 100, 50, 120),
  (18, 'David Warner', 5, 'Batsman/Captain', 250, 5800, 0),
  (19, 'Aiden Markram', 6, 'All-rounder/Captain', 150, 2200, 80),
  (20, 'Chris Morris', 7, 'All-rounder', 180, 1800, 200),
  (21, 'Marcus Stoinis', 9, 'All-rounder', 150, 2100, 90),
  (22, 'Andre Russell', 4, 'All-rounder', 200, 2800, 250),
  (23, 'Quinton de Kock', 9, 'Wicket-keeper/Batsman', 170, 4000, 0),
  (24, 'Pat Cummins', 4, 'Bowler', 110, 500, 120),
  (25, 'Trent Boult', 7, 'Bowler', 140, 100, 180);


  
-- INSERTING RECORDS IN Stadiums TABLE 
  
INSERT INTO Stadiums (StadiumID, StadiumName, Location, SeatingCapacity)
VALUES
  (1, 'Wankhede Stadium', 'Mumbai', 33000),
  (2, 'Chepauk Stadium', 'Chennai', 49000),
  (3, 'M Chinnaswamy Stadium', 'Bangalore', 40000),
  (4, 'Eden Gardens', 'Kolkata', 66000),
  (5, 'Arun Jaitley Stadium', 'Delhi', 55000),
  (6, 'Sawai Mansingh Stadium', 'Jaipur', 30000),
  (7, 'Rajiv Gandhi International Cricket Stadium', 'Hyderabad', 55000),
  (8, 'Narendra Modi Stadium', 'Ahmedabad', 110000),
  (9, 'BRSABV Ekana Cricket Stadium', 'Lucknow', 50000),
  (10, 'IS Bindra Stadium', 'Mohali', 26000);


  
  
-- INSERTING RECORDS IN Sponsorships TABLE  
  
INSERT INTO Sponsorships (SponsorID, SponsorName, TeamID, SponsorshipAmount)
VALUES
  (1, 'Reliance Industries', 1, 500000000),
  (2, 'Chennai Super Kings', 2, 400000000),
  (3, 'Royal Challengers Bangalore', 3, 350000000),
  (4, 'Kolkata Knight Riders', 4, 300000000),
  (5, 'JSW Group', 5, 250000000),
  (6, 'Sun TV Network', 6, 200000000),
  (7, 'CVC Capital Partners', 7, 150000000),
  (8, 'Adani Group', 8, 100000000),
  (9, 'RP-SG Group', 9, 50000000),
  (10, 'Preity Zinta', 10, 30000000),
  (11, 'Tata Group', 1, 300000000),
  (12, 'Jio', 1, 200000000),
  (13, 'India Cements', 2, 350000000),
  (14, 'TVS Motors', 2, 250000000),
  (15, 'Exide Industries', 3, 320000000),
  (16, 'Nippon Paints', 3, 150000000),
  (17, 'Red Chillies Entertainment', 4, 400000000),
  (18, 'Lux Cozi', 4, 200000000),
  (19, 'Amul', 5, 180000000),
  (20, 'Hero MotoCorp', 5, 120000000),
  (21, 'Sun Pharma', 6, 190000000),
  (22, 'Acko', 6, 110000000),
  (23, 'Happilo', 7, 140000000),
  (24, 'Kingfisher', 7, 100000000),
  (25, 'Zydus', 8, 150000000),
  (26, 'Torrent Group', 8, 80000000),
  (27, 'BYJUs', 9, 70000000),
  (28, 'PhonePe', 9, 60000000),
  (29, 'MRF Tyres', 10, 90000000),
  (30, 'Hindustan Times', 10, 40000000);

  
  
  
-- INSERTING RECORDS IN Matches TABLE    
  
INSERT INTO Matches (MatchID, StadiumID, Team1ID, Team2ID, MatchDate, WinnerTeamID, MatchType)
VALUES
  (1, 1, 1, 2, '2023-04-01', 1, 'League'),
  (2, 2, 3, 4, '2023-04-02', 3, 'League'),
  (3, 3, 5, 6, '2023-04-03', 5, 'League'),
  (4, 4, 7, 8, '2023-04-04', 8, 'League'),
  (5, 5, 9, 10, '2023-04-05', 9, 'League'),
  (6, 1, 1, 3, '2023-04-06', 1, 'League'),
  (7, 2, 2, 4, '2023-04-07', 2, 'League'),
  (8, 3, 5, 7, '2023-04-08', 5, 'League'),
  (9, 4, 6, 8, '2023-04-09', 6, 'League'),
  (10, 5, 9, 10, '2023-04-10', 10, 'League'),
  (11, 1, 1, 6, '2023-04-11', 1, 'League'),
  (12, 2, 2, 7, '2023-04-12', 7, 'League'),
  (13, 3, 3, 8, '2023-04-13', 8, 'League'),
  (14, 4, 4, 9, '2023-04-14', 4, 'League'),
  (15, 5, 5, 10, '2023-04-15', 10, 'League'),
  (16, 1, 1, 3, '2023-04-16', 1, 'League'),
  (17, 2, 2, 5, '2023-04-17', 2, 'League'),
  (18, 3, 6, 7, '2023-04-18', 7, 'League'),
  (19, 4, 8, 9, '2023-04-19', 8, 'League'),
  (20, 5, 10, 1, '2023-04-20', 10, 'League');
  

 
 

-- INSERTING RECORDS IN Tickets TABLE  
  
INSERT INTO Tickets (TicketID, MatchID, CustomerName, Price, BookingDate)
VALUES
  (1, 1, 'John Doe', 1000, '2023-03-25'),
  (2, 2, 'Jane Smith', 800, '2023-03-26'),
  (3, 3, 'Mike Johnson', 1200, '2023-03-27'),
  (4, 4, 'Emily Brown', 900, '2023-03-28'),
  (5, 5, 'David Lee', 1100, '2023-03-29'),
  (6, 6, 'Sarah Kim', 1050, '2023-03-30'),
  (7, 7, 'Thomas Lee', 950, '2023-03-31'),
  (8, 8, 'Olivia White', 1150, '2023-04-01'),
  (9, 9, 'Benjamin Martin', 1025, '2023-04-02'),
  (10, 10, 'Ava Johnson', 975, '2023-04-03'),
  (11, 1, 'Ankit Verma', 1250, '2023-03-26'),
  (12, 2, 'Meera Chopra', 950, '2023-03-27'),
  (13, 3, 'Karan Gupta', 1100, '2023-03-28'),
  (14, 4, 'Priya Sharma', 1020, '2023-03-29'),
  (15, 5, 'Rajesh Khanna', 980, '2023-03-30'),
  (16, 6, 'Alok Tiwari', 1130, '2023-03-31'),
  (17, 7, 'Neha Joshi', 970, '2023-04-01'),
  (18, 8, 'Rahul Singh', 1170, '2023-04-02'),
  (19, 9, 'Sneha Reddy', 1010, '2023-04-03'),
  (20, 10, 'Vikas Jain', 960, '2023-04-04');