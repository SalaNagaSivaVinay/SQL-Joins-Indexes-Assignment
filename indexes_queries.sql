-- Indexes Queries for SQL Assignment

-- 1. Creating an Index on Employees Table for DepartmentID
CREATE INDEX idx_department_id ON Employees(DepartmentID);

-- 2. Creating an Index on Employees Table for ManagerID
CREATE INDEX idx_manager_id ON Employees(ManagerID);

-- 3. Creating an Index on Orders Table for CustomerName (to improve search performance)
CREATE INDEX idx_customer_name ON Orders(CustomerName);

-- 4. Creating a Composite Index for faster Order lookups based on OrderDate and TotalAmount
CREATE INDEX idx_order_date_amount ON Orders(OrderDate, TotalAmount);

-- 5. Dropping an Index Example (if needed)
DROP INDEX idx_manager_id ON Employees;
