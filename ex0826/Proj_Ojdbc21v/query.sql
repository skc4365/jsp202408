
-- 멤버테이블 생성
CREATE TABLE member(
	id varchar2(10) not null,
	pass varchar2(10) not null,
	name varchar2(30) not null,
	regidate date default sysdate not null,
	primary key(id)
);
-- 보드테이블 생성
CREATE TABLE board(
	num number primary key,
	title varchar2(200) not null,
	content varchar2(200) not null,
	id varchar2(10) not null,
	postdate date default sysdate not null,
	visitcount number(6)
);
-- 멤버테이블 확인
SELECT * FROM member;
SELECT * FROM board;

-- 멤버테이블의 내용삭제
DELETE FROM member;
-- 멤버테이블 삭제
DROP TABLE member;

-- 보드테이블 업데이트(외래키설정)
ALTER TABLE board
	add constraint board_mem_fk foreign key(id)
	references member(id);
	
-- 시퀀스 객체 생성
CREATE SEQUENCE seq_board_num
	increment by 1
	start with 1
	minvalue 1
	nomaxvalue
	nocycle
	nocache;
-- 레코드 추가
INSERT INTO member(id, pass, name)
	VALUES('skc0', '1234', '선경');
	
INSERT INTO board(num, title, content, id, postdate, visitcount)
	VALUES(seq_board_num.nextval, '제목1입니다', '내용1입니다', 'skc0', sysdate, 0);
	
--commit;
	

	
	
	
	
	
	
	
	
-------------------------
---- SYSTEM계정의 설정된 테이블스페이스 확인
--SELECT tablespace_name, status, contents FROM dba_tablespaces;
--SELECT * FROM dba_tablespaces;
--
---- 가용공간 확인
--SELECT tablespace_name, sum(bytes), max(bytes) 
--FROM dba_free_space
--GROUP BY tablespace_name;
--
---- skc계정의 테이블 스페이스 확인
--SELECT username, default_tablespace from dba_users
--WHERE username in upper('skc');
--
---- SKC계정에 용량할당 5MB
--ALTER USER skc QUOTA 5m ON users;








