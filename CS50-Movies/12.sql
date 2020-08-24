SELECT title FROM movies WHERE

id IN
(SELECT movie_id FROM stars where person_id IN
(SELECT id FROM people WHERE name = "Johnny Depp")) AND

id IN
(SELECT movie_id FROM stars where person_id IN
(SELECT id from people where name = "Helena Bonham Carter"))