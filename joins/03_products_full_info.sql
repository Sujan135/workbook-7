select Products.ProductID, Products.ProductName, Products.UnitPrice,
Categories.CategoryName, Suppliers.CompanyName
as SupplierName from Products join Suppliers
on Products.SupplierID = Suppliers.SupplierID
order by Products.ProductName;