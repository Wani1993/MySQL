SELECT * FROM country;
SELECT * FROM country LIMIT 1 OFFSET 2; -- 원하는 조건의 내용을 한칸 건너뛰고 한개를 보여줄때 사용
SELECT * FROM country LIMIT 2, 1; -- 순서가 OFFSET 먼저 나오고 그다음에 리미트 숫자를 사용해야한다

SELECT * FROM country LIMIT 10 OFFSET 0; -- 0번째부터 10번까지
SELECT * FROM country LIMIT 10 OFFSET 10; -- 10번째부터 20번까지
SELECT * FROM country LIMIT 10 OFFSET 20; -- 20번째부터 30번까지
					-- page 나누기 --
