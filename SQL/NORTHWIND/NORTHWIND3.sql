-- SELECT category_name, sum(units_in_stock * unit_price) AS "Total valeur stock"
-- FROM products
-- INNER JOIN categories AS c USING (category_id)
-- GROUP BY 1
-- ORDER BY 2 DESC
-- LIMIT 3;
-------------------------------------------------------------------

-- SELECT concat(first_name,' ',last_name) AS "employee" , COUNT(et.employee_id) AS "Territorie"
-- FROM employees AS e
-- LEFT JOIN employee_territories AS et ON e.employee_id = et.employee_id
-- GROUP BY e.employee_id
-- ORDER BY COUNT(et.employee_id)
-- LIMIT 5;
-------------------------------------------------------------------
-- SELECT p.product_name, sum(od.unit_price * (1 - od.discount) * od.quantity) AS "Total"
-- FROM order_details AS od
-- INNER JOIN products AS p ON od.product_id = p.product_id
-- GROUP BY 1
-- HAVING sum(od.unit_price * (1 - od.discount) * od.quantity) >= 50000
-- ORDER BY 2 DESC;


-----------------------------------------------------------------
-- SELECT s.company_name, COUNT(*)
-- FROM orders o
-- JOIN shippers s ON o.ship_via = s.shipper_id
-- GROUP BY s.company_name
-- ORDER BY 2 DESC
-- LIMIT 1;
--------------------------------------------------------------------------------------
-- SELECT DISTINCT c.contact_name, c.phone, c.fax, c.address, c.postal_code, c.city, c.country
-- FROM orders o
-- JOIN employees e ON e.employee_id = o.employee_id
-- JOIN customers c ON o.customer_id = c.customer_id
-- WHERE e.last_name = 'Peacock' AND DATE_PART('year', o.order_date) = '1997' AND c.country != 'USA';


-- SELECT *
-- FROM products;