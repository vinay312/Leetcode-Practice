# Write your MySQL query statement below
SELECT e1.name as Employee
from Employee e1 JOIN employee e2
    on e1.managerId =e2.id
WHERE e1.salary > e2.salary