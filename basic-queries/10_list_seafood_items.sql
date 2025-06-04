select ProductID, ProductName from Products
 where CategoryID = (select CategoryID from
  Categories where CategoryName = 'Seafood');
