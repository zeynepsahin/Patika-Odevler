--ÖDEV1

--1-- film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.

SELECT title, description 
	FROM film;

---2-- film tablosunda bulunan tüm sütunlardaki verileri 
--film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.

SELECT * 
	FROM film
	WHERE length > 60 AND length < 75;


--3--  film tablosunda bulunan tüm sütunlardaki verileri 
--rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.

SELECT * 
	FROM film
	WHERE rental_rate = 0.99 
	AND (replacement_cost = 12.99 OR replacement_cost = 28.99);

--4-- customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir

SELECT last_name 
	FROM customer
	WHERE first_name = 'Mary';

--5-- film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP 
--aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.

SELECT * 
	FROM film 
	WHERE NOT (length > 50)
	AND NOT(rental_rate = 2.99 OR rental_rate = 4.99) ;

--************************************************************************************************************--
--ÖDEV2

--1--film tablosunda bulunan tüm sütunlardaki verileri 
--replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)


SELECT * 
	FROM film
	WHERE  replacement_cost BETWEEN 12.99 
	AND 16.99;


--2--actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 
-- 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)


SELECT first_name, last_name
	FROM actor
	WHERE first_name IN('Penelope', 'Nick', 'Ed');


--3--film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE 
--replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)


SELECT * 
	FROM film 
	WHERE rental_rate IN (0.99, 2.99, 4.99)
	AND replacement_cost IN (12.99, 15.99, 28.99);


--************************************************************************************************************--

--ÖDEV3

--1-- country tablosunda bulunan country sütunundaki ülke isimlerinden 
--'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.


SELECT * 
	FROM country
	WHERE country LIKE 'A%a';



--2-- country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan
-- ve sonu 'n' karakteri ile sonlananları sıralayınız.


SELECT * 
	FROM country
	WHERE country LIKE '_____%n';


--3-- film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük
-- ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.


SELECT title 
	FROM film
	WHERE title ILIKE '%t%t%t%t%';



--4-- film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan 
--ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.


SELECT *
	FROM film
	WHERE title LIKE 'C%'
	AND length > 90 
	AND rental_rate = 2.99;
	
	
--************************************************************************************************************--

--ÖDEV4

--1-- film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.


SELECT DISTINCT replacement_cost FROM film;



--2-- film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?


SELECT COUNT(DISTINCT replacement_cost) FROM film;


--3-- film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve
--aynı zamanda rating 'G' ye eşittir?

SELECT  COUNT(*)
	FROM film
	WHERE title LIKE 'T%'
	AND rating = 'G';


--4-- country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?

SELECT COUNT(*)
	FROM country
	WHERE country LIKE '_____';


--5-- city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?

SELECT COUNT(*)
	FROM city
	WHERE city ILIKE '%R';


--************************************************************************************************************--

--ÖDEV5

--1-- film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.

SELECT *
	FROM film 
	WHERE title LIKE '%n'
	ORDER BY length DESC
	LIMIT 5;


--2-- film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length)
--ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.

SELECT *
	FROM film 
	WHERE title LIKE '%n'
	ORDER BY length ASC
	OFFSET 5
	LIMIT 5;	
	


--3-- customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada
--store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

SELECT * 
	FROM customer 
	WHERE store_id = 1
	ORDER BY last_name DESC
	LIMIT 4;
	
	
--************************************************************************************************************--

--ÖDEV6

--1-- film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?

SELECT AVG(rental_rate)
	FROM film;

--2-- film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?

SELECT COUNT(*)
	FROM film
	WHERE title LIKE 'C%';


--3-- film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?


SELECT MAX(length) "en uzun film"
	FROM film
	WHERE rental_rate = 0.99;



--4-- film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?


SELECT COUNT (DISTINCT replacement_cost)
	FROM film 
	WHERE length > 150;


--************************************************************************************************************--

--ÖDEV7

--1-- film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.

SELECT rating
	FROM film
	GROUP BY rating;


--2-- film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda
--film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.

SELECT replacement_cost, COUNT(*) "Film Sayısı"
	FROM film
	GROUP BY replacement_cost
	HAVING COUNT(*) > 50;


--3-- customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 


SELECT store_id, COUNT(customer_id)
	FROM customer
	GROUP BY store_id;


--4-- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra 
--en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.


SELECT country_id , COUNT(country_id)
	FROM city
	GROUP BY country_id
	ORDER BY COUNT(country_id)
	LIMIT 1;
	
	
--************************************************************************************************************--

--ÖDEV8

--1-- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), 
--birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.


CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);



--2-- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.


--EKLENDİ


