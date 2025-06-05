select OrderID from order_details where ProductID = (
select ProductID from Products where ProductName = 'Sasquatch Ale');