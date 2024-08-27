<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>useBean 액션태그</h2>
	<h3>자바빈즈 생성하기</h3>
	<jsp:useBean id="person" class="common.Person" scope="request" />

	<h3>액션 태그로 자바빈즈 set속성</h3>
	<jsp:setProperty property="name" name="person" value="임꺽정" />
	<jsp:setProperty property="age" name="person" value="41" />

	<h3>액션 태그로 자바빈즈 get읽기</h3>
	<ul>
		<li>이름: <jsp:getProperty property="name" name="person" /></li>
		<li>나이: <jsp:getProperty property="age" name="person" /></li>

	</ul>

	<hr>

	<h3>자바로 작성한 request</h3>
	<%
	Person person2 = (Person) request.getAttribute("person2");
	if (person2 == null) {
		person2 = new Person();
		person2.setName("임꺽정222");
		person2.setAge(88);
		request.setAttribute("person2_name", person2.getName());
		request.setAttribute("person2_age", person2.getAge());
	}
	%>
	<ul>
		<li>이름:<%=request.getAttribute("person2_name")%></li>
		<li>나이:<%=request.getAttribute("person2_age")%></li>
	</ul>


</body>
</html>