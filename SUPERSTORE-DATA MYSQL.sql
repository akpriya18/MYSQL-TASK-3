USE superstore;
SELECT * FROM superstore_data;
SELECT *
FROM superstore_data
WHERE Category = 'Furniture';
SELECT *
FROM superstore_data
ORDER BY Sales DESC
LIMIT 10;
SELECT Category,SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY Category;
SELECT Category,AVG(Profit) AS Average_Profit
FROM superstore_data
GROUP BY Category;
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY Category
HAVING SUM(Sales)>100000;
CREATE TABLE returns_data(
    ORDER_ID VARCHAR(30),
    Returned VARCHAR(10)
);  
INSERT INTO returns_data VALUES
('CA-2019-152156','Yes'),
('CA-2019-138688','Yes'),
('US-2019-108966','No'),
('CA-2019-115812','Yes'),
('CA-2019-114412','No');
SHOW COLUMNS FROM superstore_data;
SELECT s.`Order ID`, s.`Customer Name`, s.Category, r.Returned
FROM superstore_data s
INNER JOIN returns_data r
ON s.`Order ID` = r.ORDER_ID;
SELECT s.`Order ID`, s.`Customer Name`, r.Returned
FROM superstore_data s
LEFT JOIN returns_data r
ON s.`Order ID` = r.ORDER_ID;
SELECT s.`Order ID`, s.`Customer Name`, r.Returned
FROM superstore_data s
RIGHT JOIN returns_data r
ON s.`Order ID` = r.ORDER_ID;