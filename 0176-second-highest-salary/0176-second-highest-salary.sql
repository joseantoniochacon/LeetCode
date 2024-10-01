# Write your MySQL query statement below

(SELECT DISTINCT salary AS SecondHighestSalary FROM Employee ORDER BY salary DESC LIMIT 1 OFFSET 1)
UNION
(SELECT NULL AS SecondHighestSalary)
LIMIT 1 