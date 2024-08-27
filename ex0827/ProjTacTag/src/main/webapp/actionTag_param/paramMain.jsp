<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String pValue = "오늘도 홧팅 ^^";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 param</title>
</head>
<body>
	<jsp:useBean id="person" class="common.Person" scope="request" />
	<jsp:setProperty property="name" name="person" value="김삿갓" />
	<jsp:setProperty property="age" name="person" value="56" />
	<jsp:forward page="./paramForward.jsp?param1=skc ">
		<jsp:param value="경기도 수원시..." name="param2" />
		<jsp:param value="<%=pValue%>" name="param3" />
	</jsp:forward>

</body>
</html>