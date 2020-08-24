select name from people where id in
(select person_id as p from stars where movie_id in
(select movie_id as m from people join stars on stars.person_id = people.id where name = "Kevin Bacon" and birth = 1958))
and name is not "Kevin Bacon"