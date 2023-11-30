# Write your MySQL query statement below
SELECT  V.customer_id, sum(T.visit_id is null) as count_no_trans
FROM Visits V
LEFT JOIN Transactions T
ON V.visit_id = T.visit_id
WHERE T.visit_id is null
GROUP BY customer_id
