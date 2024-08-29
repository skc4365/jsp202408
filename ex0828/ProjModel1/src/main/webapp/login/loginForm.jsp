<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Session</title>
<link rel="stylesheet" href="/css/view.css">
<script src="/js/view.js"></script>
</head>

<body>
	<jsp:include page="/common/link.jsp"></jsp:include>

	<h2>로그인 페이지</h2>
	<%
	if (session.getAttribute("UserId") == null) {
	%>
	<p>
		로그인 상태가 : <span style="color: red; font-size: 1.2em;"> <%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("loginErrMsg")%>
		</span> 입니다.
	</p>

	<form action="./loginProcess.jsp" method="get" class="loginFrm"
		name="loginFrm" onsubmit="return validateFormLogin(this)">
		아 이 디 : <input type="text" name="user_id"><br> 패스워드: <input
			type="password" name="user_pw"><br> <input type="submit"
			value="로그인">
	</form>
	<%
	} else {
	%>
	<%=session.getAttribute("UserName")%>회원님, 로그인하셨습니다
	<br>
	<a href="./logout.jsp">로그아웃</a>
	<%
	}
	%>
</body>

</html>