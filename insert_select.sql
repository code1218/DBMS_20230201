delete
from
	book
where
	category_name is null;

insert into category_mst
select
	0,
	category_name
from
	book
group by
	category_name;
    
select
	*
from
	category_mst;


insert into author_mst
select
	0,
	author_name
from	
	book
group by
	author_name;

select
	*
from
	author_mst;

insert into publisher_mst
select
	0,
	publisher_name
from
	book
group by
	publisher_name;

select
	*
from
	publisher_mst;

insert into book_mst
select
	0,
	book_name,
    author_name,
    publisher_name,
    publication_date,
    book_price
from
	book
group by
	book_name,
    author_name,
    publisher_name,
    publication_date,
    book_price;

select
	*
from
	book_mst;





