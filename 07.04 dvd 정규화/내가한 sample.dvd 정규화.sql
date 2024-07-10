SELECT * FROM study.dvd_tb;

# dvd_tv 정규화 하기(producer, dvd_publisher를 정규화 했다.)
# 정규화 하는 이유 : 중복 제거

insert into dvd_publisher
select
	0,
    dvd_publisher
from
	dvd_tb
group by
	dvd_publisher;

insert into  dvd_producer
select
	0,
    producer
from
	dvd_tb
group by
	producer;
    
update
	dvd_tb as dt
    left outer join dvd_producer as dp on(dp.producer_name = dt.producer)
set
	producer = if(dt.producer = "", null, dp.producer_id);

update
	dvd_tb as dt
    left outer join dvd_publisher as dp on(dp.publisher_name = dt.dvd_publisher)
set
	dvd_publisher = if(dt.dvd_publisher = "", null, dp.publisher_id);