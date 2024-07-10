# order by - 정렬
# ASC > 오름차순(생략가능), DESC > 내림차순(생략불가능)
select
	*
from
	category_tb
order by
	category_id desc;
    
# book_tb 에서 publisher_id는 내림차순, category_id는 오름차순 
select
	*
from
	book_tb
order by
	publisher_id desc,
    category_id,
    book_id desc;