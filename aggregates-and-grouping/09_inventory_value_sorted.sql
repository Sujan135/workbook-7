select  ProductID,  ProductName,  UnitPrice * UnitsInStock as inventory_value
from Products
order by inventory_value desc, ProductName asc;