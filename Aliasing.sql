/*
Aliasing columns
*/

Select FirstName AS Fname
From SQLTutorial.dbo.EmployeeDemographics

Select FirstName + ' ' + LastName AS FullName
From SQLTutorial..EmployeeDemographics

/*

*/
Select FirstName Fname
From SQLTutorial..EmployeeDemographics

Select AVG(Age) AS AvgAge
From SQLTutorial..EmployeeDemographics
Group By Age
Having Age is not null
/*
Aliasing tables
*/
Select Demo.EmployeeID, Sal.EmployeeID
From SQLTutorial.dbo.EmployeeDemographics AS Demo
	Join SQLTutorial.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
/*
Equal to, but look way more messy because we have to reference and each time put the entire table nam
*/

Select EmployeeDemographics.EmployeeID, EmployeeSalary.EmployeeID
From SQLTutorial..EmployeeDemographics
	Join SQLTutorial..EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select Demo.EmployeeID, Demo.FirstName, Sal.JobTitle, Ware.Age
From SQLTutorial..EmployeeDemographics AS Demo
	Join SQLTutorial..EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
	Full outer Join SQLTutorial..WareHouseEmployeeDemographics AS Ware
	ON Demo.EmployeeID = Ware.EmployeeID

	Select *
	From SQLTutorial..WareHouseEmployeeDemographics