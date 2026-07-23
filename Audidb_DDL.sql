CREATE TABLE Vehicle (
	VIN VARCHAR(50) PRIMARY KEY,
	Model VARCHAR(50),
	Year INT,
	Color VARCHAR(30),
	Mileage INT,
	Price Numeric (10,2),
	Condition VARCHAR(10),
	Status VARCHAR(15)
);

CREATE TABLE Customer (
	CustomerID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR (50),
	PhoneNumber VARCHAR(20)
);

CREATE TABLE Salesperson (
	SalespersonID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	HireDate DATE,
	PhoneNumber VARCHAR(20)
);



CREATE TABLE Sale (
	SaleID INT PRIMARY KEY,
	SaleDate DATE,
	FinalPrice NUMERIC (10,2),
	VIN VARCHAR(50),
	CustomerID INT,
	SalespersonID INT,
	FOREIGN KEY (VIN) REFERENCES Vehicle(VIN),
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
	FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID)
);


CREATE TABLE Payment (
	PaymentID INT PRIMARY KEY,
	SaleID INT,
	Amount Numeric (10,2),
	Method VARCHAR(20),
	FOREIGN KEY (SaleID) REFERENCES Sale(SaleID)
);



CREATE VIEW AvailableVehicles AS
SELECT VIN, Model, Year, Color, Mileage, Price
FROM Vehicle
WHERE Status = 'Available';

CREATE VIEW SalesSummary AS
SELECT s.SaleID, s.SaleDate,v.Model, s.FinalPrice
FROM Sale s
JOIN Vehicle v
ON s.VIN = v.VIN;


CREATE FUNCTION GetTotalSales()
RETURNS NUMERIC(10,2)
RETURN (SELECT COALESCE(SUM(FinalPrice), 0.00) FROM Sale);

CREATE FUNCTION CountSoldVehicles()
RETURNS INT
RETURN (SELECT COUNT(*) FROM Vehicle WHERE Status = 'Sold');

CREATE TRIGGER UpdateVehicleStatus
AFTER INSERT ON Sale
FOR EACH ROW
UPDATE Vehicle
SET Status = 'Sold'
WHERE VIN = NEW.VIN;






