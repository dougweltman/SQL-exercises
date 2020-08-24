SELECT title FROM movies WHERE id IN
(SELECT movie_id FROM ratings WHERE movie_id IN
(SELECT movie_id FROM stars where person_id IN
(SELECT id FROM people WHERE name = "Chadwick Boseman")) limit 5) order by rating desc