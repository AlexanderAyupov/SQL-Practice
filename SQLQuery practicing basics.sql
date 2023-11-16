Select *
From EmployeeDemographics
Where age <> 30 AND age > 35

Select * 
From EmployeeDemographics
Where age <> 30 or age > 35

Select *
From WareHouseEmployeeDemographics

Insert into EmployeeDemographics VALUES
(NULL, 'Jim', 'Halpert',NULL, 'Male')

UPDATE EmployeeDemographics
SET FirstName = 'Alfred', LastName = ' Schmidt'
WHERE EmployeeID is NULL;

Select *
FROM EmployeeDemographics


Select *
From EmployeeDemographics
Where EmployeeID is not null AND age is not null


Select count(age) AS age
From EmployeeDemographics
Where age = 32

Select *
From EmployeeDemographics
Where firstname NOT IN ('Jim', 'Holly', 'Smith') 


SELECT Gender, Age, COUNT(Gender) as gendercolumn, Count(age) AS AGEcolumn
FROM EmployeeDemographics
WHERE age is not null 
GROUP BY Gender, Age
Order by 3 , 4 desc

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age
Having Age is not NULL




