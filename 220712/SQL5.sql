SELECT * FROM country
WHERE Name LIKE '%Korea%'; -- %% 사이에 있는 문자가 포함된 것들을 다 나타내준다

SELECT * FROM country
WHERE Name LIKE '%K%';

SELECT * FROM country
WHERE Name LIKE '%K';  -- 끝이 K인 것들만 나타내준다

SELECT * FROM country
WHERE Name LIKE 'K%';  -- 시작이 K인 것들만 나타내준다

-- 국가 이름이 'A'로 시작하고 'A'로 끝나는 국가 조회
SELECT * FROM country
WHERE Name LIKE 'A%A';

SELECT * FROM country
WHERE Name LIKE 'A____A'; -- 밑줄 갯수만큼의 글자수를 찾아 나타내준다

-- 국가명이 ~ria로 끝나는 국가 조회
SELECT * FROM country
WHERE Name LIKE '%ria';

-- Region 컬럼이 North ~~ 시작하는 국가
SELECT * FROM country
WHERE Region LIKE 'North%';

-- Region 컬럼에 A로 시작해서 a로 끝나는 명칭을 포함하지 않는 국가
SELECT * FROM country
WHERE Region NOT LIKE '%a%a' AND Region NOT LIKE 'a%a%';
