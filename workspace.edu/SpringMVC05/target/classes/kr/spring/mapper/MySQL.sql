-- SQL 문장 작성 --

CREATE TABLE BOARD (
	IDX INT NOT NULL AUTO_INCREMENT,
	MEMID VARCHAR(30) NOT NULL,
	TITLE VARCHAR(100) NOT NULL,
	CONTENT VARCHAR(2000) NOT NULL,
	WRITER VARCHAR(30) NOT NULL,
	INDATE DATETIME DEFAULT NOW(),
	COUNT INT DEFAULT 0,
	PRIMARY KEY(IDX)
);

DROP TABLE BOARD;


INSERT INTO BOARD(TITLE, CONTENT, WRITER)
VALUES ('[속보]명훈쌤 시내에서 미상의 여자와 걷는 모습 발견되어', '힝 뻥인데~', '준용쌤');
INSERT INTO BOARD(TITLE, CONTENT, WRITER)
VALUES ('[공지]다음주 13일 팀편성 합니다~', '팀장지원 하실분들 말씀해주세요', '명훈쌤');
INSERT INTO BOARD(TITLE, CONTENT, WRITER)
VALUES ('[알림]다음주부터 간식은 2일에 한번씩만 나갑니다...', '진짜 믿었어?', '조미소');
INSERT INTO BOARD(TITLE, CONTENT, WRITER)
VALUES ('AI카페에서 태연씨 다른반 교육생과 이야기하고 있더라', '처음보는 여자애 같은데..', '박치우');
INSERT INTO BOARD(TITLE, CONTENT, WRITER)
VALUES ('저는 사실 .. 병관쌤과 닮지 않았습니다', '죄송합니다 관심을 끌고 싶었어요', '김대현');

SELECT * FROM BOARD;

DROP TABLE AUTH;

DROP TABLE MEMBER;

-- 회원 테이블 --
CREATE TABLE MEMBER (
	MEMIDX INT NOT NULL,
	MEMID VARCHAR(20) NOT NULL,
	MEMPASSWORD VARCHAR(68) NOT NULL,
	MEMNAME VARCHAR(20) NOT NULL,
	MEMAGE INT,
	MEMGENDER VARCHAR(20),
	MEMEMAIL VARCHAR(50),
	MEMPROFILE VARCHAR(50),
	PRIMARY KEY(MEMID)
);
-- 권한 테이블
-- Spring Security에서는 member테이블 안에 반드시 권한이 있어야 한다
-- 사용하지 않더라도 넣어주자
CREATE TABLE AUTH(
	NO INT NOT NULL AUTO_INCREMENT,
	MEMID VARCHAR(50) NOT NULL,
	AUTH VARCHAR(50) NOT NULL,
	PRIMARY KEY(NO),
	CONSTRAINT FK_MEMBER_AUTH FOREIGN KEY(MEMID)
	REFERENCES MEMBER(MEMID)
);

INSERT INTO MEMBER (MEMID, MEMPASSWORD, MEMNAME, MEMAGE, MEMGENDER, MEMEMAIL, MEMPROFILE)
VALUES ('admin', '1234', '관리자', 20, '남자', 'admin@gamil.com', '');

SELECT * FROM MEMBER;

DELETE FROM MEMBER;

DELETE FROM MEMBER WHERE MEMIDX=4;

SELECT * FROM MEMBER WHERE MEMID="mincho" and MEMPASSWORD="1234";

SELECT * FROM AUTH;







