/*
Partition By
*/

Select FirstName, LastName, Gender, Salary
,Count(GENDER) OVER (Partition By Gender) AS TotalGender 
From EmployeeDemographics Dem
 JOIN EmployeeSalary Sal
 ON Dem.EmployeeID = Sal.EmployeeID
 /*
Difference comparison to GROUP BY Statement
*/
 Select FirstName, LastName, Gender, Salary, Count(GENDER)
From EmployeeDemographics Dem
 JOIN EmployeeSalary Sal
 ON Dem.EmployeeID = Sal.EmployeeID
 Group BY FirstName, LastName, Gender, Salary

Select FirstName, LastName, Gender, Salary, JobTitle
, Count(JobTitle) OVER (Partition By Jobtitle) AS TotalJob
, AVG(Salary) OVER (Partition By Jobtitle) AS AvgSalary
From EmployeeDemographics Dem
 JOIN EmployeeSalary Sal
 ON Dem.EmployeeID = Sal.EmployeeID
--Where Salary > '450000'

/*
Average Salary per JobTitle
*/
Select Jobtitle, AVg(Salary)
From SQLTutorial..EmployeeSalary Sal
 Group by JobTitle


 Select FirstName, LastName, Gender, Salary, Count(GENDER)
From SQLTutorial..EmployeeDemographics Dem
 JOIN SQLTutorial..EmployeeSalary Sal
 ON Dem.EmployeeID = Sal.EmployeeID
 Group By FirstName, LastName, Gender, Salary


 
Select FirstName, LastName, Gender, Salary, JobTitle
,Count(JobTitle) OVER()
From [SQL tutorial]..EmployeeDemographics Dem
JOIN [SQL tutorial]..EmployeeSalary Sal
 ON Dem.EmployeeID = Sal.EmployeeID
