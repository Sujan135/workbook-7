select ProductID, ProductName, UnitsInStock, UnitsOnOrder From Products where
 UnitsInStock = 0 and UnitsOnOrder > 0
  order by ProductName ASC;
