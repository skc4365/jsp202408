<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// jsp코드로 프로젝트 경로 가져오기
//out.println(request.getContextPath());
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

	<table>
		<tr>
			<td>
				<%
				if (session.getAttribute("UserId") == null) {
				%> <!-- html에서 프로젝트 경로 가져오기 --> <%-- <a href="${pageContext.request.contextPath}/login/loginForm.jsp">로그인</a> --%>
				<a href="/login/loginForm.jsp">로그인</a> <%
 } else {
 %> <a href="/login/logout.jsp">로그아웃</a> <%
 }
 %>
			</td>
			<td><a href="/board/list.jsp">게시판(페이징X)</a></td>
			<td><a href="/pagingBoard/list.jsp">게시판(페이징O)</a></td>
		</tr>
	</table>
</body>

</html>