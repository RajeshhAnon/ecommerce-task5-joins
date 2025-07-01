SELECT u.UserName, o.OrderDate FROM Users u INNER JOIN Orders o ON u.UserID = o.UserID;
SELECT u.UserName, o.OrderDate FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID;
SELECT o.OrderID, u.UserName FROM Orders o LEFT JOIN Users u ON u.UserID = o.UserID;
SELECT u.UserName, o.OrderDate FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID UNION SELECT u.UserName, o.OrderDate FROM Users u RIGHT JOIN Orders o ON u.UserID = o.UserID;  -- Simulated using LEFT JOIN above
SELECT u.UserName, o.OrderDate FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID UNION SELECT u.UserName, o.OrderDate FROM Orders o LEFT JOIN Users u ON u.UserID = o.UserID;
SELECT o.OrderID, p.Name AS ProductName, oi.Quantity FROM Orders o JOIN OrderItems oi ON o.OrderID = oi.OrderID JOIN Products p ON oi.ProductID = p.ProductID;
