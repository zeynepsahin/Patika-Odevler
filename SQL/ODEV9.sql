--1

SELECT city.city, country.country FROM city INNER JOIN country ON city.country_id = country.country_id;
	--VEYA
SELECT c.city, ct.country FROM city c, country ct WHERE c.country_id = ct.country_id;

--2

SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer INNER JOIN payment ON customer.customer_id = payment.customer_id;
	--VEYA
SELECT p.payment_id, c.first_name, c.last_name FROM customer c, payment p WHERE c.customer_id = p.customer_id;

--3
SELECT rental.rental_id, customer.first_name, customer.last_name FROM customer INNER JOIN rental ON customer.customer_id = rental.customer_id;
	--VEYA
SELECT r.rental_id, c.first_name, c.last_name FROM customer c, rental r WHERE c.customer_id = r.customer_id;