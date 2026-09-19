# Write your MySQL query statement below
select employee_id,
       IF(employee_id % 2 <> 0 and name NOT LIKE 'M%' , salary , 0) AS bonus
FROM Employees
order by employee_id