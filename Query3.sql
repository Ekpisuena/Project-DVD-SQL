--List of customers with no outstanding DVD rentals in store 2
SELECT c.customer_id, c.first_name, c.last_name
FROM customer c
JOIN rental r ON c.customer_id=r.customer_id
JOIN inventory i ON r.inventory_id=i.inventory_id
	WHERE r.return_date IS NULL AND i.store_id=2;