<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardDetail.jsp</title>
<script>
		function goList(){
			document.location="boardList.jsp";
		}
		function goUpdate(){
			document.location="boardUpdate.jsp";
		}
	
	</script>
</head>
<body>
<form>
	<table border="1">
		<tr bgcolor="pinkblue">
		
		<br><td>제목</td>
		<br><td>동해물과 백두산</td>
	<hr>
	</tr>
	
	<tr bgcolor="skyblue">
	<br><th>작성자/조회수</th>
	<br><td>김연석 / 11</td>
	</tr>
	
	<tr bgcolor="blue">
	<br><th>내용</th>
	<br><td>------------</td>
	</tr>
	
	</table>
	
	<table style="text-align: right;">
	
<input type="button" value="목록"  onclick="goList()" >
<input type="button" value="수정"  onclick="goUpdate()" >
<input type="button" value="삭제"  onclick="goDelete()" >
	</table>
	</form>
</body>

</html>