USE dbsupermarket;
GO

-- Insert Employees
INSERT INTO Employee (EmployeeID, FirstName, LastName, DNI, Phone, Address)
VALUES
  ('EM01', 'Raul', 'Mendez Rojas', '72102534', '958216722', 'Av. Enrique Pelach'),
  ('EM02', 'Camila', 'Gomez Estrada', '67431299', '910239811', 'Av. 28 de Julio'),
  ('EM03', 'Ariana', 'Soto Garcia', '71348867', '958216722', 'Av. Mexico');

-- Insert Users
INSERT INTO [User] (EmployeeID, Username, Password, AccessLevel)
VALUES
  ('EM01', 'raulmr', 'password123', 'Administrator'),
  ('EM02', 'camilage', 'password456', 'Seller'),
  ('EM03', 'arianasg', 'password789', 'Seller');

-- Insert Clients
INSERT INTO Client (ClientID, FirstName, LastName, DNI, RUC, Age, Gender, Phone, Address)
VALUES
  ('C001', 'Juan', 'Perez', '12345678', '20123456789', 30, 'M', '987654321', 'Av. Central 123'),
  ('C002', 'Maria', 'Lopez', '87654321', '20987654321', 28, 'F', '912345678', 'Av. Los Pinos 456');

-- Insert Categories
INSERT INTO Category (CategoryName)
VALUES
  ('Groceries'),
  ('Dairy'),
  ('Beverages'),
  ('Sweets'),
  ('Cleaning');

-- Insert Products
INSERT INTO Product (ProductID, ProductName, EntryDate, ExpirationDate, Stock, Price, CategoryID)
VALUES
  ('P001', 'Rice', '2025-01-01', '2026-01-01', 100, 1.50, 1),
  ('P002', 'Beans', '2025-01-01', '2026-01-01', 80, 2.00, 1),
  ('P003', 'Pasta', '2025-01-05', '2026-01-05', 120, 1.20, 1),
  ('P004', 'Sugar', '2025-01-03', '2026-01-03', 90, 1.10, 1),
  ('P005', 'Flour', '2025-01-02', '2026-01-02', 110, 1.00, 1),

  ('P006', 'Milk', '2025-01-01', '2025-01-10', 100, 2.50, 2),
  ('P007', 'Cheese', '2025-01-01', '2025-06-01', 50, 4.00, 2),
  ('P008', 'Yogurt', '2025-01-02', '2025-01-15', 70, 1.50, 2),
  ('P009', 'Butter', '2025-01-03', '2025-02-01', 40, 3.00, 2),
  ('P010', 'Cream', '2025-01-04', '2025-02-15', 60, 2.20, 2),
  
  ('P011', 'Soda', '2025-01-05', '2025-03-05', 150, 1.20, 3),
  ('P012', 'Juice', '2025-01-06', '2025-02-06', 130, 1.80, 3),
  ('P013', 'Water', '2025-01-07', '2026-01-07', 200, 1.00, 3),
  ('P014', 'Coffee', '2025-01-08', '2026-01-08', 100, 3.50, 3),
  ('P015', 'Tea', '2025-01-09', '2026-01-09', 90, 2.50, 3),

  ('P016', 'Chocolate Bar', '2025-01-10', '2025-06-30', 200, 0.80, 4),
  ('P017', 'Candy', '2025-01-11', '2025-07-30', 180, 0.50, 4),
  ('P018', 'Gum', '2025-01-12', '2025-08-30', 150, 0.30, 4),
  ('P019', 'Lollipop', '2025-01-13', '2025-09-30', 140, 0.40, 4),
  ('P020', 'Marshmallow', '2025-01-14', '2025-10-30', 130, 0.70, 4),

  ('P021', 'Detergent', '2025-01-15', '2026-01-15', 80, 5.00, 5),
  ('P022', 'Soap', '2025-01-16', '2026-01-16', 90, 2.00, 5),
  ('P023', 'Bleach', '2025-01-17', '2026-01-17', 60, 3.50, 5),
  ('P024', 'Glass Cleaner', '2025-01-18', '2026-01-18', 50, 4.00, 5),
  ('P025', 'Floor Cleaner', '2025-01-19', '2026-01-19', 70, 6.00, 5);

-- Insert Sales
INSERT INTO Sale (SaleID, SaleDate, Invoice, UserID, ClientID)
VALUES
  ('VE1', '2025-02-25', 'Boleta', 2, 'C001'),
  ('VE2', '2025-02-25', 'Boleta', 3, 'C001'),
  ('VE3', '2025-02-26', 'Boleta', 3, 'C002'),
  ('VE4', '2025-02-26', 'Boleta', 2, 'C002'),
  ('VE5', '2025-02-26', 'Factura', 2, 'C001'),
  ('VE6', '2025-02-27', 'Boleta', 3, 'C001'),
  ('VE7', '2025-02-27', 'Factura', 3, 'C002'),
  ('VE8', '2025-02-27', 'Factura', 3, 'C001');
