<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>페이지 이동후 page영역의 속성값 읽기: 같은 페이지가 아니므로 값없음.</h4>
	<%
	Object pInteger = pageContext.getAttribute("pageInteger");
	Object pString = pageContext.getAttribute("pageString");
	Object pPerson = pageContext.getAttribute("pagePerson");
	%>
	<ul>
		<li>Interger 객체:<%=(pInteger == null) ? "값없음" : pInteger%>
		</li>
		<li>pString 객체:<%=(pString == null) ? "값없음" : pString%>
		</li>
		<li>pPerson 객체:<%=(pPerson == null) ? "값없음" : ((Person) pPerson).getName()%>
		</li>
	</ul>
	<hr>
</body>
</html>