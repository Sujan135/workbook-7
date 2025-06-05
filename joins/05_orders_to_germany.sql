select Orders.OrderID, Orders.ShipName, Orders.ShipAddress, Shippers.CompanyName AS Shipper
from Orders
join Shippers on Orders.ShipVia = Shippers.ShipperID
where Orders.ShipCountry = 'Germany';