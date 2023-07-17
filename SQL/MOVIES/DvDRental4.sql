SELECT f.title, c.name, f.length
FROM film f
INNER JOIN film_category fg ON f.film_id = fg.film_id
INNER JOIN category c On c.category_id = fg.category_id
GROUP BY 1,2,3
ORDER BY 2 DESC;