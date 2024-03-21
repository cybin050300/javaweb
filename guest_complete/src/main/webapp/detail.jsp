<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.freeflux.guest.dto.Guest" %>
<% Guest guest = (Guest)request.getAttribute("guest1"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글상세</title>
<script>
	function gotoModify() {
		document.location = "guest?command=D&idx=<%= guest.getIdx() %>&status=modify";
	}
	function gotoList() {
		document.location = "main.jsp";
	}
	function gotoDelete() {
		document.location = "guest?command=DEL&idx=<%= guest.getIdx() %>";
	}
</script>
</head>
<body>
	글상세
	<hr>
	<table>
		<tr>
			<td>작성자</td>
			<td><%= guest.getName() %></td>
			<td>날짜</td>
			<td><%= guest.getMoment() %></td>
			<td>조회수</td>
			<td><%= guest.getHit() %></td>
		</tr>
		<tr>
			<td>제목</td>
			<td colspan="2"><%= guest.getTitle() %></td>
		</tr>
		<tr>
			<td colspan="3">내용</td>
		</tr>
		<tr>
			<td colspan="3">
				<textarea rows="10" cols="50" readOnly><%= guest.getContent() %></textarea>
			</td>
		</tr>
	</table>

	<input type="button" value="수정화면이동" onclick="gotoModify()">
	<!-- modify.jsp => 현재 보여지는 모든 데이터 전송 -->

	<input type="button" value="목록화면이동" onclick="gotoList()">
	<!-- main.jsp -->

	<input type="button" value="글삭제" onclick="gotoDelete()">
	<!-- guest?command=DEL&idx=1 -->
</body>
</html>






