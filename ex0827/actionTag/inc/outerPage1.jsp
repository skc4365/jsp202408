<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<h2>외부 파일1</h2>
<%
String newVar1 = "고구려 세운 동명왕";
%>
<ul>
	<li>page 영역 속성: <%=pageContext.getAttribute("pageAttr")%></li>
	<li>request 영역 속성:<%=request.getAttribute("requeAttr")%></li>
</ul>

