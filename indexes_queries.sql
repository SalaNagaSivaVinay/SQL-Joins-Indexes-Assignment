-- Sample Data for Indexes Assignment

-- Creating Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Orders 
VALUES
(1, 'John Doe', '2024-01-15', 1500.00),
(2, 'Jane Smith', '2024-02-10', 2000.00),
(3, 'Alice Johnson', '2024-03-05', 750.00),
(4, 'Michael Brown', '2024-04-12', 1200.00);

-- Creating Clustered Index (automatically created on PRIMARY KEY)
-- No additional command needed, as OrderID is already a PRIMARY KEY.

-- Creating Non-Clustered Index
-- Improves performance when searching by CustomerName
CREATE NONCLUSTERED INDEX idx_CustomerName
ON Orders (CustomerName);

-- Creating Unique Index
-- Ensures each OrderDate is unique
CREATE UNIQUE INDEX idx_UniqueOrderDate
ON Orders (OrderDate);

-- Creating Composite Index
-- Useful for queries involving multiple columns in WHERE conditions
CREATE INDEX idx_CompositeIndex
ON Orders (CustomerName, OrderDate);

-- Query Performance Testing
-- Before Indexes: Full table scan
SELECT * FROM Orders WHERE CustomerName = 'John Doe';

-- After Indexes: Improved query speed using index search
EXPLAIN SELECT * FROM Orders WHERE CustomerName = 'John Doe';
