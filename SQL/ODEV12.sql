--1 
SELECT COUNT(*) film_sayisi
FROM film 
WHERE length > 
( 
	SELECT AVG (length) FROM film
);

--2
SELECT COUNT(*) film_sayisi
FROM film 
WHERE rental_rate =
(
	SELECT MAX (rental_rate) FROM film
);

--3
SELECT *
FROM film 
WHERE rental_rate = (SELECT MIN (rental_rate) FROM film) 
AND replacement_cost = (SELECT MIN (replacement_cost) FROM film)
ORDER BY rental_rate, replacement_cost;

--4
SELECT customer_id, COUNT(*) AS num_purchases 
FROM payment 
GROUP BY customer_id
ORDER BY num_purchases DESC;