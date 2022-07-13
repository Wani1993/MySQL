SELECT Code AS '코드', Name AS '이름', Population AS '인구' FROM country;  -- 컬럼명을 임의로 바꿀수도 있다 (한글도 가능)

-- 위의 조회 + SurfaceArea(별명 면적) 컬럼을 추가로 조회
SELECT Code AS '코드', Name AS '이름', Population AS '인구', SurfaceArea AS '면적' FROM country;
																			-- ROUND 반올림 해주는 함수 뒤에숫자는 소숫점 자리수
SELECT Code AS '코드', Name AS '이름', Population AS '인구', SurfaceArea AS '면적', ROUND(Population / SurfaceArea, 1) AS '인구밀도'
FROM country WHERE SurfaceArea <= 50000 AND Population >= 10000000;

-- 인구밀도 조회
SELECT Code AS '코드', Name AS '이름', Population AS '인구', SurfaceArea AS '면적', ROUND(Population / SurfaceArea, 1) AS '인구밀도'
FROM country ORDER BY 인구 ASC;  -- 셀렉이 이루어지고 난 다음 행해지기때문에 별명으로도 가능. ASC 오름차순 DESC 내림차순

-- 아시아 대륙 국가들의 인구 순으로(내림차순)
SELECT * FROM country WHERE Continent = 'Asia' ORDER BY Population DESC;

-- LifeExpectancy 기준으로 오름차순 조회
SELECT * FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy ASC;

-- 국가의 이름과 인구와 GNP, GNPOld 를 조회하고, (GNPold - GNP 차를 구해서 "변화량" 내림차순) 조회
SELECT name, population, GNP, GNPOld, GNPOld - GNP AS "GNP 변화량" 
FROM country 
WHERE GNP IS NOT NULL AND GNPOld - GNP IS NOT NULL ORDER BY `GNP 변화량` ASC;  -- `내용` 를 사용하면 띄어쓰기도 사용가능하다.

-- 대륙 순으로 정렬해서 조회
SELECT * FROM country ORDER BY Continent, Population;

-- GovernmentForm 오름차순, GNP 내림차순
SELECT * FROM country ORDER BY GovernmentForm ASC, GNP DESC;