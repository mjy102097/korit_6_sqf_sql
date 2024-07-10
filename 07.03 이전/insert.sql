# 데이터 삽입(DML - INSERT)

select * from student_tb;

# insert into `study`.`student_tb`	Database가 use되지 않은 경우
# insert into `student_tb`			Database가 use상태인 경우
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values
	(0, "문주영", "010-1234-3072", "mjy1234@naver.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values
	(0, "문주일", "010-1234-3072", "mjy1234@naver.com", now()),
	(0, "문주이", "010-1234-3072", "mjy1234@naver.com", now()),
	(0, "문주삼", "010-1234-3072", "mjy1234@naver.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, introduce, admission_date)
values
	(0, "문주사", "010-1234-3072", "mjy1234@naver.com", null, now());
    
insert into student_tb
	(student_id, phone, email, introduce, student_name, admission_date)
values
	(0, "010-1234-3072", "mjy1234@naver.com", null, "문주오", now());
    
insert into student_tb
values
	(0, "문주육", "010-1234-3072", "mjy1234@naver.com", null, now());