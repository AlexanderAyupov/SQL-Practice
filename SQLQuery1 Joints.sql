/*
INNER JOIN, Full outer, right, left join
*/

Select *
From SQLTutorial..EmployeeDemographics
	inner join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From SQLTutorial..EmployeeDemographics
	Full outer join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

		
Select *
From SQLTutorial..EmployeeDemographics
	Right outer join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From SQLTutorial..EmployeeDemographics
Left outer join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

/*Real life examples
*/

Select EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial..EmployeeDemographics
	inner join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

Select Employeedemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial..EmployeeDemographics
	inner join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

Select Employeedemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial..EmployeeDemographics
	Full outer join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

/* Right, Left Join Practice
*/

Select Employeedemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial..EmployeeDemographics
	Right outer join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

Select Employeedemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial..EmployeeDemographics
	Left outer join SQLTutorial..EmployeeSalary
		ON Employeedemographics.EmployeeID = EmployeeSalary.EmployeeID

/* Use cases
*/
/* Find out highest pay employee excluding Michael Scott in his branch
*/

Select EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From SQLTutorial..EmployeeDemographics
	inner join SQLTutorial..EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHere FirstName <> 'Michael'
Order BY Salary DESC

/* Kevin thinks he made a mistake calculating average salary of Salesmans
*/
Select JobTitle, AVG(Salary) AS AVGSAL
From SQLTutorial..EmployeeDemographics
	inner join SQLTutorial..EmployeeSalary
		ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where JobTitle = 'Salesman'
Group By JobTitle

