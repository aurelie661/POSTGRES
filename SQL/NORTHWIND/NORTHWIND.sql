-- SELECT first_name, last_name, city FROM employees WHERE city = 'London'; 
-- réponse: 4

-------------------------------------------------------------
-- SELECT count(*) AS "Commandes" FROM orders WHERE order_date BETWEEN '1996-01-01' AND '1996-12-31';
-- SELECT count(*) AS "Commandes" FROM orders WHERE date_part('year', order_date)= '1996';
-- réponse: 152

-----------------------------------------------------------------------------
-- SELECT product_name FROM products WHERE unit_price * units_in_stock > 3000;
-- réponse: 1)Queso Manchego La Pastora
-- 		 2)Sir Rodney's Marmalade
-- 		 3)Côte de Blaye
-- 		 4)Raclette Courdavault
-- 		 5)Sirop d'érable
-----------------------------------------------------------------------------
-- SELECT DISTINCT ship_address,ship_postal_code,ship_city,shSELECT * FROM
-- réponse: 77

-----------------------------------------------------------------------------
-- SELECT concat(last_name,' ',first_name,' => ',title ) AS "Representants" FROM employees WHERE title = 'Sales Representative';
-- réponse: 6

-----------------------------------------------------------------------------
-- SELECT count(*) AS "produits" FROM products WHERE unit_price < 15;
-- réponse: 25 produits

-----------------------------------------------------------------------------
-- SELECT contact_name,phone FROM suppliers WHERE country = 'USA';
-- réponse: 4
-----------------------------------------------------------------------------
-- SELECT product_name FROM products WHERE unit_price > 50;
-- réponse: 7 produits
-----------------------------------------------------------------------------
-- SELECT * FROM products WHERE units_in_stock = 0 AND reorder_level = 0;
-- réponse: 4 produits

-----------------------------------------------------------------------------
-- SELECT contact_name, city FROM customers WHERE city = 'Paris';
-- réponse: 2 clients

-----------------------------------------------------------------------------
-- SELECT concat(first_name,' ',last_name,' => ',birth_date) AS "employés de + de 60 ans" FROM employees WHERE birth_date < '1963-07-11';
-- select CONCAT(first_name,' ' ,last_name) from employees where Extract(year from current_date) - 60 >= EXTRACT(year from birth_date) order by birth_date;
-- réponse: 7 employés

-----------------------------------------------------------------------------
-- SELECT * FROM orders;