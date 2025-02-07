----------------------------------CREATE DATABASE------------------------------
/*Create Database*/
create DATABASE Usecase;
Drop DATABASE Usecase;
/*use Database*/
Use Usecase;
-------------------------------Creat Table Hours--------------------------------------------------
/*Create Table Engineering*/
Create Table Engineering 
(
Ticket_Number varchar(50) Primary Key NOT NULL, 					
Project_Code	 varchar(50) ,
Start_Date  date,
End_Date	date,
Stage	 varchar(50),
Site  varchar(50) ,
Severity	 varchar(50),
Ticket_Origin	  varchar(50),
);
/*Create Table Hours*/
Create Table Hours 
(
Ticket_Number varchar(50) NOT NULL,
Project_Code varchar(50)  NOT NULL, 
Project_Status	 varchar(50),
Calendar varchar(50),
Hours	int,
Week	 varchar(50),
Forecasted_hours  int ,
Budget_Hours	 int ,
Service_type	  varchar(50),
Period_From	 varchar(50),
Period_To varchar(50),
Cost_Rate	Float,
Department varchar(50)
 CONSTRAINT FK_Project FOREIGN KEY (Ticket_Number) REFERENCES Engineering (Ticket_Number)
---CONSTRAINT FK_Project FOREIGN KEY() refrences tablename()---
);
----------------------------------INSERT EXCEL FILE--------------------------------------------------------
/* Hours*/
BULK INSERT Hours 
FROM 'D:\Data Analysis\Project\Project_2\Week 1\SQL\Hours.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 -- Skip header row
);
/*Engineering*/
BULK INSERT Engineering 
FROM 'D:\Data Analysis\Project\Project_2\Week 1\SQL\Engineering.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 -- Skip header row
);
---------------------------Select Hours-----------------------------------------------
/*Select all data*/
Select * From Hours;
/*Select Status 'Under Devlopment'*/
Select project_Status,COUNT(*) AS Total_Projects From Hours
Group By project_Status 
Having project_Status = 'Under Development';
/*Select Status 'Open'*/
Select project_Status,COUNT(*) AS Total_Projects From Hours
Group By project_Status 
Having project_Status = 'Open';
/*Cleaning*/
Select * 
INTO Clean_Hours
From Hours
Where Project_Status IS NOT NULL; 
--------------------------NULL TO 0-------------------------------------
UPDATE Hours
SET Service_type =0
Where Service_type IS NULL ;
SELECT * FROM  Hours;
/*Order Week ASC*/
Select * From Clean_Hours
Order By Project_Code ASC;
-------------------------Select * From Engineering;---------------------------
Select * From Engineering;
Select Site,count(*) as Site
From Engineering
group by Site
Having Site ='Russia'
-------------------------------------------------------------------------------------
Select * From Engineering
Order By Project_Code ASC;
Select * From Clean_Hours
Order By Week ASC;
------------------------------Joinall table-------------------------
Select h.*,e.*
From Hours h
Join Engineering e On h.Ticket_Number=e.Ticket_Number;
------------------------------Joinall table-------------------------
Select h.Project_Code,h.Project_Status,h.Calendar,h.Hours,h.Week,
h.Forecasted_hours,h.Budget_Hours,h.Service_type,h.Period_From,h.Period_To,Cost_Rate,h.Department,
e.Start_Date,e.End_Date,e.Stage,e.Site,e.Severity,e.Ticket_Origin
INTO Clean_User_Case
From Hours h
Join Engineering e On h.Ticket_Number=e.Ticket_Number;
---------------------------------Jouin specific Site Russia---------------------
Select h.project_Status,h.Forecasted_hours,e.Stage,e.Site
From Hours h
Join Engineering e On h.Ticket_Number=e.Ticket_Number
Where  e.site='Russia';