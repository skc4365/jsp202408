
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBCConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
	<%
	// DB연결
	JDBCConnect jdbc = new JDBCConnect();
	// 쿼리 생성
	String sql = "SELECT id, pass, name, regidate FROM member";
	Statement stmt = jdbc.con.createStatement();
	// 쿼리 실행
	ResultSet rs = stmt.executeQuery(sql);

	while (rs.next()) {
		String id = rs.getString(1);
		String pw = rs.getString(2);
		String name = rs.getString("name");
		Date regidate = rs.getDate("regidate");

		out.println(String.format("%s %s %s %s", id, pw, name, regidate) + "<br>");
	}
	jdbc.close();
	%>
</body>
</html>