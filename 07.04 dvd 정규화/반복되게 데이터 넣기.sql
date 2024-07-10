insert into dvd_register_tb
values
	(0, 1, now()),
	(0, 1, now()),
	(0, 1, now()),
	(0, 2, now()),
	(0, 2, now()),
	(0, 2, now());
# 데이터를 1 1 / 2 1 / 3 1 / 4 2 / 5 2 / 6 2 / 7 3 / 8 3 / 9 3 / 10 3 / 이렇게 반복되어서 데이터를 넣을수 있는 방법
select
	0,
    dvd_id,
    now()
from
	dvd_tb
union all
select
	0,
    dvd_id,
    now()
from
	dvd_tb
union all
select
	0,
    dvd_id,
    now()
from
	dvd_tb;


insert into dvd_register_tb
select
	0,
    dt1.dvd_id,
    now()
from
	dvd_tb dt1
    left outer join dvd_tb dt2 on(dt2.dvd_id < 4); 
