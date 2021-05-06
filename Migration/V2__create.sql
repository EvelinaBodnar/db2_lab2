DROP TABLE IF EXISTS Location;
DROP TABLE IF EXISTS Institution;
DROP TABLE IF EXISTS Participant;
DROP TABLE IF EXISTS TestResult;


CREATE TABLE Location (
    loc_id SERIAL PRIMARY KEY,
    Territory_Type VARCHAR(40),
    Territory_Name VARCHAR(255),
    Area VARCHAR(255),
    Region VARCHAR(255)
);


CREATE TABLE Institution (
    Institution_Name VARCHAR(255) PRIMARY KEY,
    Institution_Type VARCHAR(255),
    loc_id SERIAL REFERENCES Location(loc_id),
    Institution_Parent VARCHAR(255)
);


CREATE TABLE Participant (
    ID VARCHAR(40) PRIMARY KEY,
    birthday INT,
	Sex_Type VARCHAR(40),
    loc_id SERIAL REFERENCES Location(loc_id),
    Type_of_part VARCHAR(255),
    ClassProfile VARCHAR(255),
    Language VARCHAR(255),
    Institution_Name VARCHAR(255) REFERENCES Institution(Institution_Name)
);


CREATE TABLE Result (
    OutID VARCHAR(40) REFERENCES Participant(OutID),
    Test_Name VARCHAR(255),
    Year INT,
    Language VARCHAR(255),
    TestResult VARCHAR(255),
    Mark_DPA VARCHAR(255),
    Mark_100 REAL,
    Mark_12 REAL,
    Mark REAL,
    Adapt VARCHAR(10),
    PTName VARCHAR(255) REFERENCES Institution(Institution_Name),
    PRIMARY KEY(OutID, Test_Name, Year)
);
