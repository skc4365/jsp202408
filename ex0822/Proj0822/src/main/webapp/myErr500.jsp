<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="isErrorPage.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	out.println("---------------------------------------");
/* 	try {
		int myAge = Integer.parseInt(request.getParameter("age")) + 10;
		out.println("10년 후 당신의 나이는: " + myAge + "입니다.");
	} catch (Exception e) {
		out.println("예외발생:" + e);
	} */
int myAge = Integer.parseInt(request.getParameter("age")) + 10;
	out.println("10년 후 당신의 나이는: " + myAge + "입니다."); 
	%>
</body>
</html>