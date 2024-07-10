# 데이터 수정(DML - UPDATE)

select * from student_tb;

select
	student_id
from
	student_tb
where
	student_name = "문주사";

update	# update 실행되는 순서는 update -> where -> set
	student_tb
set
	email = "mjy1238@gmail.com"
where
	student_id in (	select 			# 동명이인이 없으면 = 쓰면 되는데 동명이인이 있으면 in 사용해야한다.
						temp_student_tb.student_id
					from
						(select * from student_tb) as temp_student_tb 	# 서브쿼리에는 같은 테이블을 넣으면 안돼서
					where												# 테이블을 불러와서 as 를 줌으로써 가상의 테이블을 만든다.
						temp_student_tb.student_name = "문주사"); 

update
	student_tb
set
	phone = "010-1234-4321",
    email = "mjy1236@gmail.com"
where
	student_id = 3;