# group by - 그룹
# 집계 -> count, max, min, sum, avg
		# null의 개수는 카운트 하지않음(count)
select
	admission_date,
	count(*) 
from
	student_tb
group by
	admission_date;
