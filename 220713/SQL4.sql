CREATE TABLE persons (
	persons INT KEY AUTO_INCREMENT  -- 인설트 할때마다 늘어난다. 
    , firstName VARCHAR(10) NOT NULL  -- 널값이 있을수없게 만들어준다
    , lastName VARCHAR(10) NOT NULL
    , age INT NOT NULL
    , email VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO persons (firstName, lastName, age, email) VALUES ('길동', '홍', 20, '길동@길동.net');
INSERT INTO persons (firstName, lastName, age, email) VALUES ('길동', '고', 42, 'gildong@길동.net');

SELECT * FROM persons;

-- 테이블 이름 
-- 각 열 (이름, 타입, 제약)
-- KEY 열