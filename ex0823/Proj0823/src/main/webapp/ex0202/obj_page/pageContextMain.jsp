<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<html>

<head>
<meta charset="UTF-8">
<title>Page 영역</title>
</head>

<body>
	<h2>page 영역의 속성값 읽기</h2>
	<%
	int pInteger = (Integer) (pageContext.getAttribute("pageInteger"));
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person) (pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li>Integer객체:<%=pInteger %></li>
		<li>pString객체:<%=pString %></li>
		<li>pPerson객체:<%=pPerson.getName() %>, <%=pPerson.getAge() %></li>
	</ul>
	
	<h2>include된 파일에서 page 영역 읽어오기</h2>
	<%@ include file="./pageInclude.jsp" %>

	<h2>페이지 이동 후 page 영역 읽어오기</h2>
	<a href="./pageLocation.jsp">pageLocation.jsp 바로가기</a>
</body>

</html>