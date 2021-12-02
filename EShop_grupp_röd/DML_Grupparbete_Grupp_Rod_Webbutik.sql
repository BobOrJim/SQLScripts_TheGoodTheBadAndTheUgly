
--DML is abbreviation of Data Manipulation Language. It is used to retrieve, modify, add, and delete data in database.

--The keyboard shortcut to comment text is CTRL + K följt av CTRL + C. The keyboard shortcut to uncomment text is CTRL + K följt av CTRL + U

-- Shift + CTRL + r, laddar om cache

 --INSERT INTO PaymentStatus VALUES ('Paid'); 
 --INSERT INTO PaymentStatus VALUES ('Unpaid');

 --INSERT INTO OrderStatus(OrderStatusId) VALUES ('Pending'); 
 --INSERT INTO OrderStatus(OrderStatusId) VALUES ('Packing'); 
 --INSERT INTO OrderStatus(OrderStatusId) VALUES ('Delivered'); 

 --INSERT INTO Platform (PlatformName) VALUES ('PS4');
 --INSERT INTO Platform (PlatformName) VALUES ('PS5');
 --INSERT INTO Platform (PlatformName) VALUES ('PC');
 --INSERT INTO Platform (PlatformName) VALUES ('XBOX One');
 --INSERT INTO Platform (PlatformName) VALUES ('XBOX Series X/S');
 --INSERT INTO Platform (PlatformName) VALUES ('Nintendo Switch');

 --INSERT INTO PaymentMethod (Method) VALUES('Invoice');
 --INSERT INTO PaymentMethod (Method) VALUES('Credit');
 --INSERT INTO PaymentMethod (Method) VALUES('Debit');
 --INSERT INTO PaymentMethod (Method) VALUES('Swish');

 --INSERT INTO ProductDetail (ProductName, Price) VALUES ('Minecraft', 99);
 --INSERT INTO ProductDetail (ProductName, Price) VALUES ('Star Wars', 199);
 --INSERT INTO ProductDetail (ProductName, Price) VALUES ('Call Of Duty',499);
 --INSERT INTO ProductDetail (ProductName, Price) VALUES ('Sims', 299);
 --INSERT INTO ProductDetail (ProductName, Price) VALUES ('Super Mario',199);

 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (1,1);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (1,2);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (1,3);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (1,4);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (1,5);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (1,6);

 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (2,1);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (2,2);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (2,3);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (2,4);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (2,5);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (2,6);

 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (3, 1);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (3, 2);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (3, 3);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (3, 4);
 --INSERT INTO Product (ProductDetailId, PlatformId) VALUES (3, 5);

 --INSERT INTO Product(ProductDetailId, PlatformId) VALUES (4,1);
 --INSERT INTO Product(ProductDetailId, PlatformId) VALUES (4,2);
 --INSERT INTO Product(ProductDetailId, PlatformId) VALUES (4,3);
 --INSERT INTO Product(ProductDetailId, PlatformId) VALUES (4,4);
 --INSERT INTO Product(ProductDetailId, PlatformId) VALUES (4,5);

 --INSERT INTO Product(ProductDetailId, PlatformId) VALUES (5, 6);
 

 --INSERT INTO Customer (FirstName, LastName, Address, PhoneNumber, Email) VALUES ('Erik', 'Grune', 'Enorma storgatan 5', '0707123456', 'KingGrune@bestmail.com');
 --INSERT INTO [Order] (CustomerId, OrderStatusId, OrderDate) VALUES (1, 'Pending', '2021-09-1');

 --INSERT INTO Payment (OrderId, PaymentStatusId, Method) VALUES (1, 'Paid', 'Swish');
 --INSERT INTO Order_Product (OrderId, ProductId) VALUES (1, 3);
 --INSERT INTO Order_Product (OrderId, ProductId) VALUES (1, 15);
 --INSERT INTO Order_Product (OrderId, ProductId) VALUES (1, 8);


 --INSERT INTO Customer (FirstName, LastName, Address, PhoneNumber, Email) VALUES ('Tom', 'Klenfelt', 'Biggest street 1', '0723133337', 'TomIsCool@gmail.com');
 --INSERT INTO [Order] (CustomerId, OrderStatusId, OrderDate) VALUES (2, 'Delivered', '2017-10-05');
 --INSERT INTO Payment (OrderId, PaymentStatusId, Method) VALUES (2, 'Unpaid', 'Credit');
 --INSERT INTO Order_Product (OrderId, ProductId) VALUES (2, 2);
 --INSERT INTO Order_Product (OrderId, ProductId) VALUES (2, 9);
 --INSERT INTO Order_Product (OrderId, ProductId) VALUES (2, 16);
 --INSERT INTO Order_Product (OrderId, ProductId) VALUES (2, 22);
 --INSERT INTO Order_Product (OrderId, ProductId) VALUES (2, 23);

 --INSERT INTO Customer (FirstName, LastName, Address, PhoneNumber, Email) VALUES ('Carl', 'Åfalk', 'Pizzeria Valentino', '0732165479', 'CarldenAndre@gmail.com');
 --INSERT INTO [Order] (CustomerId, OrderStatusId, OrderDate) VALUES (3,'Delivered', '2021-07-23')
 --INSERT INTO Payment (OrderId, PaymentStatusId, Method) VALUES (3, 'Paid', 'Invoice');
 --INSERT INTO [Order_Product] (OrderId, ProductId) VALUES (3, 15);
 --INSERT INTO [Order_Product] (OrderId, ProductId) VALUES (3, 23);

 --INSERT INTO Customer (FirstName, LastName, Address, PhoneNumber, Email) VALUES ('Erik', 'Jakobsson', 'BigBoiStreet 3', '0701236214', 'ErikJ@gmail.com');
 --INSERT INTO [Order](CustomerId, OrderStatusId, OrderDate) VALUES (4, 'Pending', '2020-10-19');
 --INsert Into Payment(OrderId, PaymentStatusId, Method) VALUES (4, 'Paid', 'Swish' );
 --INSERT INTO Order_Product(OrderId, ProductId) VALUES(4, 23);

 select * from Customer;
 select * from [Order];
 select * from product;
 select * from ProductDetail;
 select * from OrderStatus;
 select * from Payment;
 select * from PaymentMethod;
 select * from paymentStatus;
 Select * from Order_Product;
 Select * from [Platform];

-- Select pl.PlatformName, pd.ProductName, p.ProductId from Product p
-- INNER JOIN ProductDetail pd ON p.ProductDetailId = pd.ProductDetailId
-- INNER JOIN Platform pl ON p.PlatformId = pl.PlatformId;

-- USE GRUPP_RÖD;
-- Select c.FirstName + ' ' + c.LastName as FullName, pd.ProductName, pl.PlatformName from Customer c
-- inner join [Order] o ON o.CustomerId = c.CustomerId
-- inner join Order_Product op on op.OrderId = o.OrderId
-- inner join Product p on p.ProductId = op.ProductId
-- inner join ProductDetail pd on p.ProductDetailId = pd.ProductDetailId
-- inner join Platform pl on pl.PlatformId = p.PlatformId;