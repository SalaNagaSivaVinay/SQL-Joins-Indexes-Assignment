-- Sample Data for SQL Assignment

-- Creating Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT,
    ManagerID INT
);

-- Creating Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Creating Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

-- Inserting Sample Data into Employees Table
INSERT INTO Employees (EmpID, Name, DepartmentID, ManagerID)
VALUES
(1, 'Alice', 101, NULL),
(2, 'Bob', 102, 1),
(3, 'Charlie', 103, 1),
(4, 'David', 101, 2);

-- Inserting Sample Data into Departments Table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');

-- Inserting Sample Data into Orders Table
INSERT INTO Orders (OrderID, CustomerName, OrderDate, TotalAmount)
VALUES
(1, 'John Doe', '2024-01-15', 1500.00),
(2, 'Jane Smith', '2024-02-10', 2000.00),
(3, 'Alice Johnson', '2024-03-05', 750.00),
(4, 'Michael Brown', '2024-04-12', 1200.00);
