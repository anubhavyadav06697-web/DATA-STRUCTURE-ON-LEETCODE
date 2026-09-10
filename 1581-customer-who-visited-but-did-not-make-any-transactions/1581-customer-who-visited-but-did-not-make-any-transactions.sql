# Write your MySQL query statement below
select t1.customer_id , count(t1.customer_id) as count_no_trans from Visits t1 left join Transactions t2
on t1.visit_id = t2.visit_id
where t1.visit_id not in (select visit_id from Transactions)
group by t1.customer_id


 