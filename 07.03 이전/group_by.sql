# Group by 집계, 중복제거
# distinct는 중복이 제거되어 나온다, distinct는 한 값에만 사용가능하다.(중복사용불가) 
select
	distinct category_id, 
    publisher_id
from
	book_tb;


select # 실행 순서 : from -> where -> group by -> select
	category_id,
    count(*)
from
	book_tb
where
	book_id > 7000
group by
	category_id;


# 도서명 중 '돈'이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오.
# 그리고 카테고리 별로 도서 개수가 출력되어야 한다.
select
	category_id,
	count(*) as category_count
from
	book_tb
where
	book_name like "%돈%"
group by
	category_id;

# count 개수가 > 10 인 것들 출력
# -> 서브쿼리 사용(서브쿼리는 select 동작을 여러번 하게 되는것 이기 때문에 최대한 쓰지 않는 것이 좋다. 쓰더라도 3개 이상 쓰지말기!)
select
	*
from
	(select # 
		category_id,
		count(*) as category_count
	from
		book_tb
	where
		book_name like "%돈%"
	group by
		category_id) as category_group_book_tb
where
	category_count > 10;
# having 사용 : having은 group by가 끝난 데이터에 조건을 주는 명령어
# 하지만 실행 순서는 다르다. 실행순서 : from -> where -> group by -> select -> having
select
	category_id,
	count(*) as category_count
from
	book_tb
where
	book_name like "%돈%"
group by
	category_id
having
	category_count > 10; # having 이후에 추가 조건이 필요하다면 그땐 서브쿼리 사용 해야함.