<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="member" class="com.cyb.beans.MemberBean"></jsp:useBean>
    <jsp:setProperty property="*" name="member"></jsp:setProperty>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전달된 파라미터 명과 Memberbean의 멤버 변수를 자동 매핑</title>
</head>
<body>
		<jsp:getProperty property="name" name="member"></jsp:getProperty>
		</table>
</body>
</html>