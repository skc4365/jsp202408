<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>3. 요청 헤더 정보 출력하기</h2>
	<%
	/* --- Enumeration: 열거형, 목록형 데이터타입 ---
	headers객체에 정보를 저장  */
	Enumeration headers = request.getHeaderNames();
	
	/* --- hasMoreElements() ---
	headers에 값이 있으면 true, 값이 더 있는동안 true */
	while (headers.hasMoreElements()) {
		String headerName = (String) headers.nextElement();
		String headerValue = request.getHeader(headerName);
		out.println("헤더명: " + headerName + ", 헤더값: " + headerValue + "<br>");
	}
	%>
	<p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>
</body>
</html>