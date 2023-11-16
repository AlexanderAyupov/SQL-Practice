/*
WITH STATEMENT
CTE Common Table Expression !!!This only exists within the scope of statement we are about to write.
We can just do FirstName and AvgSalary and we will have only this two columns and we do not have to go through and write it out again, 
it is a subquery and we are selecting it from our CTE temp table 
Query has to be execute incl. Select statement below
*/

WITH CTE_Employee as 
(Select FirstName, LastName, Gender, Salary
, Count(GENDER) OVER (Partition By Gender) AS TotalGender 
, AVG(Salary) OVER (Partition By Salary) AS AvgSalary
From EmployeeDemographics Dem
JOIN EmployeeSalary Sal
 ON Dem.EmployeeID = Sal.EmployeeID
)

Select FirstName, AvgSalary
From CTE_Employee