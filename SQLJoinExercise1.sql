SELECT p.Name, c.Name FROM products AS p
INNER JOIN categories AS c ON p.CategoryID=c.CategoryID
WHERE c.Name LIKE '%computer%';
 
SELECT p.name, p.price, r.rating FROM products AS p
INNER JOIN reviews AS r ON p.ProductID=r.ProductID
WHERE r.rating LIKE '5';

SELECT  e.*, SUM(s.Quantity) FROM employees AS e
LEFT JOIN sales AS s ON e.EmployeeID=s.EmployeeID
GROUP BY EmployeeID
ORDER BY SUM(s.Quantity) DESC
LIMIT 1;

SELECT d.Name, c.Name FROM categories AS c
INNER JOIN departments AS d ON c.DepartmentID=d.DepartmentID
WHERE c.name IN ('appliances', 'games') OR d.name IN ('appliances', 'games');

SELECT p.name, SUM(s.quantity), SUM(p.Price) FROM products AS p
INNER JOIN sales AS s ON p.ProductID=s.ProductID
WHERE p.name IN ('Eagles: Hotel California');

SELECT p.name, r.reviewer, r.rating, r.comment FROM reviews AS r
INNER JOIN products AS p ON r.ProductID=p.ProductID
Where p.name LIKE 'Visio TV'
ORDER BY r.rating
LIMIT 1;





-------------------------------------------- Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
SELECT  e.EmployeeID, e.FirstName, e.LastName, p.name AS PRODUCT, s.Quantity FROM sales AS s
INNER JOIN employees AS e ON e.EmployeeID=s.EmployeeID 
INNER JOIN products AS p ON p.productid=s.productid
GROUP BY E.EMPLOYEEID, P.NAME
ORDER BY e.EmployeeID;


