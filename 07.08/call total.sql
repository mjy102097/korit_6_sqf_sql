SELECT * FROM dvd_db.score_tb;
set @total = 0;
set @err = 0;
call usp_mod_score("이병안", 90, "a", 80, @total, @err);
# total 변수는 안에 3개의 값을 합친값으로 되어있어서 set @total = 0; 을 통해 변수를 미리 선언해주고 실행

select @total;