--3-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

	UPDATE employee 
	SET name = 'Candy',
		birthday = '21/03/2022',
		email = 'cburgum0@weebly.com'
	WHERE id = 10;

	UPDATE employee 
	SET name = 'Sampson',
		birthday = '04/09/2022',
		email = 'seldered1@mac.com'
	WHERE id = 6;

	UPDATE employee 
	SET name = 'Tammie',
		birthday = '24/01/2023',
		email = 'telwel4@ning.com'
	WHERE id = 22;

	UPDATE employee 
	SET name = 'Shelly',
		birthday = '19/04/2022',
		email = 'shelliar2@ask.com'
	WHERE id = 32;

	UPDATE employee 
	SET name = 'Tessi',
		birthday = '20/06/2022',
		email = 'tjoselovitch3@stanford.edu'
	WHERE id = 18;
	
	
--4-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
	
DELETE FROM employee WHERE id = 44;
DELETE FROM employee WHERE id = 48;
DELETE FROM employee WHERE id = 14;
DELETE FROM employee WHERE id = 28;
DELETE FROM employee WHERE id = 2;


--************************************************************************************************************--

--ÖDEV9

--1-- city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT city, country 
	FROM city,country
	WHERE city.country_id = country.country_id;
	
	--veya
	
SELECT city, country
	FROM city INNER JOIN country
	ON city.country_id = country.country_id;


--2-- customer tablosu ile payment tablosunda bulunan payment_id ile 
--customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.


SELECT c.first_name, c.last_name, p.payment_id
	FROM customer c, payment p
	WHERE c.customer_id = p.customer_id;

	--veya

SELECT c.first_name, c.last_name, p.payment_id
	FROM customer c INNER JOIN payment p
	ON c.customer_id = p.customer_id;


--3-- customer tablosu ile rental tablosunda bulunan rental_id ile 
--customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.


SELECT c.first_name, c.last_name, r.rental_id
	FROM customer c, rental r
	WHERE c.customer_id = r.customer_id;
	
	--veya
	
SELECT c.first_name, c.last_name, r.rental_id
	FROM customer c INNER JOIN rental r
	ON c.customer_id = r.customer_id;



--************************************************************************************************************--

--ÖDEV10

--1-- city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

SELECT city, country 
	FROM city,country
	WHERE city.country_id = country.country_id;
	
	--veya
	
SELECT city, country
	FROM city LEFT JOIN country
	ON city.country_id = country.country_id;



--2-- customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

SELECT c.first_name, c.last_name, p.payment_id
	FROM customer c, payment p
	WHERE c.customer_id = p.customer_id;

	--veya

SELECT c.first_name, c.last_name, p.payment_id
	FROM customer c RIGHT JOIN payment p
	ON c.customer_id = p.customer_id;




--3-- customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.


SELECT c.first_name, c.last_name, r.rental_id
	FROM customer c, rental r
	WHERE c.customer_id = r.customer_id;
	
	--veya
	
SELECT c.first_name, c.last_name, r.rental_id
	FROM customer c FULL JOIN rental r
	ON c.customer_id = r.customer_id;


--************************************************************************************************************--

--ÖDEV11

--1-- actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

(
SELECT first_name FROM actor
)
UNION
(
SELECT first_name FROM customer
);

--2-- actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

(
SELECT first_name FROM actor
)
INTERSECT    
(
SELECT first_name FROM customer
);


--3-- actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

(
SELECT first_name FROM actor
)
EXCEPT
(
SELECT first_name FROM customer
);


--4-- İlk 3 sorguyu tekrar eden veriler için de yapalım.


(
SELECT first_name FROM actor
)
UNION ALL
(
SELECT first_name FROM customer
);


(
SELECT first_name FROM actor
)
INTERSECT ALL
(
SELECT first_name FROM customer
);

(
SELECT first_name FROM actor
)
EXCEPT ALL
(
SELECT first_name FROM customer
);


--************************************************************************************************************--

--ÖDEV12

--1-- film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(*) "Film Sayısı"
	FROM film
	WHERE length >
	(
		SELECT AVG(length) FROM film
	);



--2-- film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

SELECT COUNT(*) "Film Sayısı"
	FROM film
	WHERE rental_rate =
	(
		SELECT MAX(rental_rate) FROM film
	);


--3-- film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.


SELECT *
	FROM film
	WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
	AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
	ORDER BY rental_rate, replacement_cost;



--4-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


SELECT customer_id, COUNT(*) AS num_purchases 
FROM payment 
GROUP BY customer_id
ORDER BY num_purchases DESC;

