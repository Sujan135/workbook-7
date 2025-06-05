select Products.ProductID, Products.ProductName,
 Products.UnitPrice, Categories.CategoryName from products
 join Categories on Products.CategoryID = Categories.CategoryID
 order by Categories.CategoryName, Products.ProductName;