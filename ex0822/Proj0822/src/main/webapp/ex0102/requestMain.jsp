<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>내장객체 request</title>
	</head>

	<body>
		<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
		
		<!-- <a href="파일경로?변수명=Hell&han=값"> -->
		<a href="./requestWebInfo.jsp?eng=Hell&han=안녕">GET방식</a>
		<br>
		
		<!-- form태그는 입력포맷이다. 값입력post방식을 사용한다. -->
		<form action="./requestWebInfo.jsp" method="post">
			영어: <input type="text" name="eng" value="Bye"><br>
			한글: <input type="text" name="han" value="잘가"><br> 
			<input type="submit" value="POST 방식 전송" />
		</form>

		<h2>2. 클라이언트와 요청 매개변수 읽기</h2>
		<form action="./requestParameter.jsp" method="post">
			아이디: <input type="text" name="id" value=""><br>
			성별: <input type="radio" name="sex" value="man">남자<br>
			<input type="radio" name="sex" value="woman">여자<br>
			관심사항:<input type="checkbox" name="favo" value="eco">경제<br>
			<input type="checkbox" name="favo" value="pol" checked="checked">정치<br>
			<input type="checkbox" name="favo" value="ent">연예<br>
			자기소개: <textarea name="intro" rows="4" cols="30"></textarea><br>
			<input type="submit" value="전송하기" />
		</form>
	</body>

	</html>