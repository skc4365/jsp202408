<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%
String chkVal = request.getParameter("inactiveToday");
//  쿠키 저장
if (chkVal != null && chkVal.equals("1")) {
	Cookie cookie = new Cookie("popupClose", "off");
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(60 * 60 * 24);
	response.addCookie(cookie);
	out.println("쿠키 : 하루 동안 열지 않음");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>