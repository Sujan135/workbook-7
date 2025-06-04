USE northwind;

-- question1
select count(*) as total_suppliers
from Suppliers;

-- question2
select sum(Salary) as total_salaries
from Employees;


-- question3
select MIN(UnitPrice) as cheapest_price
from Products;

-- question4
select avg(UnitPrice) as average_price
from Products;

-- question5
select max(UnitPrice) as most_expensive
from Products;

-- question6
select SupplierID, count(*) as number_of_items
from Products
group by SupplierID;

-- question7
select CategoryID, avg(UnitPrice) as average_price
from Products
group by CategoryID;

-- question8
select SupplierID, count(*) as number_of_items
from Products
group by SupplierID
having COUNT(*) >= 5;

-- question9
select  ProductID,  ProductName,  UnitPrice * UnitsInStock as inventory_value
from Products
order by inventory_value desc, ProductName asc;
