select Orders.OrderID, Orders.OrderDate, Orders.ShipName, Orders.ShipAddress
from Orders
join order_Details on Orders.OrderID = order_Details.OrderID
join Products on order_Details.ProductID = Products.ProductID
where Products.ProductName = 'Sasquatch Ale';