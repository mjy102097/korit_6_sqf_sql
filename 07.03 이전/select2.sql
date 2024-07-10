# where - 조건
select
	*
from
	student_tb
where
	student_name = "문주영";
    
select   # -> 실행 순서는 from -> where -> select 순으로 실행된다고 보면 됨!
	student_id,
    student_name
from
	student_tb
where	# 이 조건을 성립하는 행을 선택
	student_name = "문주영"
	or student_name = "문주일";