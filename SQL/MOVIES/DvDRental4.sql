<<<<<<< HEAD
SELECT f.title, c.name, f.length
FROM film f
INNER JOIN film_category fg ON f.film_id = fg.film_id
INNER JOIN category c On c.category_id = fg.category_id
GROUP BY 1,2,3
ORDER BY 2 DESC;
=======
-- SELECT  f.title,fc.category_id, max(f.length) AS " durée"
-- FROM film f
-- INNER JOIN film_category fc USING(film_id)
-- GROUP BY 1,2
-- ORDER BY 3;

SELECT * FROM FILM;
>>>>>>> d844c855c917ad1721d0d4334592292dd6c8a631
