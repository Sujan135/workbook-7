USE northwind;

-- question 1--  
show tables;

-- question 2-- 
select ProductID, ProductName, UnitPrice from Products;

-- question 3
select ProductID, ProductName, UnitPrice From Products Order by UnitPrice ASC;

-- question 4
 select ProductID, ProductName, UnitPrice From Products where UnitPrice <=7.50;
 
 -- question 5
 select ProductID, ProductName, UnitPrice, UnitsInStock From Products where UnitsInStock >= 100 order by UnitPrice DESC;
 
-- question 6
select ProductID, ProductName, UnitPrice, UnitsInStock From Products where UnitsInStock >= 100 order by UnitPrice DESC, ProductName ASC;

-- question 7
select ProductID, ProductName, UnitsInStock, UnitsOnOrder From Products where UnitsInStock = 0 and UnitsOnOrder > 0 order by ProductName ASC;

-- question 8
show TABLES;

-- question 9
 select * from Categories;
select CategoryID from Categories where CategoryName = 'Seafood';

-- question 10
select ProductID, ProductName from Products where CategoryID = (select CategoryID from Categories where CategoryName = 'Seafood'); 

-- question 11
select FirstName, LastName from Employees;

-- question 12
select FirstName, LastName, Title from Employees where Title like '%Manager%';

-- question 13
select distinct Title from Employees;

-- question 14
select * from Employees where Salary between 2000 and 2500;

-- question 15
select * from Suppliers;

-- question 16
select ProductID, ProductName from Products where SupplierID =(
select SupplierID from Suppliers where CompanyName = 'Tokyo Traders');
