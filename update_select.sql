select
	*
from
	book_mst;
    
update
	book_mst bm, author_mst am
set
	bm.author_name = am.author_id
where
	bm.author_name = am.author_name;
    

update
	book_mst bm, publisher_mst pm
set
	bm.publisher_name = pm.publisher_id
where
	bm.publisher_name = pm.publisher_name;
    

select
	bm.book_id,
    bm.book_name,
    bm.author_id,
    am.author_name,
    bm.publisher_id,
    pm.publisher_name,
    bm.publication_date,
    bm.book_price
from
	book_mst bm
    left outer join author_mst am on(am.author_id = bm.author_id)
    left outer join publisher_mst pm on(pm.publisher_id = bm.publisher_id);
    
update
	book_dtl bd, category_mst cm
set
	bd.category_name = cm.category_id
where
	bd.category_name = cm.category_name;


select
	*
from
	book_dtl;
    
update
	book_dtl bd, (select
					bm.book_id,
                    bm.book_name,
                    am.author_name,
                    pm.publisher_name
				from
					book_mst bm
                    left outer join author_mst am on(am.author_id = bm.author_id)
                    left outer join publisher_mst pm on(pm.publisher_id = bm.publisher_id)
				) bm2
set
	bd.book_name = bm2.book_id
where
	bd.book_name = bm2.book_name
and	bd.author_name = bm2.author_name
and bd.publisher_name = bm2.publisher_name;










