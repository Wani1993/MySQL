-- 식당 정보 테이블
-- 상호명
-- 전화번호
-- 주소
CREATE TABLE Restaurants (
	companyNum INT KEY AUTO_INCREMENT  -- 인설트 할때마다 늘어난다. 
    , businessName VARCHAR(10) NOT NULL  -- 널값이 있을수없게 만들어준다
    , number VARCHAR(20) NOT NULL
    , address VARCHAR(30) NOT NULL UNIQUE
);


INSERT INTO Restaurants (businessName, number, address) 
VALUE ('대모골', '051-744-8875', '부산진구 중앙대로 113'), ('도연정', '051-744-5555', '부산진구 중앙대로 116'), ('짬뽕관', '051-784-8888', '부산진구 중앙대로 학원밑'); 

SELECT * FROM Restaurants;

-- 메뉴 정보 테이블
-- 음식명
-- 가격 등

CREATE TABLE menu (
	menuId INT PRIMARY KEY AUTO_INCREMENT -- 인설트 할때마다 늘어난다. 
    , foodName VARCHAR(10) NOT NULL  -- 널값이 있을수없게 만들어준다
    , price INT NOT NULL
);


INSERT INTO menu (foodName, price) 
VALUE ('두루치기', 7500), ('된장찌개', 6000), ('부대찌개', 7000), ('밀만', 6000), 
('밀돈', 6500), ('돌솥비빔밥', 5000), ('밀제', 6500), ('육개장', 6000);

SELECT * FROM menu;

ALTER TABLE menu ADD COLUMN restId INT;

UPDATE menu
SET restId = 1
WHERE menuId BETWEEN 1 AND 3;

ALTER TABLE menu ADD CONSTRAINT FOREIGN KEY (restId) REFERENCES Restaurants (companyNum);
-- TABLE 테이블명 ADD CONSTRANINT FOREIGN KEY (참조할 키) REFERENCES 테이블명 (참조할 키)
