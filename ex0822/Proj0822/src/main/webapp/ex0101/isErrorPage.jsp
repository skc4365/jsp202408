<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 에러페이지</title>
</head>
<body>
	<!-- isErrorPage="true" 에러를 임의발생  -->
	<h2>서비스 중 일시적인 오류가 발생하였습니다.</h2>
	<p>
		오류명:
		<%=exception.getClass().getName()%>
		<br> 오류메세지:
		<%=exception.getMessage()%>
	</p>
</body>
</html>