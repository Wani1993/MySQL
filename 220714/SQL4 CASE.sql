USE WORLD;
USE hr;

-- 직원 이름(이름 + 성) 결합시킨 Full Name
-- 전화번호가 011로 시작하는 경우 '개인전화', 그 외의 경우 '내선 번호'라고 별명은 '분류' 조회
SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS 'Full Name',
	CASE WHEN PHONE_NUMBER LIKE '011%' THEN '개인전화'
		ELSE '내선번호'
        END AS '분류'
FROM employees;

-- 값이 NULL 이면 임의의 값으로 변경하기
SELECT Name
	, CASE WHEN LifeExpectancy IS NULL THEN 0.0
		ELSE LifeExpectancy 
		END AS Life
FROM country;

SELECT CASE WHEN 10 > 5 THEN '왼쪽이 오른쪽보다 큽니다'  -- 참이면 THEN절, 거짓이면 ELSE 절로 나온다.
				ELSE '왼쪽이 오른쪽보다 작거나 같습니다'
                END;  -- CASE 문을 쓰려면 끝을 알려야한다. (무조건)
                
SELECT CASE WHEN 10 > 5 THEN '왼쪽'
			WHEN 10 = 5 THEN '같음'
            WHEN 10 < 5 THEN '오른쪽'
            END AS '비교';
            
SELECT IFNULL(NULL, '대체값');
-- 값이 3개, 1번째 값이 NULL이면 2번째값, 2번째값도 NULL이면 3번째값
SELECT IFNULL(IFNULL("첫번째값","두번째값"),"세번째값");
SELECT COALESCE("첫","두","세");

SELECT NULLIF('A', 'B');  -- 두개가 같으면 NULL 다르면 첫번째꺼