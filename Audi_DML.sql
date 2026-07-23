-- Audi Dealership Database


INSERT INTO Vehicle VALUES
('VIN1','S5',2022,'Black',10000,40000,'Used','Available'),
('VIN2','Q5',2023,'White',5000,50000,'New','Available'),
('VIN3','A6',2021,'Gray',20000,35000,'Used','Available'),
('VIN4','RS7',2026,'Black',0,133000,'New','Available'),
('VIN5','RSQ8',2020,'Navy Blue',30000,90000,'Used','Available'),
('VIN6', 'A3', 2023, 'White', 34000, 25000, 'Used', 'Available'),
('VIN7', 'RS5', 2026, 'Red', 0, 124000, 'New', 'Available');

INSERT INTO Customer VALUES
(1,'John','Doe','1111111111'),
(2,'Jane','Smith','2222222222'),
(3,'Mike','Brown','3333333333'),
(4,'Sara','Lee','4444444444'),
(5,'Chris','White','5555555555');

INSERT INTO Salesperson VALUES
(1,'Paul','Blart','2022-01-01','9999999999'),
(2,'Bruce','Wayne','2021-03-10','8888888888'),
(3,'Miles','Morales','2020-07-15','7777777777'),
(4,'Barry','Allen','2023-02-20','6666666666'),
(5,'Andrew','Jackson','2019-11-11','1256288876');



INSERT INTO Sale VALUES
(1,'2026-04-01',38000,'VIN1',1,4),
(2,'2026-04-02',48000,'VIN2',2,5),
(3,'2026-04-03',34000,'VIN3',3,3),
(4,'2026-04-04',128000,'VIN4',4,3),
(5,'2026-04-05',84000,'VIN5',5,1);


INSERT INTO Payment VALUES
(1,1,38000,'Card'),
(2,2,48000,'Cash'),
(3,3,34000,'Financing'),
(4,4,128000,'Card'),
(5,5,84000,'Cash');

UPDATE Vehicle
SET Price = 42000
WHERE VIN = 'VIN1';

