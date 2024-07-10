SELECT * FROM study.student_tb;

# 단순 비교 연산
select
	*
from
    student_tb
where
    student_name = "문주영";

# OR 연산
select
	*
from
    student_tb
where
    student_name = "문주영"
    or student_name = "문주일";

# in 연산  /  조건이 같은 컬럼일때 or 대신 사용가능
select
	*
from
	student_tb
where
	student_name in ("문주영", "문주일", "문주이"); 
    
# AND 연산
select
	*
from
	student_tb
where
	student_id > 2
    and student_id < 4; 

# BETWEEN A AND B 연산(A 이상 B 이하)
# 초과 미만 하려면 and 쓰는게 좋음
select
	*
from
	student_tb
where
	student_name between 2 and 4;

# NOT
select
	*
from
	student_tb
where
	not student_name = "문주영";

# NULL 체크
# is null : 긍정
# is not null : 부정
select
	*
from
	student_tb
where
	introduce is null;
#	introduce is not null;


insert into student_tb
values
	(0, "손경태", "010-1111-2222", "aaa@gmail.com", null, now()),
	(0, "김지현", "010-1111-3333", "bbb@naver.com", null, now()),
	(0, "김동인", "010-2222-2222", "ccc@gmail.com", null, now()),
	(0, "김정현", "010-4444-3333", "aaabbb@naver.com", null, now()),
	(0, "권오광", "010-5555-2222", "bbbccc@kakao.com", null, now()),
	(0, "권혁진", "010-1111-5555", "aaabbbccc@kakao.com", null, now());

# 와일드 카드(like)   
select
	*
from
	student_tb
where
	student_name like "김%";

select
	*
from
	student_tb
where
	email like "%gmail.com";
    
select
	*
from
	student_tb
where
	phone like "%2222%"
    and not phone like "%2222";
    
select
	*
from
	student_tb
where
	email like "___bbb%";

