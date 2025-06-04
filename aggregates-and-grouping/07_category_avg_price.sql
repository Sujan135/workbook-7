select CategoryID, avg(UnitPrice) as average_price
from Products
group by CategoryID;
