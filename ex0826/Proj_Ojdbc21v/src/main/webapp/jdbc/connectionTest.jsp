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
	<h2>JDBC 테스트_기본방법</h2>
	<%
	JDBCConnect jdbc1 = new JDBCConnect();
	jdbc1.close();
	%>
</body>
</html>