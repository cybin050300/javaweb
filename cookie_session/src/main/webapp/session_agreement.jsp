<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//POST 방식으로 전송되면 한글이 깨지기 때문에 반드시 먼저 해줘야함
	// JSP 내장 객체인 session에 전달된 값들을 저장
	session.setAttribute("id", request.getParameter("id"));
	session.setAttribute("pw", request.getParameter("pw"));
	session.setAttribute("name", request.getParameter("name"));
	// 서블릿에서는 세션 객체를 만들어 줘야함
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_agrement.jsp</title>
</head>
<body>
<h1>약관</h1>
<hr>
<br>
1. 회원 정보는~
2. 웹 사이트의 정상 운영을 방해하는
<hr>
위의 약관에 동의 ?
<form action="session_subscribe.jsp">
	<input type="radio" name="agree" value="YES"> 동의함<br>
	<input type="radio" name="agree" value="NO"> 동의하지 않음<br>
	<br>
	<input type="submit" value="확인">
	
</form>

</body>
</html>