<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<hr>
<h2>인클루드된 페이지에서 매개변수 확인</h2>
<ul>
	<li>위치1: <%=request.getParameter("loc1")%></li>
	<li>위치2: <%=request.getParameter("loc2")%></li>
</ul>
