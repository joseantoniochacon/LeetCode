# Write your MySQL query statement below
SELECT * FROM Users WHERE mail REGEXP '^[:alpha:]{1}(\\.|[:alnum:]|[-]|[_])*(@leetcode\\.com)$'; 