<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // 1. 쿠키 생성 : new Cookie("쿠키명", "문자열 데이터");
    // 2. 생성된 쿠키는 웹 브라우저에게 전송(내보내기)
    //	response.addCookie(쿠키 객체);
    Cookie cookie = new Cookie("id","cyb");
    response.addCookie(cookie);
    response.addCookie(new Cookie("name", "최유빈"));	// 내보내기때문에 response
    response.addCookie(new Cookie("age", "비밀"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 저장 : cookie_write.jsp</title>
</head>
<body>
	<h1>쿠키가 저장되었습니다.</h1>
</body>
</html>