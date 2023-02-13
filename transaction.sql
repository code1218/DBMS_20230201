set autocommit = 0;

select @@autocommit;

start transaction;

insert into user_mst
values (0, 'abc', '1234');

select * from user_mst;

rollback;

commit;

-- /////////////////////////////////////////////////

start transaction;

savepoint sp1;

insert into user_mst
values (0, 'aaa', '1234');

select * from user_mst;

savepoint sp2;

update 
	user_mst
set
	password = '1111'
where
	email = 'aaa';

select * from user_mst;

rollback to sp2;

select * from user_mst;
















