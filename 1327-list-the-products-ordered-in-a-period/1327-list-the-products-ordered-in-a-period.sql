# Write your MySQL query statement below
select product_name ,sum(unit) as unit from Products t1 
join Orders t2
on t1.product_id = t2.product_id
WHERE YEAR(order_date) = 2020  AND MONTH(order_date) = 2
group by t1.product_id
having unit >= 100 
