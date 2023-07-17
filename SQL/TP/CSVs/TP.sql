CREATE TABLE addresses (
	id SERIAL PRIMARY KEY,
	street_number VARCHAR(10) NOT NULL,
	street_name VARCHAR(50) NOT NULL,
	postal_code VARCHAR(20) NOT NULL,
	city VARCHAR(50) NOT NULL,
	region VARCHAR(30),
	country VARCHAR(50) NOT NULL
);

CREATE TABLE categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone_number VARCHAR(50) NOT NULL,
	date_of_birth DATE DEFAULT now()
);

CREATE TABLE people_addresses (
	id SERIAL PRIMARY KEY,
	people_id INT NOT NULL,
	address_id INT NOT NULL,
	FOREIGN KEY (people_id) REFERENCES public.people(id),
	FOREIGN KEY (address_id) REFERENCES public.addresses(id)
);

CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	description VARCHAR NOT NULL,
	category_id INT NOT NULL,
	unit_price FLOAT NOT NULL,
	units_in_stock INT NOT NULL,
	FOREIGN KEY (category_id) REFERENCES public.categories(id)
);

_______________________________________________________________

UPDATE categories
SET name = 'common'
WHERE id = 1;

UPDATE categories
SET name = 'meat'
WHERE id = 2;

UPDATE categories
SET name = 'fish'
WHERE id = 8;

UPDATE categories
SET name = 'bakery'
WHERE id = 9;

UPDATE categories
SET name = 'school supplies'
WHERE id = 10;

UPDATE categories
SET name = 'gardening'
WHERE id = 11;

UPDATE categories
SET name = 'spices'
WHERE id = 12;

UPDATE categories
SET name = 'fruits'
WHERE id = 13;

UPDATE categories
SET name = 'high tech'
WHERE id = 14;

UPDATE categories
SET name = 'games'
WHERE id = 17;
-------------------------------------------------------------------------------------
WITH units_of_categories AS (
	SELECT c.name,AVG(p.units_in_stock)
		FROM products p
		INNER JOIN categories c ON p.category_id = c.id
		GROUP BY 1
		)SELECT p.name, AVG(p.units_in_stock)
			FROM products p
			WHERE p.units_in_stock < 2
			GROUP BY 1;

		
WITH units_of_categories AS(
	SELECT c.name, c.id , AVG(p.units_in_stock) AS Moyenne_en_stock
		FROM products p
		INNER JOIN categories c ON p.category_id = c.id
		GROUP BY 1,2
		)SELECT p.name AS product, uof.name , uof.Moyenne_en_stock
			FROM units_of_categories AS uof, products p, categories c
			WHERE p.units_in_stock < uof.Moyenne_en_stock AND p.category_id = uof.id;
			
-----------------------------------------------------------------------------------------------


SELECT (unit_price - 20) / 100 AS reduction
			FROM products p	

SELECT c.name AS name_category, p.name AS name_product, (p.unit_price - 20) / 100 AS reduction
		FROM products p
		INNER JOIN categories c ON c.id = p.category_id
		WHERE c.id = 14 

	
	
		

SELECT * FROM addresses;
SELECT * FROM categories;
SELECT * FROM people;
SELECT * FROM people_addresses;
SELECT * FROM products;