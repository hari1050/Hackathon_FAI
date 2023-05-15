Create table Employee
(
	EmpId int primary key identity(1, 1),
	EmpName varchar(50) NOT NULL,
	EmpSalary money NOT NULL,
	EmpManagerID int,	
)
Insert into Employee values('Rohit',20000, 3)
Insert into Employee values('Sangeeta',12000, 5)
Insert into Employee values('Sanjay',10000, 5)
Insert into Employee values('Arun',25000, 3)
Insert into Employee values('Zaheer',30000,null)

select e1.EmpName Emp,
  e2.EmpName Mgr
from employee e1
left join employee e2
  on e1.EmpManagerID = e2.EmpId