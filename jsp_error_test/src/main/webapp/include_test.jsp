<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_test.jsp</title>
</head>
<body>
	<h1>include 사용</h1>
	<hr>
		<i><%@ include file="menu.jsp"%>
	<hr>
	<table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<td><font size="-1"></font> <%@ include file="news.jsp"%></td>
			<td width="30">e&nbsp;&nbsp;&nbsp;E</td>
			<td><b><%@ include file="shopping.jsp"%>&nbsp;</b></td>
		</tr>
	</table>
</body>
</html>