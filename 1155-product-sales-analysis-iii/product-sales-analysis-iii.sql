WITH cte AS
(SELECT product_id, RANK() OVER(partition by product_id ORDER BY year) AS rnk, year, quantity, price
FROM sales)

SELECT product_id, year AS first_year, quantity, price
FROM cte
WHERE rnk = 1

