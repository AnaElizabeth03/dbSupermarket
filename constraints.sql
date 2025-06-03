-- Primary Keys
ALTER TABLE Employee
ADD CONSTRAINT PK_Employee PRIMARY KEY (EmployeeID);

ALTER TABLE [User]
ADD CONSTRAINT PK_User PRIMARY KEY (UserID);

ALTER TABLE Client
ADD CONSTRAINT PK_Client PRIMARY KEY (ClientID);

ALTER TABLE Sale
ADD CONSTRAINT PK_Sale PRIMARY KEY (SaleID);

ALTER TABLE SaleDetail
ADD CONSTRAINT PK_SaleDetail PRIMARY KEY (SaleDetailID);

ALTER TABLE Product
ADD CONSTRAINT PK_Product PRIMARY KEY (ProductID);

ALTER TABLE Category
ADD CONSTRAINT PK_Category PRIMARY KEY (CategoryID);

-- Foreign Keys
ALTER TABLE [User]
ADD CONSTRAINT FK_User_Employee FOREIGN KEY (EmployeeID)
REFERENCES Employee(EmployeeID);

ALTER TABLE Sale
ADD CONSTRAINT FK_Sale_User FOREIGN KEY (UserID)
REFERENCES [User](UserID);

ALTER TABLE Sale
ADD CONSTRAINT FK_Sale_Client FOREIGN KEY (ClientID)
REFERENCES Client(ClientID);

ALTER TABLE SaleDetail
ADD CONSTRAINT FK_SaleDetail_Sale FOREIGN KEY (SaleID)
REFERENCES Sale(SaleID);

ALTER TABLE SaleDetail
ADD CONSTRAINT FK_SaleDetail_Product FOREIGN KEY (ProductID)
REFERENCES Product(ProductID);

ALTER TABLE Product
ADD CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryID)
REFERENCES Category(CategoryID);

--CHECK
-- Client: DNI must be exactly 8 digits
ALTER TABLE Client 
ADD CONSTRAINT CHK_Client_DNI 
CHECK (DNI LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]');

-- Client: Phone must be exactly 9 digits
ALTER TABLE Client 
ADD CONSTRAINT CHK_Client_Phone 
CHECK (Phone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]');

ALTER TABLE Employee 
ADD CONSTRAINT CHK_Employee_DNI 
CHECK (DNI LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]');

ALTER TABLE Employee 
ADD CONSTRAINT CHK_Employee_Phone 
CHECK (Phone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]');

-- Product: Price must be greater than 0
ALTER TABLE Product 
ADD CONSTRAINT CHK_Product_Price 
CHECK (Price > 0);

-- SaleDetail: Quantity must be greater than 0
ALTER TABLE SaleDetail 
ADD CONSTRAINT CHK_SaleDetail_Quantity 
CHECK (Quantity > 0);

-- SaleDetail: Price must be greater than 0
ALTER TABLE SaleDetail 
ADD CONSTRAINT CHK_SaleDetail_Price 
CHECK (Price > 0);

ALTER TABLE SaleDetail
ADD CONSTRAINT CHK_SaleDetail_IGV_Calc
CHECK (IGV = ROUND(Quantity * Price * 0.18, 2));

ALTER TABLE SaleDetail
ADD CONSTRAINT CHK_SaleDetail_Total_Calc
CHECK (Total = ROUND(Quantity * Price + IGV, 2));

--UNIQUE
ALTER TABLE Client
ADD CONSTRAINT UQ_Client_DNI UNIQUE (DNI);

ALTER TABLE Product
ADD CONSTRAINT UQ_Product_ProductName UNIQUE (ProductName);

ALTER TABLE Employee
ADD CONSTRAINT UQ_Employee_DNI UNIQUE (DNI);

ALTER TABLE [User]
ADD CONSTRAINT UQ_User_Username UNIQUE (Username);
