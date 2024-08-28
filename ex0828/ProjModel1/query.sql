----처음부터 다시할때 참고---
--삭제: Drop제약조건삭제, Drop테이블삭제


-- 멤버테이블 생성
DROP TABLE member;
CREATE TABLE member(
	id varchar2(10) not null,
	pass varchar2(10) not null,
	name varchar2(30) not null,
	regidate date default sysdate not null,
	primary key(id)
);
-- 레코드 추가
INSERT INTO member(id, pass, name)
	VALUES('skc0', '1234', '선경0');
INSERT INTO member(id, pass, name)
	VALUES('skc1', '1234', '선경1');
INSERT INTO member(id, pass, name)
	VALUES('skc2', '1234', '선경2');
INSERT INTO member(id, pass, name)
	VALUES('skc3', '1234', '선경3');
INSERT INTO member(id, pass, name)
	VALUES('skc4', '1234', '선경4');
	
-- 멤버테이블 확인
SELECT * FROM member;
-- 멤버테이블의 내용삭제
DELETE FROM member;
-- 멤버테이블 삭제
DROP TABLE member;

---------------------------------------------------
-- 보드테이블 생성
DROP TABLE board;
CREATE TABLE board(
	num number primary key,
	title varchar2(200) not null,
	content varchar2(200) not null,
	id varchar2(10) not null,
	postdate date default sysdate not null,
	visitcount number(6)
);
--외래키 삭제
-- alter table 테이블명 foreign key 제약조건명;
ALTER TABLE board DROP CONSTRAINT board_mem_fk;
-- 보드테이블 업데이트(외래키설정)
ALTER TABLE board
	add constraint board_mem_fk foreign key(id)
	references member(id);
-- 시퀀스 객체 생성
DROP SEQUENCE seq_board_num;
CREATE SEQUENCE seq_board_num
	increment by 1
	start with 1
	minvalue 1
	nomaxvalue
	nocycle
	nocache;

INSERT INTO board(num, title, content, id, postdate, visitcount)
	VALUES(seq_board_num.nextval, '제목1입니다', '내용1입니다', 'skc0', sysdate, 0);
INSERT INTO board
	VALUES(seq_board_num.nextval, '파란홍길동', '내용2입니다', 'skc0', sysdate, 0);
INSERT INTO board
	VALUES(seq_board_num.nextval, '봄봄', '봄의 왈츠', 'skc1', sysdate, 0);
INSERT INTO board
	VALUES(seq_board_num.nextval, '여름', '여름향기', 'skc2', sysdate, 0);
INSERT INTO board
	VALUES(seq_board_num.nextval, '가을', '가을동화', 'skc3', sysdate, 0);
INSERT INTO board
	VALUES(seq_board_num.nextval, '겨울', '겨울연가', 'skc4', sysdate, 0);

SELECT * FROM board;
--commit;

-- 제약조건 확인
SELECT * FROM all_constraints;
	
--	타이틀에 '%홍길동%' 글자가 포함된 행(Row)의 갯수를 결과롱 돌려준다. 
SELECT count(*) FROM board WHERE title LIKE '%홍길동%';	
	
	
	