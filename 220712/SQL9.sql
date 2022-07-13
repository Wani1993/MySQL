SET @rowCount := 239;
SET @pageNumber := 0;
SET @pagePer := 10;
SET @toatlPage := @rowCount / @pagePer;

-- 239행을 가지는 country 테이블을 각 페이지별 행의 개수와 보고자 하는 페이지 번호를 정하면
-- 해당 row들을 조회할 수 있는 SELECT 문을 작성해보기
-- SELECT * FROM country LIMIT @pagePer OFFSET @pageNumber;

PREPARE STMT FROM 'SELECT * FROM country LIMIT ? OFFSET ?';
EXECUTE STMT USING @pagePer, @pageNumber;






