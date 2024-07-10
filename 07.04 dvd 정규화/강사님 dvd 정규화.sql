select * from sample_dvd_tb;    
insert into producer_tb
SELECT
	distinct	# 중복제거
    0,
    제작자
from
	sample_dvd_tb;
    
#insert into producer_tb
#SELECT
#    0,
#    제작자
#from
#	sample_dvd_tb
#group by		# distinct 대신 group by 써도 된다.
#	제작자;

-- insert into publisher_tb(publisher_name)
select
    nullif(발행자, "")	# nullif(a, "b") => a와 뒤의값 "b"가 같다면 null 출력하는 명령어
#   ifnull(nullif(발행자, ""), "발행자 없음"),	# ifnull(a, "b") => a가 null 이면 b를 출력하는 명령어
#   ifnull(nullif(replace(발행자, " ", ""), ""), "발행자 없음"),	# replace(a, "b", "c") => a값이 b일때 c로 바꿔 주는 명령어
from
	sample_dvd_tb
group by
	발행자
having
	nullif(발행자, "") is not null;
    

insert into publisher_tb(publisher_name)
select
	nullif(발행자, "") as publisher_name
from
	sample_dvd_tb
group by
	발행자
having
	publisher_name is not null;
    
update