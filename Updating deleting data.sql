/* 
Updating/Deleting Data
*/

Select *
From SQLTutorial..EmployeeDemographics

UPDATE SQLTutorial..EmployeeDemographics
SET Age = 31, Gender = 'Female'
Where FirstName = 'Holly' and LastName = 'Flax'

DELETE FROM SQLTutorial..EmployeeDemographics
Where EmployeeID = 1005