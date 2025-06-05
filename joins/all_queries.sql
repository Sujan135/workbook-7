USE northwind;

-- question1
select Products.ProductID, Products.ProductName,
 Products.UnitPrice, Categories.CategoryName from products
 join Categories on Products.CategoryID = Categories.CategoryID 
 order by Categories.CategoryName, Products.ProductName;

-- question2
select Products.ProductID, Products.ProductName,
Products.UnitPrice, Suppliers.CompanyName as SupplierName
from Products join Suppliers on
 Products.SupplierID = Suppliers.SupplierID where 
 Products.UnitPrice > 75
 order by Products.ProductName;

-- question3
select Products.ProductID, Products.ProductName, Products.UnitPrice,
Categories.CategoryName, Suppliers.CompanyName
as SupplierName from Products join Suppliers
on Products.SupplierID = Suppliers.SupplierID 
order by Products.ProductName;

-- question4
select Products.ProductName, Categories.CategoryName,
 Products.UnitPrice from Products join Categories on
 Products.CategoryID = Categories.CategoryID
 where Products.UnitPrice = (
 select max(UnitPrice) from Products); 
 
 
-- question5
select Orders.OrderID, Orders.ShipName, Orders.ShipAddress, Shippers.CompanyName AS Shipper
from Orders
join Shippers on Orders.ShipVia = Shippers.ShipperID
where Orders.ShipCountry = 'Germany';

-- question6
select Orders.OrderID, Orders.OrderDate, Orders.ShipName, Orders.ShipAddress
from Orders
join order_Details on Orders.OrderID = order_Details.OrderID
join Products on order_Details.ProductID = Products.ProductID
where Products.ProductName = 'Sasquatch Ale';
