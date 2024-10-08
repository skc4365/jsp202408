<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./login/isLoggedIn.jsp"%>
<!--로그인 확인-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/view.css">
<script src="/js/view.js"></script>

</head>
<body>
	<jsp:include page="./common/link.jsp" />
	<h2>회원제 게시판 - 글쓰기(Write)</h2>
	<form name="writeFrm" method="post" action="./writeProcess.jsp"
		onsubmit="return validateForm(this);">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" style="width: 90%;" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" style="width: 90%; height: 100px;"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">작성 완료</button>
					<button type="reset">다시 입력</button>
					<button type="button" onclick="location.href='./list.jsp';">
						목록 보기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>