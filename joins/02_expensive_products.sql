select Products.ProductID, Products.ProductName,
Products.UnitPrice, Suppliers.CompanyName as SupplierName
from Products join Suppliers on
 Products.SupplierID = Suppliers.SupplierID where
 Products.UnitPrice > 75
 order by Products.ProductName;