<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 파일 출력 : result.jsp => FileDownload(download.do)</title>
</head>
<body>
	<form action="result.jsp" method="post">
		<input type="hidden" value="my_mbit.jpg" name="param1"> 
		<input type="hidden" value="my_character.jpg" name="param2"> 
		<input type="submit" value="요청">
	</form>
</body>
</html>