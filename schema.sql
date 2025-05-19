-- Create the database
CREATE DATABASE dbsupermarket;
GO

USE dbsupermarket;
GO

-- Table: Product categories
CREATE TABLE tcategory (
    idCategory INT PRIMARY KEY IDENTITY(1,1),
    category VARCHAR(50) NOT NULL
);

-- Table: Products
CREATE TABLE tproduct (
    idProduct INT PRIMARY KEY IDENTITY(1,1),
	idCategory INT,
    nameProduct VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
	
    FOREIGN KEY (idCategory) REFERENCES tcategory (idCategory)
);

-- Table: Customers
CREATE TABLE tcustomer (
    idCustomer INT PRIMARY KEY IDENTITY(1,1),
    nameCustomer NVARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email NVARCHAR(100)
);

-- Table: Employees
CREATE TABLE temployee (
    idEmployee INT PRIMARY KEY IDENTITY(1,1),
    nameEmploye NVARCHAR(100) NOT NULL,
    role NVARCHAR(50) NOT NULL,        
    email NVARCHAR(100),             
    phone VARCHAR(20)               
);

-- Table: Sales
CREATE TABLE tsale (
    idSale INT PRIMARY KEY IDENTITY(1,1),
	idCustomer INT NOT NULL,
	idEmployee INT NOT NULL,
    dateSale DATETIME DEFAULT GETDATE(),
	total DECIMAL (10,2),

	FOREIGN KEY (idCustomer) REFERENCES tcustomer(idCustomer),
	FOREIGN KEY (idEmployee) REFERENCES temployee(idEmployee)
);

-- Table: Sale details 
CREATE TABLE tsaleDetail (
    idSaleDetail INT PRIMARY KEY IDENTITY(1,1),
	idSale INT NOT NULL,
	idProduct INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    subtotal AS (quantity * unit_price) PERSISTED,
	
    FOREIGN KEY (idSale) REFERENCES tsale(idSale),
    FOREIGN KEY (idProduct) REFERENCES tproduct (idProduct)
);
