#insert into retal_tb

select
	*
from
	rental_tb rt
    left outer join (
					select
						distinct
						0 as id,
						floor(rand() * 3000) + 1 as dvd_id, # rand() -> random한 값 만들기
						"문주영" as customer_name,
						now() as rental_date
					from
						dvd_tb
					where
						dvd_id < 1001
					order by
						dvd_id) rt2 on(rt2.dvd_id)
