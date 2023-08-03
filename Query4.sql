--number of customers in every country
SELECT co.country, count(distinct cu.customer_id)
FROM customer cu
JOIN address a ON cu.address_id=a.address_id
JOIN city c ON a.city_id=c.city_id
JOIN country co ON c.country_id=co.country_id
GROUP BY co.country
