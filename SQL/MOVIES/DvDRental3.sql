-- SELECT f.title, f.length, f.rating, f.description
-- FROM film_category AS fc
-- JOIN film AS f on f.film_id = fc.film_id
-- JOIN category AS c ON c.category_id = fc.category_id
-- WHERE f.length < 60 AND c.name = 'Animation' AND f.rating IN ('G', 'PG', 'PG-13');
---------------------------------------------------------------------
-- SELECT f.title, first_name, last_name
-- FROM  film AS f
-- INNER JOIN film_actor AS fa ON f.film_id = fa.film_id
-- INNER JOIN actor AS a ON a.actor_id = fa.actor_id
-- WHERE title = 'Forrest Sons'
-- ORDER BY a.last_name, a.first_name;
---------------------------------------------------------------------
-- SELECT title, name
-- FROM film AS f
-- INNER JOIN language AS l ON f.language_id = l.language_id
-- WHERE name != 'English';
---------------------------------------------------------------------
-- SELECT concat(first_name,' ',last_name) AS "personnel concerné"
-- FROM store AS st
-- INNER JOIN address AS a ON a.address_id = st.address_id
-- INNER JOIN staff AS s ON s.staff_id = st.manager_staff_id
-- INNER JOIN city AS c ON c.city_id = a.city_id
-- WHERE c.city = 'Lethbridge';

---------------------------------------------------------------------
-- SELECT name
-- FROM film_category AS fc
-- INNER JOIN film AS f ON f.film_id = fc.film_id
-- INNER JOIN category AS c ON c.category_id = f.film_id
-- INNER JOIN film_actor AS fa ON fa.film_id = f.film_id
-- INNER JOIN actor AS a ON fa.actor_id = a.actor_id
-- WHERE a.first_name = 'Val' AND a.last_name = 'Bolger';



-- SELECT * FROM city;