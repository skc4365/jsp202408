<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//세션의 회원 로그인정보(인수로 지정한 정보) 삭제
session.removeAttribute("UserId");
session.removeAttribute("UserName");

// 연결세션 무효화 
session.invalidate();

response.sendRedirect("./loginForm.jsp");
%>