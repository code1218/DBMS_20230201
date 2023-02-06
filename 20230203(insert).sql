/* 여러줄 주석 */
/*
	[ DML ] 
    insert	-	Create
    select	-	Read
    update	-	Update
    delete	-	Delete
*/

insert into book_mst
	(book_id, book_code, book_name, author_name, 
    publisher_name, publication_date, category_name, book_price)
values
	(0, '소록-900', '테스트 도서', 
    '테스터', '테스트', '2023-02-03', '기타', 10000);
    
insert into book_mst(book_id)
values (0);
    
insert into book_mst
values
	(0, '소록-903', '테스트 도서3', 
    '테스터3', '테스트3', '2023-02-03', '기타', 20000),
    (0, '소록-904', '테스트 도서4', 
    '테스터4', '테스트4', '2023-02-03', '기타', 30000);
    
select * from book_mst;

delete from book_mst
where book_code = '소록-900';

delete from book_mst
where book_id = 477;


select * from book_mst;

/*
	1. 어디(데이터베이스.테이블)에 추가를 할 것인가?
	2. 컬럼은 어떻게 구성이 되어 있으며 원하는 컬럼에 데이터를 추가하려면 어떻게 해야하는가?
	소록-905 / 테스트 도서5 / 테스터5 / 테스트5 / 2023-02-03 / 기타 / 40000
*/

insert into book_mst
values 
	(0, '소록-905', '테스트 도서5', '테스터5', '테스트5', '2023-02-03', '기타', 40000);

select
	*
from
	book_mst
where
	author_name = '테스터'
or	(book_id < 100 
and book_code = '소록-50');


select
	*
from
	book_mst
where
	book_name like '%세%상%';

select
	*
from
	book_mst
where
	category_name like '%소설%'
or	category_name = '아동'
or	category_name = '경제/경영';

select
	*
from
	book_mst
where
	category_name in ('소설', '아동', '경제/경영');

insert into book_mst(book_id, book_code)
values (0, '소록-906');

select
	*
from
	book_mst
where
	book_name is not null;
    
select
	*
from
	book_mst
where
	not book_name is null;
	
update book_mst 
set 
	book_name = '다시 바꾼 도서명', 
    author_name = '바꾼 저자명' 
where 
	book_id = 482;


select * from book_mst;





