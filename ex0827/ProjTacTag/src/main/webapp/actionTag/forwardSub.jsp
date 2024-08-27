<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>액션태그 포워드 forwardSub페이지</h2>
	<ul>
		<li>page 영역:<%=pageContext.getAttribute("pageAttr")%>
		</li>
		<li>request 영역:<%=request.getAttribute("requeAttr")%>
		</li>
	</ul>

</body>
</html>