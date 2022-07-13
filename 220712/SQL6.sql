SELECT * FROM country LIMIT 5; -- LIMIT 뒤에 갯수만큼만 표시해준다

-- 인구가 가장 많은 1개의 국가 조회하기
SELECT * FROM country ORDER BY Population DESC LIMIT 1;

-- 면적순으로 탑 5
SELECT * FROM country ORDER BY SurfaceArea DESC LIMIT 5;

-- Continent 가 'Asia' 인 국가들 중 면적이 좁은 순으로 10개 국가
SELECT * FROM country WHERE Continent = 'Asia' ORDER BY SurFaceArea ASC LIMIT 10;

-- Region 이 '~Africa' 로 끝나는 국가들 중 독립년도가 가장 최근인 10개 국가
SELECT * FROM country WHERE Region LIKE '%Africa' ORDER BY IndepYear DESC LIMIT 10;

-- 면적당 인구비율(SurfaceArea / Population) 구해서 탑 10 국가
SELECT * FROM country ORDER BY Population / SurfaceArea DESC LIMIT 10;

-- (GNP - GNPOld 변화량)
SELECT * FROM country ORDER BY GNP - GNPOld DESC LIMIT 10;