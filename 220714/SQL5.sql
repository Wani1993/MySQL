USE my_db;
DESC books;
									-- 이름이랑 제약사항은 그대로 두고 NOT NULL 사항만 추가
ALTER TABLE books CHANGE COLUMN title title VARCHAR(30) NOT NULL;

INSERT INTO books (title) VALUES ('디폴트값확인');

SELECT * FROM books;

-- CREATE TABLE myPractice (
-- colName1 VARCHAR(50) DEFAULT "39838o"
--   );