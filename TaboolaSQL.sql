CREATE TABLE Products (
  ProductId int PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL,
  Category TEXT NOT NULL
  );

CREATE TABLE ProductHistory (
  ProductId INTEGER NOT NULL,
  Price FLOAT NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE
);


INSERT INTO Products VALUES (1, 'IPHONE 13', 'phone');
INSERT INTO Products VALUES (2, 'IPAD AIR', 'tablet' );
INSERT INTO Products VALUES (3, 'MACBOOK', 'laptop' );


INSERT INTO ProductHistory VALUES (1, 1000.00, '2020-05-12', '2021-05-12');
INSERT INTO ProductHistory VALUES (1, 899.99, '2021-05-13', NULL);
INSERT INTO ProductHistory VALUES (2, 1299.99, '2018-05-12', '2019-01-21');
INSERT INTO ProductHistory VALUES (2, 1099.99, '2019-01-22', NULL);
INSERT INTO ProductHistory VALUES (3, 2000.00, '2018-08-25', NULL);

SELECT Products.ProductId, Products.Name,ProductHistory.Price, ProductHistory.StartDate, ProductHistory.EndDate
FROM Products
INNER JOIN ProductHistory ON Products.ProductId=ProductHistory.ProductId;
