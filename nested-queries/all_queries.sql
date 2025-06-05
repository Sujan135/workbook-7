USE northwind;

-- question1
select ProductName, UnitPrice from Products where
UnitPrice = (select max(UnitPrice) from Products);

-- question2
select OrderID, ShipName, ShipAddress from
Orders where ShipVia = (
select ShipperID from
Shippers where CompanyName = 'Federal Shipping');

-- question3
select OrderID from order_details where ProductID = (
select ProductID from Products where ProductName = 'Sasquatch Ale');


-- question4
select FirstName, LastName from Employees where
EmployeeID = (
select EmployeeID from
 Orders where OrderID = 10266);


-- question5
select CompanyName as CustomerName from Customers where
CustomerID = (
select CustomerID from Orders where OrderID = 10266);