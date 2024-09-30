# Write your MySQL query statement below

SELECT SalesTable.product_id, year AS first_year, quantity, price FROM Sales SalesTable JOIN (SELECT product_id, MIN(year) min_year FROM Sales GROUP BY product_id) AS MinValueTable ON SalesTable.product_id = MinValueTable.product_id WHERE SalesTable.year = MinValueTable.min_year AND SalesTable.product_id = MinValueTable.product_id
