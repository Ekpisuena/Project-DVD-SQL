--Film with more than 5 DVD copies 
SELECT i.film_id, COUNT(i.inventory_id) AS Number_of_Copies
FROM inventory i
	JOIN film f ON i.film_id=f.film_id
	GROUP BY i.film_id
	HAVING COUNT(i.inventory_id)>5
	ORDER BY Number_of_Copies DESC;

