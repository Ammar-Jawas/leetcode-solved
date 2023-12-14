# Write your MySQL query statement below
SELECT e.name
FROM Employee e, Employee m
WHERE e.id = m.managerId
GROUP BY m.managerId
HAVING count(m.managerId) >= 5

/*select name from employee where id in
(Select managerId
from Employee
group by managerId
having count(managerId) >= 5)*/
