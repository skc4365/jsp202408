<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 - Exception</title>
</head>
<body>
	<!-- web.xml에 기술한 에러페이지 구현.  -->
	<%
	int status = response.getStatus();
	if (status == 404) {
		out.print("404 에러가 발생");
		out.print("<br> 파일 경로를 확인해 주세요");
	} else if (status == 405) {
		out.print("405 에러가 발생");
		out.print("<br> 파일 경로를 확인해 주세요");
	} else if (status == 500) {
		out.print("500 에러가 발생");
		out.print("<br> 파일 경로를 확인해 주세요");
	}
	%>
</body>
</html>