SELECT * FROM member;

INSERT INTO member(id, pass, name) 
VALUES('skc', '1234', '기본선경이');

--SELECT * FROM member WHERE id=? AND pass=?
SELECT * FROM member WHERE id='skc' AND pass='1234';