-- SELECT first_name, last_name, city FROM employees WHERE city = 'London'; 
-- réponse: 4

-------------------------------------------------------------
-- SELECT count(*) AS "Commandes" FROM orders WHERE order_date BETWEEN '1996-01-01' AND '1996-12-31';
-- réponse: 152

-----------------------------------------------------------------------------
-- SELECT product_name FROM products WHERE unit_price * units_in_stock > 3000;
-- réponse: 1)Queso Manchego La Pastora
-- 		 2)Sir Rodney's Marmalade
-- 		 3)Côte de Blaye
-- 		 4)Raclette Courdavault
-- 		 5)Sirop d'érable
-----------------------------------------------------------------------------
-- SELECT concat(ship_address,' ',ship_postal_code,' ',ship_city,' ',ship_country) AS "Commandes France" FROM orders WHERE
-- ship_country ILIKE 'france' ORDER BY ship_postal_code DESC;
-- réponse: 77

-----------------------------------------------------------------------------
-- SELECT concat(last_name,' ',first_name,' => ',title ) AS "Representants" FROM employees WHERE title = 'Sales Representative';
-- réponse: 6

-----------------------------------------------------------------------------
-- SELECT count(*) AS "produits" FROM products WHERE unit_price < 15;
-- réponse: 25 produits

-----------------------------------------------------------------------------


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
-- réponse: 7 employés

-----------------------------------------------------------------------------
-- SELECT * FROM orders;