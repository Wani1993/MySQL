CREATE TABLE persons (
	persons INT KEY AUTO_INCREMENT
    , firstName VARCHAR(10) NOT NULL  -- 널값이 있을수없게 만들어준다
    , lastName VARCHAR(10) NOT NULL
    , age INT NOT NULL
);

iNSERT INTO persons (firstName, lastName, age) VALUES (null,null,null);