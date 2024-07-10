# 트랜잭션(Transaction)

set @name = "문주영"; # @ => 변수
select @name;

select @@autocommit; # @@ => 전역조회(전역변수)
set autocommit = 0;

insert into master_tb
values
	(0, 6, 2);

commit; # autocommit 이 꺼져있으면(0이면) commit을 해줘야 데이터베이스 저장이 된다.