CREATE TABLE public.categorys (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL	
);

CREATE TABLE public.adresses(
	id SERIAL PRIMARY KEY,
	streetNumber VARCHAR(8) NOT NULL,
	streetName VARCHAR(50) NOT NULL,
	postalCode VARCHAR(8) NOT NULL,
	city VARCHAR(10) NOT NULL
);

CREATE TABLE public.products (
	serialNumber VARCHAR(40) PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	price MONEY NOT NULL,
	stock INT NOT NULL,
	category_id INT NOT NULL REFERENCES public.categorys(id)
);

CREATE TABLE public.customers(
	id SERIAL PRIMARY KEY,
	firstName VARCHAR(15) NOT NULL,
	lastName VARCHAR(15) NOT NULL,
	email VARCHAR(30) NOT NULL UNIQUE,
	phoneNumber VARCHAR(15) NOT NULL UNIQUE,
	adress_id INT REFERENCES public.adresses(id)
);

CREATE TABLE public.payments(
	id SERIAL PRIMARY KEY,
	datePayment TIMESTAMP DEFAULT now(),
	paymentType VARCHAR(50) NOT NULL,
	isConfirmed BOOL NOT NULL DEFAULT false
);

CREATE TABLE public.orders(
	id SERIAL PRIMARY KEY,
	payment_id INT REFERENCES public.payments(id),
	customer_id INT UNIQUE REFERENCES  public.customers
);

CREATE TABLE public.orders_products(
	id SERIAL PRIMARY KEY,
	order_id INT REFERENCES public.orders(id),
	produt_id VARCHAR REFERENCES public.produts(id),
	quantity INT NOT NULL
);
