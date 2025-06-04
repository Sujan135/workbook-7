select ProductID, ProductName from
Products where SupplierID =(
select SupplierID from Suppliers
where CompanyName = 'Tokyo Traders');
