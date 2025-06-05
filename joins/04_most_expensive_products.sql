select Products.ProductName, Categories.CategoryName,
 Products.UnitPrice from Products join Categories on
 Products.CategoryID = Categories.CategoryID
 where Products.UnitPrice = (
 select max(UnitPrice) from Products);