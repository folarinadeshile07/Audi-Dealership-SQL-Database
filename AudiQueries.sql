/* Queries File */


SELECT * FROM Vehicle;
/* Shows all vehicles in the database */


SELECT * FROM AvailableVehicles;
/* Shows only vehicles that are not sold */


SELECT * FROM Customer;
/* Retrieves all customers records */


SELECT GetTotalSales();
/* Returns total revenue from all sales */


SELECT CountSoldVehicles();
/* Counts total number of vehicles sold by dealership*/


SELECT s.SaleID, s.SaleDate, c.FirstName, c.LastName
FROM Sale s
JOIN Customer c ON s.CustomerID = c.CustomerID;
/* Shows which customer made each purchase */


SELECT s.SaleID, s.SaleDate, v.Model, v.Year
FROM Sale s
JOIN Vehicle v ON s.VIN = v.VIN;
/* Shows each sale with the date, vehicle model, and year */


SELECT * FROM Sale
WHERE FinalPrice > 40000
ORDER BY FinalPrice DESC;
/* Shows sales with final price over 40k, highest sales first*/