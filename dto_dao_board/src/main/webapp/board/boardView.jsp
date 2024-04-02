<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세 보기</title>
</head>
<body>
	<table border="1">
		<colgroup>
			<col width="50" />
			<col width="100" />
			<col width="130" />
			<col width="100" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성날짜</th>
			</tr>
		</thead>
	</table>
	<input type="button" value="목록" onclick="location.href='boardList.jsp'">
</body>
</html>