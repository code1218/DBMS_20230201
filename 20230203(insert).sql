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



    
