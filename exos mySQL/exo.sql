-- Quels acteurs portent le prénom "Scarlett"
SELECT first_name, last_name FROM actor WHERE first_name = "SCARLETT";
-- Quels acteurs portent le nom de famille "Johansson"?
SELECT first_name, last_name FROM actor WHERE last_name = "JOHANSSON";
-- Combien y a-t-il de noms de famille d'acteurs distincts ?
SELECT COUNT(DISTINCT last_name) FROM actor;
-- Quels noms de famille qui ne se répètent pas ?
SELECT last_name FROM actor GROUP BY last_name HAVING count(last_name) = 1 ;
-- Quels noms de famille apparaissent plus d'une fois ?
SELECT last_name FROM actor GROUP BY last_name HAVING count(last_name) > 1 ;
-- Quel acteur a joué dans le plus de films ?
SELECT film_actor.actor_id, actor.first_name, actor.last_name, COUNT(*) AS m FROM film_actor
 JOIN actor ON actor.actor_id = film_actor.actor_id
 GROUP BY actor_id
 ORDER BY m DESC
LIMIT 1 ;
-- Est-ce que "Academy Dinosaur" est disponible à la location dans le magasin 1 ?
SELECT store_id AS "Magasin", title FROM inventory JOIN film ON inventory.film_id = film.film_id WHERE title = "ACADEMY DINOSAUR";
SELECT * FROM inventory  JOIN film ON inventory.film_id = film.film_id WHERE title = "ACADEMY DINOSAUR" AND store_id = 1;
-- 1 compter le nombre d’acteur ayant le même nom de famille
SELECT count(*) FROM actor GROUP BY last_name HAVING count(last_name) > 1 ;
-- 2 donner l’actor_id pour une actrice ou un acteur choisi
select actor_id from actor where first_name = "Scarlett" limit 1;
-- 3 trouver tous les films_id pour une actrice ou un acteur choisi
select film_id from film_actor JOIN actor ON actor.actor_id = film_actor.actor_id WHERE first_name = "Scarlett" AND last_name = "Damon";
-- 4 trouver tous les titres de film pour une actrice ou un acteur choisi
select title, first_name, last_name from film JOIN film_actor ON film.film_id = film_actor.film_id JOIN actor ON film_actor.actor_id = actor.actor_id where first_name = "Scarlett" AND last_name = "Damon";
-- Choisir un film:
-- SPEED SUIT
-- 5 donner le nombre de fois que ce film a été loué
SELECT title, count(rental_id) AS nombre_location
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental on inventory.inventory_id = rental.inventory_id
WHERE title = "SPEED SUIT"
GROUP BY title;
-- 6 l’adresse_id des vidéo clubs où se film a été loué, afficher les valeurs uniques

-- 7 le nom et le prénom de toutes les personnes ayant loué ce film (uniques)