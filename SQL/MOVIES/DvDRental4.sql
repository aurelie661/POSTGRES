-- SELECT  f.title,fc.category_id, max(f.length) AS " durée"
-- FROM film f
-- INNER JOIN film_category fc USING(film_id)
-- GROUP BY 1,2
-- ORDER BY 3;

SELECT * FROM FILM;