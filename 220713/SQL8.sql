-- 각 직원들의 이름과 연봉, 평균연봉과의 차(평균연봉 - 연봉)를 조회해보세요.
SELECT * FROM employees;
SELECT FIRST_NAME, LAST_NAME, SALARY - (SELECT AVG(SALARY) FROM employees) AS '평균연봉의 차' FROM employees;

-- 최고 연봉직원과 최저 연봉직원들의 이름을 조회해보세요.
SELECT FIRST_NAME, LAST_NAME FROM employees WHERE SALARY = (SELECT MAX(SALARY) FROM employees);
SELECT FIRST_NAME, LAST_NAME FROM employees WHERE SALARY = (SELECT MIN(SALARY) FROM employees);

-- 평균 연봉보다 높게 받는 직원 조회
SELECT FIRST_NAME, LAST_NAME FROM employees WHERE SALARY > (SELECT AVG(SALARY) FROM employees);

-- 부서명이 IT로 시작하는 직원들의 수(카운트)를 조회해보세요.
SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%';  -- 부서명이 IT 로 시작하는 부서 ID 구하기
SELECT * FROM employees WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%'); -- 구한 부서 ID로 목록조회
SELECT COUNT(*) FROM employees WHERE DEPARTMENT_ID = 60; -- 조회한 목록 카운트하기

-- Douglas Grant의 이메일을 'dog@naver.com'으로 변경해보세요.
update employees SET EMAIL = 'dog@naver.com' WHERE EMPLOYEE_ID = 199;
SELECT * FROM employees WHERE EMPLOYEE_ID = 199;

-- Ellen Abel과 같은 부서에서 근무하는 직원을 연봉 내림차순으로 정렬해서 조회
SELECT DEPARTMENT_ID FROM employees WHERE FIRST_NAME LIKE '%Ellen%';
SELECT * FROM employees WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM employees WHERE FIRST_NAME LIKE '%Ellen%') ORDER BY SALARY DESC;

-- 부서명이 IT로 시작하는 부서에서 근무하는 최고연봉자보다 높은 연봉을 받는 직원 목록을 연봉 오름차순으로 조회
SELECT * FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%';
SELECT * FROM employees WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%') ORDER BY SALARY ASC;
-- 자기가 속한 부서의 평균보다 많이 받는 직원
SELECT DEPARTMENT_ID FROM departments;
SELECT * FROM employees WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_ID = 50);

SELECT MAX(SALARY) FROM employees WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM employees WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_ID = 50));
SELECT * FROM employees WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM departments) ORDER BY DEPARTMENT_ID DESC;

SELECT * FROM (
SELECT * FROM employees WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM departments) ORDER BY DEPARTMENT_ID DESC;
) AS A ORDER BY SALARY DESC;