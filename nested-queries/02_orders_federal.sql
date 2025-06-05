select OrderID, ShipName, ShipAddress from
Orders where ShipVia = (
select ShipperID from
Shippers where CompanyName = 'Federal Shipping');