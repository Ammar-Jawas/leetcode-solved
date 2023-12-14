# Write your MySQL query statement below
SELECT s.user_id, case when c.time_stamp is null then 0.00 else round(sum(c.action = "confirmed") / count(*),2) end as confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c on s.user_id = c.user_id
GROUP BY s.user_id