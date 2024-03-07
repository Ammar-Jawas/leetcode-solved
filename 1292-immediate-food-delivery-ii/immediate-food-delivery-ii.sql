-- Write your PostgreSQL query statement below

WITH cte AS
(SELECT customer_id, 
RANK() OVER(PARTITION BY customer_id ORDER BY order_date) first_order,
CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END AS result
FROM delivery
GROUP BY customer_id, order_date, customer_pref_delivery_date)

SELECT ROUND((SUM(result)*100.0)/COUNT(result),2) as immediate_percentage
FROM cte
WHERE first_order = 1 

