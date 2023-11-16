/*
Union, Union All
*/

Select *
From SQLTutorial..EmployeeDemographics
UNION 
Select *
From SQLTutorial..WareHouseEmployeeDemographics

Select *
From SQLTutorial..EmployeeDemographics
UNION All
Select *
From SQLTutorial..WareHouseEmployeeDemographics
Order By EmployeeID

Select EmployeeID, FirstName AS NameJob, Age AS SalaryAge
From SQLTutorial..EmployeeDemographics
UNION
Select EmployeeID, JobTitle, Salary
From SQLTutorial..EmployeeSalary




Select *
From SQLTutorial..EmployeeDemographics Dem
	full outer join SQLTutorial..WareHouseEmployeeDemographics Ware
	ON Dem.EmployeeID = Ware.EmployeeID