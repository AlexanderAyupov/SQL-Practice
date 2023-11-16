/* Case Statement- 
WHEN, THEN
ELSE
END
*/

Select FirstName, LastName, Age,
CASE
	WHEN AGE > 35 THEN 'Old'
	When AGE = 38 THEN 'Stanley'
	ELSE 'Teenager'
END
From SQLTutorial..EmployeeDemographics
Where age is not null
order by Age

/* Only Important to note if there are multiple conditions that meets the criteria only first condition is in the output- Stanley
*/

Select FirstName, LastName, Age,
CASE
	When AGE = 38 THEN 'Stanley'
	WHEN AGE > 35 THEN 'Old'
		ELSE 'Teenager'
END AS AgeStatus
From SQLTutorial..EmployeeDemographics
Where age is not null
order by Age


/* USE CASES- Corporate allowed a Michael Scott to give out a yearly raise, but not every employee gonna get same raise. 
*/
Select FirstName, LastName, JobTitle, Salary,
CASE
	When JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
	END AS SalaryAfterRaise
From SQLTutorial..EmployeeDemographics Dem
 JOIN SQLTutorial..EmployeeSalary Sal
	On Dem.EmployeeID = Sal.EmployeeID