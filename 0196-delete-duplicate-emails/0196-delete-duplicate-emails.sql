# Write your MySQL query statement below
DELETE FROM Person
   WHERE id NOT IN (
          select id
             from (select MIN(id) as id from Person group by email) as temp);


