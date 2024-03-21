<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//JSP에서내장 객체를 통한 변수 선언 위치(범위)
	// 내장객체의 setAttribute("키",데이터);
	pageContext.setAttribute("name", "cyb");
	// -> 현재 페이지에서만 사용 가능한 변수
	// 전달하면 계속 사용 가능
	
	request.setAttribute("list", "ArrayList");
	// request 객체 내부에 선언
	// 전달하면 계속 사용 가능
	
	session.setAttribute("id", "cyb");
	// 웹 서버(프로젝트 내부) 선언 : 단, session은 개발자에 의해 제거할 수 있다..
	// 전달하지 않아도 사용 가능
	
	application.setAttribute("listener","init data");
	// 구동중인 앱 내부에 선언.. / 서버가 중지 될 때까지 사용 가능..
	// 전달하지 않아도 사용 가능
	//가장 폭 넓게 사용

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_scope.jsp title here</title>
</head>
<body>
	내장객체를 이용하여 선언된 변수의 값을 추출하는 방법 <br>
	<hr>
	객체에 직접 선언
	pageContext : ${ name } <br>
	request : ${ requestScope.list} <br>
	session : ${session.id }<br>
	application : ${ applicationScope.listener }<br>
	
	외부로부터 전달 받은 데이터(name 속성을 이용하여...) <br>
</body>
</html>