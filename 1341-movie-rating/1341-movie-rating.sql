# Write your MySQL query statement below

(SELECT name AS results FROM (SELECT name, count(*) as rated_movies FROM MovieRating LEFT JOIN Users ON Users.user_id = MovieRating.user_id GROUP BY name ORDER BY rated_movies DESC, name) RATINGS LIMIT 1)
UNION ALL
(SELECT title AS results FROM (SELECT title, ROUND(AVG(rating),2) AS average_rating FROM MovieRating LEFT JOIN Movies ON Movies.movie_id = MovieRating.movie_id WHERE MONTH(created_at) = 2 AND YEAR(created_at) = 2020 GROUP BY title ORDER BY average_rating DESC, title) RATES LIMIT 1)