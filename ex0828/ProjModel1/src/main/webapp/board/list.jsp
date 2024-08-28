<%@page import="java.util.List"%>
<%@page import="model1.board.BoardDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
BoardDAO dao = new BoardDAO(application);
Map<String, Object> param = new HashMap<String, Object>();
String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if (searchWord != null) {
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);
}
int totalCount = dao.selectCount(param);  // 게시물 수 확인
List<BoardDTO> boardLists = dao.selectList(param);  // 게시물 목록 받기
dao.close();  // DB 연결 닫기
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>회원 게시판</title>
</head>

<body>
	<%@ include file="../common/link.jsp"%>
	<h2>목록 보기</h2>
	<!-- 검색폼 -->
	<form method="get">
		<table>
			<tr>
				<td><select name="searchField">
						<option value="title">제목</option>
						<option value="content">내용</option>
				</select> <input type="text" name="searchWord"> <input type="submit"
					value="검색하기"></td>
			</tr>
		</table>
	</form>
	<!-- 게시물 목록 테이블 표 -->
	<table>
		<!-- 제목란 -->
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		<!-- 목록 내용란 -->
		<%
		if (boardLists.isEmpty()) {
		%>
		<tr>
			<td>등록된 게시물이 없습니다.</td>
		</tr>
		<%
		} else {
		// 게시물이 있을 때 
		int virtualNum = 0; // 화면상에서의 게시물 번호
		for (BoardDTO dto : boardLists) {
			virtualNum = totalCount--; // 전체 게시물 수에서 시작해 1씩 감소
		%>
		<tr>
			<td></td>
			<td><a href="../view.jsp"></a></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<%
	}
	}
	%>
	<!-- 목록 하단 [글쓰기] 버튼 -->
	<table>
		<tr>
			<td>
				<button type="button" onclick="location.href='../write.jsp';">글쓰기</button>
			</td>
		</tr>
	</table>

</body>

</html>