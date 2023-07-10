CREATE TABLE public.packages (
	id SERIAL PRIMARY KEY,
	weight FLOAT NOT NULL,
	isUrgentDelivery BOOL NOT NULL DEFAULT false
);

CREATE TABLE public.customers (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	street_number VARCHAR(10) NOT NULL,
	street_name VARCHAR(50) NOT NULL,
	postal_code VARCHAR(10) NOT NULL,
	tva_number VARCHAR(50) NOT NULL
);

CREATE TABLE public.customers_packages (
	id SERIAL PRIMARY KEY,
	weight FLOAT NOT NULL,
	package_id INT NOT NULL REFERENCES public.packages(id),
	buyer_id INT NOT NULL REFERENCES public.customers(id),
	seller_id INT NOT NULL REFERENCES public.customers(id)
);

CREATE TABLE public.couriers (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	tva_number VARCHAR(50) NOT NULL,
	package_id INT NOT NULL REFERENCES public.packages(id)
); 

CREATE TABLE public.deliverysCenter (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	street_number VARCHAR(10) NOT NULL,
	street_name VARCHAR(50) NOT NULL,
	postal_code VARCHAR(10) NOT NULL,
	courier_id INT NOT NULL REFERENCES public.couriers(id),
	package_id INT NOT NULL REFERENCES public.packages(id)
);

CREATE TABLE public.crossingPoint (
	id SERIAL PRIMARY KEY,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	deliveryCenter_id INT NOT NULL REFERENCES public.deliverysCenter(id),
	package_id INT NOT NULL REFERENCES public.packages(id)
);