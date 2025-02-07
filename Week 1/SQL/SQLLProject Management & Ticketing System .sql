--CREATE TABLE Projects
CREATE TABLE Projects (
    Project_ID INT PRIMARY KEY identity (1,1),  
    Project_Code VARCHAR(50) ,                   
    Project_Status VARCHAR(50) ,
    Calendar VARCHAR(50)  ,
    Hours  INT ,
    Week   VARCHAR(50) ,
    Forecasted_Hours  INT ,
    Budget_Hours  INT ,
    Service_type VARCHAR(50),
    Period_From VARCHAR(50) ,
    Period_To VARCHAR(50) ,
    Cost_Rate FLOAT,
    Department VARCHAR(50) 
);

--INSERT TABLE Projects
BULK INSERT Projects
FROM 'C:\Users\LEGION\OneDrive\Desktop\shimaa\project\Project Table.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 -- Skip header row 
	);

--show Table Tickets
	select *
	FROM Projects

--CREATE TABLE Tickets

CREATE TABLE Tickets (
    Ticket_Number VARCHAR(50) PRIMARY KEY, 
	Project_Code VARCHAR(50),
    Start_Date VARCHAR(50),
    End_Date VARCHAR(50),
    Stage VARCHAR(50),
    Site VARCHAR(50),
    Severity VARCHAR(50),
    Ticket_Origin VARCHAR(100)
);

--INSERT TABLE Tickets
BULK INSERT Tickets
FROM 'C:\Users\LEGION\OneDrive\Desktop\shimaa\project\Ticket Table.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 -- Skip header row 
	);

--show Table Tickets
	select *
	from Tickets


--TABLERelation (Project_Tickets)
CREATE TABLE Project_Tickets (
    ID INT PRIMARY KEY identity (1,1),
    Project_ID INT NOT NULL,
    Ticket_Number VARCHAR(50) NOT NULL,
    FOREIGN KEY (Project_ID) REFERENCES Projects(Project_ID),
    FOREIGN KEY (Ticket_Number) REFERENCES Tickets(Ticket_Number),
    UNIQUE (Project_ID, Ticket_Number)
	 );


