<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>

<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String sex = request.getParameter("sex");
	
	/* 체크박스로 들어온 여러개의 값을 배열로 담음  */
	String[] favo = request.getParameterValues("favo");
	String favoStr = "";
	if (favoStr != null) {
		for (int i = 0; i < favo.length; i++) {
			favoStr += (favo[i] + "-");
		}
	}
	/* replace("\r\n", "<br>") 자기소개에 엔터로 등록된 값을 <br>태그로 수정함. */
	String intro = request.getParameter("intro").replace("\r\n", "<br>");
	%>
	<ul>
		<li>아 이 디: <%=id%>
		</li>
		<li>성 별: <%=sex%>
		</li>
		<li>관심사항: <%=favoStr%>
		</li>
		<li>자기소개: <%=intro%>
		</li>
	</ul>
</body>

</html>