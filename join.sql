/*
	join: 테이블을 합치는 작업
*/

select
	*
from
	book_dtl as bd
    left outer join book_mst bm on(bm.book_id = bd.book_id)
    left outer join category_mst cm on(cm.category_id = bd.category_name);








