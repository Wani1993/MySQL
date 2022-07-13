SELECT * FROM country;

SELECT * FROM city;

SELECT Name, Population FROM country;

DESC country;  -- 테이블의 구조를 볼수있는 명령어

-- country 테이블 Code 열과 GNP 열을 조회해보세요
SELECT Code, GNP FROM country;

SELECT * FROM country WHERE Name = 'South Korea'; -- WHERE 을 이용하면 해당조건이 참인 행만 나온다
-- 국가명이 'Japan' 조회
SELECT * FROM country WHERE Name = 'Japan';
-- 국가명이 'China' 조회
SELECT * FROM country WHERE Name = 'China';

-- Continent 값이 'Asia' 인 행 조회하기
SELECT * FROM country WHERE Continent = 'Asia';




SELECT * FROM country WHERE Name = 'South Korea' OR Name = 'Japan' OR Name = 'China';

-- Population(인구) 컬럼 값이 40,000,000 이상인 국가를 조회
SELECT * FROM country WHERE Population >= 40000000;
-- Population(인구) 컬럼 값이 40,000,000 이상이고 50,000,000 이하인 국가를 조회
SELECT * FROM country WHERE Population >= 40000000 AND Population <= 50000000;

-- Continent 'Asia'를 제외한 국가 목록 조회
SELECT * FROM country WHERE Continent <> 'Asia';