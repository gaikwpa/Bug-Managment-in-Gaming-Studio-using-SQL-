----Bug_Details

alter table Bug_Details
add constraint BugPacakgeID_fk foreign key (Package_ID)
references Game_Package_Details (Package_ID)
;

alter table Bug_Details
add constraint BugGameID_fk foreign key (Game_ID)
references Game_Details (Game_ID)
;

--Emp_Details
alter table Emp_Details
add constraint GameEmpID_fk foreign key (Game_ID)
references Game_Details (Game_ID)
;

alter table Emp_Details
add constraint EmpManagerID_fk foreign key (Manager_ID)
references Emp_Details (Emp_ID)
;

----Bug_Management

alter table Bug_Management 
add constraint Bug_Management_Emp_ID_fk foreign key (Emp_ID)
references EMP_Details (Emp_ID)
;

alter table Bug_Management 
add constraint Bug_Management_Bug_ID_fk foreign key (Bug_ID)
references Bug_Details (Bug_ID)
;

---Package_Management
alter table Package_Management 
add constraint PackageID_fk foreign key (Package_ID)
references Game_Package_Details (Package_ID)
;

alter table Package_Management 
add constraint Package_ID_fk foreign key (EMP_ID)
references EMP_Details (EMP_ID)
;



----Bug_Fix_Document

alter table Bug_Fix_Document
add constraint BugID_fk foreign key (Bug_ID)
references Bug_Details (Bug_ID)
;

---Document_Management

alter table Document_Management
add constraint DocID_fk foreign key (Bug_Doc_ID)
references Bug_Fix_Document (Bug_Doc_ID)
;

alter table Document_Management 
add constraint Doc_ID_fk foreign key (EMP_ID)
references EMP_Details (EMP_ID)
;