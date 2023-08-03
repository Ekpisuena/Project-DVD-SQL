--Total payment received by each store for the month of April
SELECT st.store_id, EXTRACT(MONTH FROM p.payment_date) AS month, SUM(p.amount) AS total_payment
FROM payment p
JOIN staff st ON p.staff_id = st.staff_id
GROUP BY st.store_id, EXTRACT(MONTH FROM p.payment_date)
HAVING EXTRACT(MONTH FROM p.payment_date) = 4
ORDER BY total_payment DESC;