SELECT * FROM country WHERE Name NOT IN ('South Korea', 'Japan', 'China'); -- 여러가지 값을 같이 넣을때 IN 을 이용한다 부정 표현을 하고싶을땐 NOT

SELECT * FROM country WHERE Population NOT BETWEEN 40000000 AND 50000000;

-- Continent 컬럼 값이 North America, Europe, Asia 를 제외한 국가들 중 
-- GNP 값이 100 이상 1000 이하인 국가 목록 조회하기
SELECT * FROM country WHERE Continent NOT IN ('North America', 'Europe', 'Asia') AND GNP BETWEEN 100 AND 1000;

SELECT * FROM country WHERE IndepYear IS NOT NULL;  -- NULL 은 관계연산자를 사용하면 무조건 NULL 이 되므로 IS 라는 명령어를 사용한다.


