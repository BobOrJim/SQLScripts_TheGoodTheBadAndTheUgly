use Student31;

--DDL is abbreviation of Data Definition Language. It is used to create, modify and destroy the structure of database objects in database.



DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS PaymentMethod;
DROP TABLE IF EXISTS PaymentStatus;
DROP TABLE IF EXISTS Order_Product;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS ProductDetail;
DROP TABLE IF EXISTS Platform;
DROP TABLE IF EXISTS [Order];
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS OrderStatus;

CREATE TABLE Customer (CustomerId INTEGER PRIMARY KEY identity (1,1), FirstName VARCHAR(50), LastName VARCHAR(50), [Address] VARCHAR(50), PhoneNumber VARCHAR(50), Email VARCHAR(80));
CREATE TABLE [Order](OrderId integer PRIMARY KEY identity (1,1), CustomerId integer, OrderStatusId varchar(30), OrderDate Date NOT NULL);
CREATE TABLE Payment(Id integer PRIMARY KEY identity (1,1), OrderId integer, PaymentStatusId varchar(30), Method varchar(30));
CREATE TABLE PaymentStatus(PaymentStatusId varchar(30) PRIMARY KEY);
CREATE TABLE OrderStatus(OrderStatusId varchar(30) PRIMARY KEY);
CREATE TABLE PaymentMethod(Method varchar(30) PRIMARY KEY);
CREATE TABLE Order_Product (Id integer PRIMARY KEY IDENTITY(1,1), OrderId integer, ProductId integer);
CREATE TABLE ProductDetail (ProductDetailId Integer PRIMARY KEY identity(1,1), ProductName varchar(50), Price integer);
CREATE TABLE Product(ProductId INTEGER PRIMARY KEY identity(1,1), ProductDetailId integer, PlatformId integer);
CREATE TABLE Platform (PlatformId Integer PRIMARY KEY identity (1,1), PlatformName varchar(50));

ALTER TABLE [Order] ADD CONSTRAINT FK_Order_Id FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId); 
ALTER TABLE [Order] ADD CONSTRAINT FK_OrderStatus_Id FOREIGN KEY(OrderStatusId) REFERENCES [OrderStatus](OrderStatusId);

ALTER TABLE [Payment] ADD CONSTRAINT FK_Payment_Id FOREIGN KEY(OrderId) REFERENCES [Order](OrderId);
ALTER TABLE [Payment] ADD CONSTRAINT FK_PaymentStatus_Id FOREIGN KEY(PaymentStatusId) REFERENCES [PaymentStatus](PaymentStatusId);
ALTER TABLE [Payment] ADD CONSTRAINT FK_PaymentMethod_Id FOREIGN KEY(Method) REFERENCES [PaymentMethod](Method);

ALTER TABLE [Order_Product] ADD CONSTRAINT FK_OrderId FOREIGN KEY(OrderId) REFERENCES [Order](OrderId);
ALTER TABLE [Order_Product] ADD CONSTRAINT FK_ProductId FOREIGN KEY(ProductId) REFERENCES [Product](ProductId);

ALTER TABLE [Product] ADD CONSTRAINT FK_Product_Id FOREIGN KEY(ProductDetailId) REFERENCES [ProductDetail](ProductDetailId);
ALTER TABLE [Product] ADD CONSTRAINT FK_Platform_Id FOREIGN KEY(PlatformId) REFERENCES [Platform](PlatformId);


