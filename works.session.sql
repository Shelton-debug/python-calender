SELECT * FROM Products;
ALTER TABLE Products ADD Kgs VARCHAR(50);
ALTER TABLE Products DROP COLUMN Unit;

SELECT * FROM Products;

UPDATE Products SET Kgs = '10 Kgs' WHERE ProductID = 1;
UPDATE Products SET Kgs = '20 Kgs' WHERE ProductID = 2;
UPDATE Products SET Kgs = '30 Kgs' WHERE ProductID = 3;
UPDATE Products SET Kgs = '40 Kgs' WHERE ProductID = 4;
UPDATE Products SET Kgs = '50 Kgs' WHERE ProductID = 5;
UPDATE Products SET Kgs = '60 Kgs' WHERE ProductID = 6;

SELECT * FROM Products;

SELECT * FROM Employees;

INSERT INTO 