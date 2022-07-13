-- hr 데이터 베이스 사용하기 명령어
USE hr;
-- hr 데이터 베이스의 테이블 목록보기
SHOW TABLES;
-- employees(직원) 테이블의 구조(어떠한 컬럼이 있는지) 조회하기
DESC employees;
-- employees(직원) 테이블의 모든 행의 모든 열을 조회하기
SELECT * FROM employees;
-- 직원 테이블의 First_Name(이름) 열의 값이 John인 직원 조회
SELECT * FROM employees WHERE First_Name = 'John';
-- 직원 테이블의 Last_Name(성) 열의 값이 'John을 포함하는 값' 인 직원 조회
SELECT * FROM employees WHERE Last_Name LIKE '%John%';
-- 직원 테이블의 이름의 값이 6글자인 직원 조회
SELECT * FROM employees WHERE FIRST_NAME LIKE '______';
SELECT * FROM employees WHERE char_length(First_Name) = 6;  -- 함수를 이용해서 글자수에 맞는 데이터 찾기
-- 직원 테이블의 Salary(연봉) 열의 값이 10000 ~ 15000인 직원 조회
SELECT * FROM employees WHERE SALARY >= 10000 AND SALARY <= 15000;
-- 직원 테이블의 이름, 성, 연봉 컬럼과 연봉의 6%를 연산하여 'tax'라는 별명의 컬럼으로 조회하세요.
SELECT FIRST_NAME, Last_Name, SALARY, (SALARY * 0.06) AS 'tax' FROM employees;