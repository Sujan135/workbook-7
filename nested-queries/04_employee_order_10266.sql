select FirstName, LastName from Employees where
EmployeeID = (
select EmployeeID from
 Orders where OrderID = 10266);