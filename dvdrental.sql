--4. Construye las siguientes consultas:

--Aquellas usadas para insertar, modificar y eliminar un Customer, Staff y Actor.

--Customer

INSERT INTO customer (customer_id,store_id,first_name, last_name, email, address_id, active)
VALUES (600, 2, 'Jose', 'Robledo', 'johndoe@example.com', 1, 1);

select * from customer where first_name = 'John'

UPDATE customer
SET email = 'pedrito@example.com', address_id = 2
WHERE customer_id = 1;

DELETE FROM customer
WHERE customer_id = 600;

--Staff

INSERT INTO Staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES (3,'Juan', 'Gonzales', 1, 'juan.g@example.com', 5, 'true', 'User1', 'Nada', '2023-06-4');

SELECT * FROM staff WHERE first_name = 'Daniel'

UPDATE Staff
SET first_name = 'Daniel', last_name = 'Peralta', email = 'daniel.p@example.com'
WHERE staff_id = 3;

DELETE FROM Staff
WHERE staff_id = 3;

--Actor

INSERT INTO Actor (actor_id, first_name, last_name, last_update)
VALUES (201, 'Gonzalo', 'Marambio', '2023-06-11');

SELECT * FROM actor where actor_id = 201

UPDATE Actor
SET last_name = 'Soto'
WHERE actor_id = 201;

DELETE FROM Actor
WHERE actor_id = 201;



--Listar todas las “rental” con los datos del “customer” dado un año y mes

SELECT r.rental_date, c.first_name, c.last_name, c.email
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM r.rental_date) = 2005
  AND EXTRACT(MONTH FROM r.rental_date) = 6;
  
select * from rental
select * from store
  
--Listar Número, Fecha (payment_date) y Total (amount) de todas las “payment”.

SELECT payment_id, payment_date, amount as Total
FROM payment;

select * from payment

--Listar todas las “film” del año 2006 que contengan un (rental_rate) mayor a 4.0.

SELECT title, rental_rate
FROM film
WHERE release_year = 2006
  AND rental_rate > 4.0;








