/*
	order by(정렬)
    asc - 오름차순 - 숫자가 올라간다 1,2,3,4,5
    desc - 내림차순 - 숫자가 내려간다 5,4,3,2,1
*/
select
	*
from
	book_mst
order by
	publisher_id,
    author_id,
    book_price;
    
select
	row_number() over(order by book_price desc) as `number`,
	rank() over(order by book_price desc) as `rank`,
    book_id,
    book_name,
    publisher_id,
    book_price
from
	book_mst;


select
	-- row_number() over(partition by publisher_id) as `number`,
	rank() over(partition by publisher_id order by book_price desc) as `rank`,
    book_id,
    book_name,
    publisher_id,
    book_price
from
	book_mst;




