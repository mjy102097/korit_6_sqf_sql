# 데이터 조회(DML -SELECT)

select * from student_tb;
select `student_id`, `student_name`, `phone`, `email`, `introduce`, `admission_date` from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from student_tb;
select student_id, student_name from student_tb; # 원하는 컬럼만 출력
select student_name, student_id from student_tb; # 순서 바꿔서 출력
select student_id, student_name as s_name from student_tb;


# union(all) 병합 조건 - 컬럼의 개수와 자료형이 동일한 select 결과만 병합 가능
# union -> 중복 제거 후 select 결과 병합
# union all -> 중복 제거 없이 select 결과 병합
select 1 as number, "문주영" as name, 28 as age
union all
select 2 as number, "문주일" as name, 29 as age
union all
select 2 as number, "문주일" as name, 29 as age;

select
	number,
    name
from
	(select 1 as number, "문주영" as name, 28 as age
	union all
	select 2 as number, "문주일" as name, 29 as age
	union all
	select 2 as number, "문주일" as name, 29 as age) as temp_tb;
