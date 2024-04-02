<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정 폼</title>
<script type="text/javascript" src="<c:url value="/ckeditor/ckeditor.js" />"></script>
<style type="text/css">

</style>
</head>
<body>
	<form name="" aciton="" method="post">
		<table>
			<caption>게시판 수정 폼</caption>
			<colgroup>
				<col>
			</colgroup>
			
			<tbody>
				<tr>
					<th align="center">제목</th>
					<td> <input type="text" name="subject" value=""/></td>
				</tr>
				
					<tr>
					<th align="center">작성자</th>
					<td> <input type="text" name="subject" value=""/></td>
				</tr>
				
				<tr>
					<td><textarea name="contents"></textarea></td>
				</tr>
			
			</tbody>
		
		
		</table>
		<p>
			<input type="button">
	
	
	</form>
</body>
</html>