<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>defalut.jsp</title>
</head>
<body>
	<ol>
		<li>
			<a href="default.jsp">default.jsp</a>
		</li>
	</ol>
	
	<ul>
		<li>
			<a href="set">Scope test : setAttribute</a>
		</li>
		
		<li>
			<a href="get">Scope test : getAttribute</a>	
		</li>
	</ul>
	
	<ol type="i">
		<li><a href="first/test">/first/test 로만 요청 가능</a></li>		
		<li><a href="first/">/first/로 시작하는 요청 가능</a></li>		
		<li><a href="*.do">매핑 이름에 상관없이 .do로 끝나는 요청 가능</a></li>		
		<li><a href="#">모든 요청 가능</a></li>		
	</ol>
	
	<ul>
		<li><a href="login.html">로그인 화면: login.html</a>
		<li><a href="loginTest.html">로그인 화면(리스너): login.Test.html</a>
	</ul>
</body>
</html>