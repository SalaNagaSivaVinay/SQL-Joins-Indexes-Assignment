-- Joins Queries for SQL Assignment

-- 1. Inner Join: Retrieve Employees with their Department Names
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 2. Left Join: Retrieve all Employees and their respective Departments (if any)
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 3. Right Join: Retrieve all Departments and their Employees (if any)
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 4. Full Outer Join: Combine Employees and Departments
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
UNION
SELECT e.EmpID, e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 5. Self Join: Show Employees with their Managers
SELECT e.Name AS EmployeeName, m.Name AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmpID;

-- 6. CROSS JOIN
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments;