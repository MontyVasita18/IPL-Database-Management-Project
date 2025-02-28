CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(100) NOT NULL,
    HomeCity VARCHAR(50) NOT NULL,
    Coach VARCHAR(50) NOT NULL
);

CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    PlayerName VARCHAR(100) NOT NULL,
    TeamID INT NOT NULL,
    Role VARCHAR(50) NOT NULL,
    MatchesPlayed INT DEFAULT 0,
    RunsScored INT DEFAULT 0,
    WicketsTaken INT DEFAULT 0,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Stadiums (
    StadiumID INT PRIMARY KEY,
    StadiumName  VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    SeatingCapacity INT NOT NULL
);

CREATE TABLE Matches (
    MatchID INT PRIMARY KEY,
    StadiumID INT NOT NULL,
    Team1ID INT NOT NULL,
    Team2ID INT NOT NULL,
    MatchDate DATE NOT NULL,
    WinnerTeamID INT,
    MatchType VARCHAR(50) NOT NULL,
    FOREIGN KEY (StadiumID) REFERENCES Stadiums(StadiumID),
    FOREIGN KEY (Team1ID) REFERENCES Teams(TeamID),
    FOREIGN KEY (Team2ID) REFERENCES Teams(TeamID),
    FOREIGN KEY (WinnerTeamID) REFERENCES Teams(TeamID)
);



CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    MatchID INT NOT NULL,
    CustomerName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    BookingDate DATE NOT NULL,
    FOREIGN KEY (MatchID) REFERENCES Matches(MatchID)
);


CREATE TABLE Sponsorships (
    SponsorID INT PRIMARY KEY,
    SponsorName VARCHAR(100) NOT NULL,
    TeamID INT NOT NULL,
    SponsorshipAmount DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);