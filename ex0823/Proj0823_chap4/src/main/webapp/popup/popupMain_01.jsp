<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String popupMode = "on";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리 ver 0.1</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>

</head>

<body>
	<h2>팝업 메인 페이지</h2>
	<%
	for (int i = 1; i <= 10; i++) {
		out.print("현재 팝업창은 " + popupMode + "상태입니다.");
	}
	if (popupMode.equals("on")) {
	%>
	<div id="popup">
		<h2 align="center">공지사항 팝업입니다.</h2>
		<div>
			<form action="#" name="popFrm">
				<input type="checkbox" id="inactiveToday" value="1">하루 동안 열지
				않음 <input type="button" id="closeBtn" value="닫기">
			</form>
		</div>

	</div>

	<%
	}
	%>


</body>

</html>