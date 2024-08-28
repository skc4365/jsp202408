<%@page import="model1.board.BoardDTO"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//http://localhost:8080/ProjModel1  프로젝트 경로 가져오기
//String contextPath = request.getContextPath();
//out.println(contextPath + "<hr>");

String num = request.getParameter("num"); // 일련번호 받기 

BoardDAO dao = new BoardDAO(application); // DAO 생성 
dao.updateVisitCount(num); // 조회수 증가 
BoardDTO dto = dao.selectView(num); // 게시물 가져오기 
dao.close(); // DB 연결 해제
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/view.css"> --%>
<link rel="stylesheet" href="/css/view.css">
<script src="/js/view.js"></script>
</head>

<body>
	<%@ include file="./common/link.jsp"%>

	<h2>회원제 게시판 - 상세 보기</h2>
	<form action="writeFrm">
		<input type="hidden" name="num" value="<%=num%>" />
		<!-- 공통 링크 -->
		<table>
			<tr>
				<td>번호</td>
				<td><%=dto.getNum()%></td>
				<td>작성자</td>
				<td><%=dto.getName()%></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><%=dto.getPostdate()%></td>
				<td>조회수</td>
				<td><%=dto.getVisitcount()%></td>
			</tr>
			<tr>
				<td>제목</td>
				<td colspan="3"><%=dto.getTitle()%></td>
			</tr>
			<tr>
				<td>내용</td>
				<td colspan="3" height="100"><%=dto.getContent().replace("\r\n", "<br>")%></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<%
					if (session.getAttribute("UserId") != null && session.getAttribute("UserId").toString().equals(dto.getId())) {
					%>
					<button type="button"
						onclick="location.href='Edit.jsp?num=<%=dto.getNum()%>';">
						수정하기</button>
					<button type="button" onclick="deletePost();">삭제하기</button> <%
 }
 %>
					<button type="button" onclick="location.href='List.jsp';">
						목록 보기</button>
				</td>
			</tr>
		</table>
	</form>
</body>

</html>