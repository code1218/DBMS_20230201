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
    






