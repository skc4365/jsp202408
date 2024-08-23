<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h2>web.xml에 설정한 내용 읽어오기</h2>
	초기화 매개변수:
	<%=application.getInitParameter("INIT_PARAM")%>

	<h2>서버의 물리적 경로 얻어오기</h2>
	application 내장 객체:<%=application.getRealPath("/ex0202/obj_application")%>

	<h2>선언부에서 application 내장 객체 사용하기</h2>
	<%!public String useImplicationObject() {
		return this.getServletContext().getRealPath("/ex0202/obj_application");
	}

	public String useImplicationObject(ServletContext app) {
		return app.getRealPath("/ex0202/obj_application");
	}%>
	<ul>
		<li>this사용: <%=useImplicationObject()%></li>
		<!--useImplicationObject(application)on) %> application객체를 매개변수로 넘겨줌 -->
		<li>내장 객체를 인수로 전달: <%=useImplicationObject(application)%></li>
	</ul>

</body>

</html>







