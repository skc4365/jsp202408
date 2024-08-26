<%@page import="common.JDBCConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JDBC 테스트 _ 세번째 방법</h2>
	<%
	JDBCConnect jdbc3 = new JDBCConnect(application);
	jdbc3.close();
	%>
</body>
</html>