<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// page객체에 set속성 
pageContext.setAttribute("pageAttr", "김유신");
//request객체에 set속성 
request.setAttribute("requeAttr", "계백");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	border: 1px solid red;
}
</style>
</head>
<body>
	<h2>액션 태그를 이용한 포워딩</h2>
	<div>
		<h3>액션 태그로 페이지 forward포워딩</h3>
		<jsp:forward page="./forwardSub.jsp"></jsp:forward>
		<hr>

	</div>
</html>