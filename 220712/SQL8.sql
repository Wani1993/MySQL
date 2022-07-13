-- 세션(session) 변수(variable) 사용해보기
-- 한번의 접속동안에는 유지되는 변수 >> 세션변수
SET @myVar := 10;  -- 세션 변수 이름 앞에는 @가 들어간다 := 은 대입연산자

SELECT @myVar * 10 + 5;