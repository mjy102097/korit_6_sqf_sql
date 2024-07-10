SELECT * FROM study.study_sample;

insert into study_sample
values
("문주영", "국어, 수학", 10000 + 20000),
("문주일", "국어, 영어, 과학", 10000 + 30000 + 40000),
("문주이", "국어, 과학", 10000 + 40000); # 명령어 마지막에는 ;(세미콜론) 찍기

truncate study_sample; # 데이블 비우는 명령어

# 정규화(Normalization)

# 제1 정규형(1NF - 1 Nomal Form) : 하나의 컬럼에는 하나의 값만 들어간다.
insert into study_sample
values
("문주영", "국어", 10000),
("문주영", "수학", 20000),
("문주일", "국어", 10000),
("문주일", "영어", 30000),
("문주일", "과학", 40000),
("문주이", "국어", 10000),
("문주이", "과학", 40000);

# 제2 정규형(2NF) : 부분 종속성(Partial Dependency)을 제거해야 한다.
# Partial Dependency란?
# - Composite Primary Key를 가진 데이터를 의미 (두개 이상의 컬럼을 합쳐서 기본키로 사용하는것)
# Primary Key -> 기본키(유일하게 중복되지 않는 값)

insert into course_register_list
values
("문주영", "국어"),
("문주영", "수학"),
("문주일", "국어"),
("문주일", "영어"),
("문주일", "과학"),
("문주이", "국어"),
("문주이", "과학");

insert into course_list
values
("국어", 10000, "홍길동"),
("수학", 20000, "김영자"),
("영어", 30000, "이숙자"),
("과학", 40000, "박영구");

# 제3 정규형 : 데이터에 값이 A B C 가 있을때 A = B, B = C, A = C 가 성립하면 3정규형, 3정규형을 하기 위해서는 2정규형을 마친 데이터여야함.
insert into course_price
values
("국어", 10000),
("수학", 20000),
("영어", 30000),
("과학", 40000);

insert into instructor_list
values
("국어", "홍길동"),
("수학", "김영자"),
("영어", "이숙자"),
("과학", "박영구");