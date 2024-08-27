<%@page import="java.io.Console"%>
<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// <form>에서 넘어온 값을 변수에 담는다.
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");

// web.xml 데이터베이스 연결정보
String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleURL");
String oracleId = application.getInitParameter("OracleId");
String oraclePwd = application.getInitParameter("OraclePwd");

/*---------------------------------------------
   // MemberDAO: 
	   회원테이블DB에 접속하여 특정회원의 데이터를 가져온다.
   // MemberDTO:
	   회원 한명에 대한 정보(테이블ROW)를 get/set 할 수 있는 저장공간(변수클래스)으로 사용한다. 
-----------------------------------------------*/
MemberDAO dao = new MemberDAO(oracleDriver, oracleURL, oracleId, oraclePwd);
MemberDTO dto = dao.getMemberDTO(userId, userPwd);
dao.close();

// 세션에 아이디와 이름을 저장
if (dto.getId() != null) {
	// 로그인 성공
	session.setAttribute("UserId", dto.getId());
	session.setAttribute("UserName", dto.getName());
	response.sendRedirect("./loginForm.jsp");
} else {
	// 로그인 실패
	request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
	request.getRequestDispatcher("./loginForm.jsp").forward(request, response);
}
%>
