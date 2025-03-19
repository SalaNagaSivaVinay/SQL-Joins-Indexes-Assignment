-- Sample Data for Joins Assignment

-- Creating Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees 
VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 2);

-- Creating Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments 
VALUES
(101, 'HR'),
(102, 'IT'),
(104, 'Finance');

-- INNER JOIN Example
-- Retrieves employees with their matching department names
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- LEFT JOIN Example
-- Retrieves all employees with their department names (NULL if no match)
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- RIGHT JOIN Example
-- Retrieves all departments with employee names (NULL if no match)
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- FULL JOIN Example
-- Retrieves all records from both tables with matching data
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
FULL JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- CROSS JOIN Example
-- Retrieves all possible combinations of employees and departments
SELECT e.Name AS EmployeeName, d.DepartmentName
FROM Employees e
CROSS JOIN Departments d;

-- SELF JOIN Example
-- Retrieves employees and their managers
SELECT e1.Name AS EmployeeName, e2.Name AS ManagerName
FROM Employees e1
LEFT JOIN Employees e2
ON e1.ManagerID = e2.EmpID;

-- NATURAL JOIN Example
-- Retrieves employees with their department names (common column assumed as 'DepartmentID')
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
NATURAL JOIN Departments d;
