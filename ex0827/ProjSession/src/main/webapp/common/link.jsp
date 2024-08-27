<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<table border="1" width="90%" >
	<tr>
		<td>
			<%
			if (session.getAttribute("UserId") == null) {
			%> <a href="../session/loginForm.jsp">로그인</a> <%
 } else {
 %> <a href="../session/logout.jsp">로그아웃</a> <%
 }
 %>
		</td>
		<td><a href="../board/list.jsp">게시판(페이징X)</a></td>
		<td><a href="../pagingBoard/list.jsp">게시판(페이징O)</a></td>
	</tr>
</table>
