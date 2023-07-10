CREATE TABLE public.owners (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone_number VARCHAR(50) NOT NULL
);

CREATE TABLE public.animals (
	id SERIAL PRIMARY KEY,
	surname VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	aggressiveness INT NOT NULL,
	presence_of_child BOOL NOT NULL,
	breed VARCHAR(20) NOT NULL,
	owner_id INT,
	date_adoption DATE,
	FOREIGN KEY (owner_id) REFERENCES public.owners(id),
	CONSTRAINT aggressiveness_level CHECK ( aggressiveness <= 5)
);

CREATE TABLE public.staffs (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone_number VARCHAR(50) NOT NULL,
	date_of_entry DATE NOT NULL
);

CREATE TABLE public.animal_visited (
	id SERIAL PRIMARY KEY,
	animal_id INT NOT NULL,
	staff_id INT NOT NULL,
	start_date TIMESTAMP NOT NULL,
	end_date TIMESTAMP NOT NULL,
	FOREIGN KEY (animal_id) REFERENCES public.animals(id),
	FOREIGN KEY (staff_id) REFERENCES public.staffs(id)
);
