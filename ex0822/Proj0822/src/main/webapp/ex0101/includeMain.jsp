<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./includeFile.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- include file="./includeFile.jsp" 파일추가 -->
	<%
	out.println("오늘 날짜: " + today);
	out.println("<br>");
	out.println("내일 날짜: " + tomorrow);
	%>
</body>
</html>