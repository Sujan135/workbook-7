select ProductName, UnitPrice from Products where
UnitPrice = (select max(UnitPrice) from Products);