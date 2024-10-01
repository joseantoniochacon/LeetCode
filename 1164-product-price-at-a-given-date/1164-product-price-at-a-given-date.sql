# Write your MySQL query statement below

SELECT DISTINCT P4.product_id, IFNULL(P3.new_price, 10) AS price FROM Products P4
LEFT JOIN 
(SELECT P2.product_id, P1.new_price FROM Products P1 RIGHT JOIN
(SELECT product_id, MAX(change_date) as change_date FROM Products WHERE change_date <= "2019-08-16" GROUP BY product_id) P2 ON P1.product_id = P2.product_id AND P1.change_date = P2.change_date) P3
ON P3.product_id = P4.product_id