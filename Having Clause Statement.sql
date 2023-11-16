/* Having Clause
*/

SELECT JobTitle, COunt(JobTitle)
From SQLTutorial..EmployeeDemographics
 JOIN SQLTutorial..EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP By JobTitle
Having Count(JobTitle) >= 1


SELECT JobTitle, AVG(Salary)
From SQLTutorial..EmployeeDemographics
 JOIN SQLTutorial..EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP By JobTitle
Order by AVG(Salary)
--Having Count(JobTitle) > 1




SELECT JobTitle, AVG(Salary)
From SQLTutorial..EmployeeDemographics
 JOIN SQLTutorial..EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP By JobTitle
Having AVG(Salary) > 450000
Order by AVG(Salary)

/* Same
*/

SELECT JobTitle, AVG(Salary)
From SQLTutorial..EmployeeSalary
GROUP By JobTitle
Having AVG(Salary) > 450000
Order by AVG(Salary)

