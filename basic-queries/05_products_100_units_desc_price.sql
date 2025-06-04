 select ProductID, ProductName, UnitPrice, UnitsInStock From Products where
  UnitsInStock >= 100 order by UnitPrice DESC;
