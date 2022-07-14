-- 부서 ID가 90인 직원들 인원 수
SELECT COUNT(*) FROM employees WHERE DEPARTMENT_ID = 90;

-- 부서 ID가 60인 직원들 인원수
SELECT COUNT(*) FROM employees WHERE DEPARTMENT_ID = 60;

-- 부서 ID가 30인 직원들 인원수
SELECT COUNT(*) FROM employees WHERE DEPARTMENT_ID = 30;

-- 부서별로 직원들의 인원수를 보고싶다
SELECT DEPARTMENT_ID, COUNT(*) FROM employees GROUP BY DEPARTMENT_ID;  -- GROUP BY 를 통해서 부서별로 카운트를 할수있다.

-- 부서별 최고 연봉, 최저 연봉, 평균 연봉, 연봉 합
SELECT DEPARTMENT_ID, MAX(SALARY), MIN(SALARY), AVG(SALARY), SUM(SALARY)
From employees
GROUP BY DEPARTMENT_ID;

SELECT JOB_ID FROM employees GROUP BY JOB_ID;  -- GROUP BY 를 이용해서 중복제거
SELECT DISTINCT JOB_ID, LAST_NAME FROM employees;

-- 직원 테이블의 LAST_NAME 을 중복 제거하고 조회
SELECT DISTINCT LAST_NAME FROM employees;
-- 직원 테이블 LaST_NAME 구룹 별로 인원 수 조회
SELECT LAST_NAME, COUNT(*) FROM employees GROUP BY LAST_NAME;

-- LAST_NAME 그룹의 카운트가 2 이상인 행들만 조회
SELECT LAST_NAME, COUNT(*)
FROM employees
GROUP BY LAST_NAME
HAVING COUNT(*) > 1;  -- GROUP에 조건을 줄때는 WHERE 이 아닌 HAVING
-- 위에 성을 가지는 직원 목록 조회
SELECT * FROM employees WHERE LAST_NAME IN (
	SELECT LAST_NAME
    FROM employees
    GROUP BY LAST_NAME
    HAVING count(*) > 1
    );

-- 5번째로 적게 받는 직원들 목록
SELECT * FROM employees 
WHERE SALARY = (SELECT DISTINCT SALARY FROM employees ORDER BY SALARY LIMIT 1 OFFSET 4); -- 중복값을 제거하고 한행만 보여주게 하여 값으로 넣는다

-- 상위 연봉 50명(같은 연봉에 대해서 FIRST_NAME 이 빠른친구)에 대해서 부서별로 몇 명씩 있는지
SELECT DEPARTMENT_ID, COUNT(*) FROM 
(SELECT * FROM employees ORDER BY SALARY DESC, FIRST_NAME ASC LIMIT 50) AS A  -- 서브쿼리문을 테이블로 사용할때는 별명을 꼭 사용해야한다
GROUP BY DEPARTMENT_ID;  