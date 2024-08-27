<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 링크페이지 경로변수 
String outerPath1 = "./inc/outerPage1.jsp";
String outerPath2 = "./inc/outerPage2.jsp";
// page객체에 set속성
pageContext.setAttribute("pageAttr", "동명왕");
//request객체에 set속성
request.setAttribute("requeAttr", "온조왕");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	border: 1px solid red;
}
</style>
</head>
<body>
	<h2>지시어와 액션 태그 동작 방식 비고</h2>
	<div>
		<h3>지시어로 페이지 포함하기(newVar1사용가능)</h3>
		<%@ include file="./inc/outerPage1.jsp"%>
		<hr>
		<p>
			외부 파일에 선언한 변수:<%=newVar1%></p>
	</div>
	<br>
	<br>
	<div>
		<h3>액션 태그로 페이지 포함하기(newVar2사용불가)</h3>
		<jsp:include page="./inc/outerPage2.jsp"></jsp:include>
		<jsp:include page="<%=outerPath2%>"></jsp:include>
		<hr>
		<p>
			외부 파일에 선언한 변수:
			<%-- <%=newVar2%> --%>
		</p>
	</div>
</body>
</html>