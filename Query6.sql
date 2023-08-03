--name of customers from store1 with got free rental fee
SELECT distinct p.customer_id, c.first_name, c.last_name, s.store_id
FROM payment p
JOIN customer c ON p.customer_id=c.customer_id
JOIN staff st ON p.staff_id=st.staff_id
JOIN store s ON st.store_id=s.store_id
WHERE p.amount=0 AND s.store_id=1
ORDER BY c.first_name;
