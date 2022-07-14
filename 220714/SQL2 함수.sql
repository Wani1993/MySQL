SELECT RTRIM('      a      ');  -- 오른쪽 공백을 제거해준다
SELECT LTRIM('      a      '); -- 왼쪽 공백을 제거해준다
SELECT TRIM('       a      '); -- 양쪽 공백을 제거해준다

SELECT LOWER('ABCDE');  -- 소문자로 바꾸기
SELECT UPPER('abcde');  -- 대문자로 바꾸기

SELECT CONCAT('문자열', '결합', '함수');  -- 문자열 결합
SELECT CONCAT("결합", NULL, "값이 있으면?");  -- NULL 값이 있으면 무조건 NULL

SELECT CHAR_LENGTH('문자열길이'); -- 문자열 길이

SELECT REPLACE('원본 문자열에서 변환합니다', '변환', 'REPLACE');
SELECT REPLACE(1234, '1', '5');

SELECT SUBSTRING('employees', 5);  -- 문자열 , 자를 시작 위치
SELECT SUBSTRING('employees', 5, 2); -- 문자열 , 자를 시작 위치, 개수
SELECT SUBSTRING('employees', -3);  -- 문자열 , 자를 시작 위치

SELECT LPAD("123",5,"0");
SELECT RPAD("456",5,"*");
SELECT REPEAT("반복결합",3);

SELECT LOCATE('D', 'ABCEDFG');
SELECT LOCATE('위치', '문자열의 위치를 찾는데 SQL의 문자 순서는 위치 1부터임');
SELECT LOCATE('A', 'ABABAB', 2);

-- '515.123.4567' 
-- 을 기준으로 각각 잘라보기
SELECT SUBSTRING('515.123.4567', 1,3);
SELECT SUBSTRING('515.123.4567', 5,3);
SELECT SUBSTRING('515.123.4567', -4,4);

-- 직원 테이블 전화번호 앞자리 3자리로 그룹지어 개수
SELECT SUBSTRING(PHONE_NUMBER, 1, 3), COUNT(*) FROM employees
GROUP BY SUBSTRING(PHONE_NUMBER, 1, 3);

-- 
SELECT RAND(); -- 랜덤값
SELECT ROUND(123.123, 2); -- 자릿수만큼 반올림
SELECT FLOOR(1.555);  -- 내림
SELECT CEIL(1.222);  -- 올림

SELECT ABS(-55); -- 절대값
SELECT POW(2, 8); -- 제곱

SELECT PI(); 

-- 주사위 1 ~ 6사이의 정수 생성
SELECT CEIL(RAND() * 6);