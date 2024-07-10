# from -> where -> group by -> select -> having -> order by -> limit

select
	dt.dvd_id,
    dt.registration_number,
    dt.title,
    dt.producer_id,
    pdt.producer_name,
    dt.publisher_id,
    pbt.publisher_name,
    dt.publication_year,
    dt.database_date
from
	dvd_tb dt
    left outer join producer_tb pdt on(pdt.producer_id = dt.producer_id)
    left outer join publisher_tb pbt on(pbt.publisher_id = dt.publisher_id)
#where
#	dt.producer_id = 749
limit 10, 10; # limit a, b; => a인덱스 부터 b개 출력  // 페이지로 가져올때 페이지마다 10개씩 가져오기 같은거 할때 사용