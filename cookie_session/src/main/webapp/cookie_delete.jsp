<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("job","devolper");
	cookie.setMaxAge(3);
	response.addCookie(cookie);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제 : cookie_delete.jsp</title>
</head>
<body>

</body>
</html>