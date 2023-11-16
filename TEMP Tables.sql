/*
Temp tables
*/
DROP TABLE IF EXISTS #temp_Employee
CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

Select *
From #temp_Employee

INSERT INTO #temp_Employee VALUES(
1001, 'HR', 45000)

INSERT INTO #temp_Employee
Select *
From SQLTutorial..EmployeeSalary

/*
Actual use of Temp table, a bit more advance
*/
--DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2 (
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee2
Select JobTitle, Count(JobTitle), AVG(Age), AVG(Salary)
From SQLTutorial..EmployeeDemographics Dem
JOIN SQLTutorial..EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID
Group By JobTitle

Select *
From #temp_Employee2



