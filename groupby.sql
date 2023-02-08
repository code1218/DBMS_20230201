/*
	집계함수(그룹)
*/

/* count(컬럼) */
select
	bm.book_name,
	count(bm.book_name)
from
	book_dtl bd
    left outer join book_mst bm on(bm.book_id = bd.book_id)
group by
	bm.book_name;
    
/* max(컬럼) */
select
	pm.publisher_name,
	max(like_count)
from
	book_mst bm
    left outer join publisher_mst pm on(pm.publisher_id = bm.publisher_id)
group by
	pm.publisher_name;

/* min(컬럼) */
select
	am.author_name,
	min(like_count) as min,
    max(like_count) as max,
    sum(like_count) as sum,
    avg(like_count) as avg
from
	book_mst bm
    left outer join author_mst am on(am.author_id = bm.author_id)
group by
	am.author_name
having
	sum > 300;






    