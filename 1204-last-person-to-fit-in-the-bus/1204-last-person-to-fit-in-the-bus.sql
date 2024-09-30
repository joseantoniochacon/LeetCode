# Write your MySQL query statement below

SELECT person_name FROM (SELECT person_id, person_name, turn, weight, SUM(weight) over (ORDER BY turn) AS total_weight FROM Queue ORDER BY turn) TotalWeightTable WHERE total_weight <= 1000 ORDER BY total_weight DESC LIMIT 1;