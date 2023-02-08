/*
	join: 테이블을 합치는 작업
*/
select
	bd.book_dtl_id,
	bd.book_code,
    bd.book_id,
    bm.book_name,
    bm.author_id,
    am.author_id,
    am.author_name,
    bm.publisher_id,
    pm.publisher_name,
    bm.publication_date,
    bd.category_id,
    cm.category_name
from
	book_dtl bd
    left outer join book_mst bm on(bm.book_id = bd.book_id)
    left outer join author_mst am on(am.author_id = bm.author_id)
    left outer join publisher_mst pm on(pm.publisher_id = bm.publisher_id)
    left outer join category_mst cm on(cm.category_id = bd.category_id);





