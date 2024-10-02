# Write your MySQL query statement below

SELECT CASE
    WHEN MOD(id, 2) = 0 THEN id - 1
    WHEN LEAD(id) OVER(ORDER BY id) IS NOT NULL THEN id + 1
    ELSE id
END
AS id, student FROM Seat ORDER BY id;

