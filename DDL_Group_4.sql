 ----Game_Package_Details
CREATE TABLE Game_Package_Details(
    Package_ID number(10) PRIMARY KEY,
    Package_Name varchar(30) not null
    );
---- Game_Details

CREATE TABLE Game_Details (
    Game_ID number(10) PRIMARY KEY,
    Game_Name varchar(50) not null,
    Game_Platform varchar(30) not null,
    Game_release_date date not null,
    Game_sales int
    
    );
 ---- Emp_Details
CREATE TABLE Emp_Details (
    Emp_ID number(10) PRIMARY KEY,
    Emp_First_Name varchar(30) not null,
    Emp_Last_Name varchar(30) not null,
    Gender varchar(1),
    Emp_Department varchar(20),
    Emp_Type varchar(30),
    Emp_DOJ date,
    Emp_Salary int,
    Emp_Work_Location varchar(10),
    Game_ID number(10),
    Manager_ID number(10)
    );


   ----Bug_Management
CREATE TABLE Bug_Management (
    Bug_Emp_ID number(20),
    Bug_ID number(10),
    Emp_ID number(10),
    Bug_Report_Date DATE,
    Bug_Resolved_Date DATE
    ); 
    

----Package_Management
CREATE TABLE Package_Management(
    Package_EMP_ID int PRIMARY KEY,
    EMP_ID number (10), 
    Package_ID number (10),
    Deployement_Date Date
    );
    
--drop table Bug_Details;
    
----Bug_Details
CREATE TABLE Bug_Details (
    Bug_ID NUMBER(10) PRIMARY KEY,
    Game_ID number(10),
    Bug_Details VARCHAR(30),
    Bug_Type VARCHAR(30),
    Bug_Severity VARCHAR(30),
    Bug_Status varchar(10),
    Package_Id number(10)
    );

         

----Bug_Fix_Document
CREATE TABLE Bug_Fix_Document (
    Bug_Doc_ID varchar(20) PRIMARY KEY,
    Bug_Doc_Name varchar(30) not null,
    Bug_ID NUMBER(10)
    );

----Document_Management
CREATE TABLE Document_Management (
    Doc_Emp_ID number(20),
    Bug_Doc_ID number(10),
    Emp_ID number(10),
    Doc_Created_Date DATE
    );
    




    

