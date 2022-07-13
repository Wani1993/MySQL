USE hr;

-- hr 부서(departments) 테이블 모든 행과 열 조회
SELECT * FROM departments;
-- 부서 명이 'IT%'로 시작하는 부서들 조회
SELECT * FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%';
-- 60, 210, 230
-- 직원 테이블
SELECT * FROM employees WHERE DEPARTMENT_ID IN (
	SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%'  -- 괄호안에 또다른 셀렉문을 넣은것을 서브 쿼리라고 부른다.
);

-- 연봉 내림차순 정렬
-- 연봉 상위 10명인데 그 10명을 오름차순으로 조회
SELECT * FROM (
	SELECT * FROM employees ORDER BY SALARY DESC LIMIT 10 -- 조회한 테이블을 다시 테이블로 재사용함으로써 재 정렬을 할수있게 만들어준다
) AS A ORDER BY SALARY ASC;

SELECT (SELECT 1 + 1), 2, 3, 4;

-- David Austin의 연봉과 같은 연봉을 받는 직원들 조회
SELECT * FROM employees WHERE SALARY = (
	SELECT SALARY FROM employees WHERE FIRST_NAME = 'David' AND LAST_NAME = 'Austin'
);  -- SELECT * FROM employees WHERE SALARY = 4800; 문장과 같은말이다.

