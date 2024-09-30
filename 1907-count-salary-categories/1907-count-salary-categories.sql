# Write your MySQL query statement below

SELECT category, COUNT(*) - 1 AS accounts_count
FROM
(SELECT
CASE
    WHEN income > 50000 THEN "High Salary"
    WHEN income >= 20000 AND income <= 50000 THEN "Average Salary"
    ELSE "Low Salary"
END AS category
FROM Accounts 
UNION ALL
SELECT *
FROM (VALUES ROW("Low Salary"), ROW("Average Salary"), ROW("High Salary")) AccountsCategories (category)) AccountsCategoriesCount
GROUP BY category