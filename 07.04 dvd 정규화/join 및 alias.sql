SELECT * FROM master_tb;
SELECT * FROM join1_tb;
SELECT * FROM join2_tb;

SELECT
	*
FROM
	master_tb as mt # as(알리아스)는 as 생략하고 테이블명에서 한칸 띄워도 사용가능(ex. master_tb mt)
	left outer join join1_tb as jt1 on(jt1.join1_id = mt.name_id and jt1.join1_id < 4)
	left outer join join2_tb as jt2 on(jt2.join2_id = mt.phone_id);
    
# inner join on 안의 조건이 참인 것들만 출력, 거짓인 것들은 출력x (inner join은 교집합)
# left outer join은 거짓이더라도 null 값이 들어가서 출력됨 (left outer join은 합집합)
# on 안에 and 추가하여 두가지 조건을 만들수도 있다.