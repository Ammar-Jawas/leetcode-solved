# Write your MySQL query statement below

SELECt e.name, b.bonus
FROM Employee  e LEFT JOIN Bonus b ON e.empId = b.empId 
WHERE b.empId is null || bonus < 1000