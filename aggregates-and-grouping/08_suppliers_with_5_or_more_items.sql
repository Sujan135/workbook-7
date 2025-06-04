select SupplierID, count(*) as number_of_items
from Products
group by SupplierID
having COUNT(*) >= 5