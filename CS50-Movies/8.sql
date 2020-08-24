SELECT name FROM people WHERE id IN
(SELECT person_id from stars WHERE MOVIE_ID IN
(SELECT id FROM movies WHERE title = "Toy Story"))