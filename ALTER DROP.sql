ALTER TABLE EmployeeDemographics
ADD Email varchar(50);

ALTER TABLE EmployeeDemographics
DROP COLUMN Email

Select *
From EmployeeDemographics