<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<hr>
<h4>include 페이지: page객체의 값을 사용할 수 있다.</h4>
<%
int pInteger2 = (Integer) (pageContext.getAttribute("pageInteger")); //String
//String pString2 = pageContext.getAttribute("pageString").toString();
Person pPerson2 = (Person) (pageContext.getAttribute("pagePerson"));
%>
<ul>
	<li>Interger 객체:<%=pInteger2%>
	</li>
	<li>pString 객체:<%=pageContext.getAttribute("pageString")%>
	</li>
	<li>pPerson 객체:<%=pPerson2.getName()%>, <%=pPerson2.getAge()%>
	</li>
</ul>
<hr>