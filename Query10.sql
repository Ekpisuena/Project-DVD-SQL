--Average rental rate, standard deviation of rental rate, and z-score of each movie's rental rate 
SELECT
	title,
	rental_rate, AVG(rental_rate) OVER () AS overall_average, stddev(rental_rate) OVER () AS standard_deviation,
	(rental_rate - (AVG(rental_rate) OVER ()))/ (stddev(rental_rate) OVER ()) AS standard_score
FROM film;


