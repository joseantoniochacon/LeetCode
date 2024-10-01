# Write your MySQL query statement below

SELECT Products.product_name, SUM(unit) AS unit FROM Orders JOIN Products ON Orders.product_id = Products.product_id WHERE MONTH(order_date) = 2 AND YEAR(order_date) = 2020 GROUP BY Products.product_name HAVING unit >= 100;