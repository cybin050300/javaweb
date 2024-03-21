<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, front_exam_cybin.guest.dto.Guest" %>    
    
<%
	List<Guest> glist = (List<Guest>)request.getAttribute("glist"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
		function goList(){
			document.location="boardList.jsp";
		}
		function goInsert(){
			document.location="boardInsert.jsp";
		}
	
	</script>
<title>boardList.jsp</title>
</head>
<body>
	<form >
		<table>
		
			<select>
				<option value="전체">전체</option>
				<option value="제목">제목</option>
				<option value="내용">내용</option>
				<option value="작성자">작성자</option>
			</select>
			<input type="text" name="search">
			<input type="submit" value="검색"/>
		</table>
		
<!-- 게시글 목록을 표시할 기본 테이블 -->
	<table>
<%-- 		<% if(glist.size() < 1) { %> --%>
<!-- 		<tr><td>게시글이 없습니다..</td></tr> -->
<%-- 	<% }else{ %> --%>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회</th>
		</tr>
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
		
		
<%-- 			<% for(Guest guest : glist){%> --%>
<!-- 				<tr> -->
<%-- 				<td><%= guest.getIdx() %></td> --%>
<!-- 				<td> -->
<%-- 				<a href="guest?command=D&status=detail&idx=<%= guest.getIdx() %>" > --%>
<%-- 					<%= guest.getTitle() %> --%>
<!-- 				</a> -->
<!-- 				</td> -->
<%-- 				<td><%= guest.getName() %></td> --%>
<%-- 				<td><%= guest.getMoment() %></td> --%>
<%-- 				<td><%= guest.getHit() %></td> --%>
<!-- 				</tr> -->
<%-- 			<%}%> --%>
<%-- 	 <%} %> --%>

	<table>
		<a href = "boardList.jsp" style="text-decoration:none"><이전	1 2 3 4 5 6	다음></a>
		
		<input type="button" value="목록" onclick="goList()">
		<input type="button" value="글쓰기" onclick="goInsert()">
		

	</table>

	</form>
</body>
</html>