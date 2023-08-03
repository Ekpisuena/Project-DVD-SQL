--total revenue per store
SELECT s.store_id, sum(p.amount) as total_revenue
from payment p
JOIN staff st ON p.staff_id=st.staff_id
JOIN store s ON st.store_id=s.store_id
GROUP BY s.store_id;