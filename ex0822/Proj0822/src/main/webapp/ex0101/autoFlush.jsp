<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="1kb" autoFlush="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page지시어 - buffer, autoFlush</title>
</head>
<body>
	<!-- 버퍼테스트 -->
	<%
	for (int i = 1; i <= 100; i++) {
		out.println("abcde12345");
	}
	%>
</body>
</html>