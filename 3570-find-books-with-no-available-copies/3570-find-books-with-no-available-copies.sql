# Write your MySQL query statement below
select l.book_id ,l. title , l.author ,l.genre, l.publication_year,count(b.book_id) as current_borrowers
from library_books l join borrowing_records b
on l.book_id = b.book_id
where return_date is null 
group by l.book_id ,l.total_copies
having  (l.total_copies - count(b.book_id)) = 0
order by current_borrowers desc , l.title asc