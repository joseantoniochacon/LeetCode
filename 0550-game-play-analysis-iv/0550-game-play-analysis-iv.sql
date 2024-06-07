# Write your MySQL query statement below
#SELECT * FROM (SELECT player_id, event_date FROM Activity ORDER BY event_date DESC) a GROUP BY player_id;

#SELECT player_id, event_date FROM Activity ORDER BY event_date DESC

#SELECT DISTINCT(player_id) FROM Activity;

#SELECT player_id,  FROM Activity GROUP BY player_id;

SELECT ROUND((COUNT(*)/(SELECT COUNT(DISTINCT(player_id)) FROM Activity)),2) AS fraction FROM (SELECT player_id, MIN(event_date) AS first_log, (SELECT MIN(event_date) FROM Activity WHERE player_id = a1.player_id AND event_date > (SELECT MIN(event_date) FROM Activity WHERE player_id = a1.player_id)) AS second_log FROM Activity a1 GROUP BY player_id) logs WHERE DATEDIFF(second_log, first_log) = 1;