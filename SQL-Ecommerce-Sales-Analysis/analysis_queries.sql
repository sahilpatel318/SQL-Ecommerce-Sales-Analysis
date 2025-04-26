SELECT 
    P.ProductName,
    SUM(OD.Quantity) AS TotalSold,
    SUM(OD.LineTotal) AS TotalRevenue
FROM 
    OrderDetails OD
JOIN 
    Products P ON OD.ProductID = P.ProductID
GROUP BY 
    P.ProductName
ORDER BY 
    TotalSold DESC;


SELECT 
    C.CategoryName,
    SUM(OD.LineTotal) AS TotalRevenue
FROM 
    OrderDetails OD
JOIN 
    Products P ON OD.ProductID = P.ProductID
JOIN 
    Categories C ON P.CategoryID = C.CategoryID
GROUP BY 
    C.CategoryName
ORDER BY 
    TotalRevenue DESC;



SELECT 
    C.FirstName, 
    C.LastName, 
    O.OrderDate, 
    O.TotalAmount
FROM 
    Orders O
JOIN 
    Customers C ON O.CustomerID = C.CustomerID;
