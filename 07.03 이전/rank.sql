select
	*
from
	(select
    #	book_count를 내림차순으로 정렬 하는데 publisher_id 별로 집계
	#	rank() over(partition by publisher_id order by book_count desc) as `rank`,				-> 1 2 2 4
	#	dense_rank() over(partition by publisher_id order by book_count desc) as `dense_rank`,	-> 1 2 2 3
		row_number() over(partition by publisher_id order by book_count desc) as `num`,	 #		-> 1 2 3 4
		pc_count_tb.*
	from
		(select
			publisher_id,
			category_id,
			count(*) as book_count
		from
			book_tb
		group by
			publisher_id,
			category_id
		order by
			publisher_id) as pc_count_tb) as book_row_number_tb00
where
	num = 1;