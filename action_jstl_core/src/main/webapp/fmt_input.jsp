<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt_input.jsp</title>
</head>
<body>
	<form action="fmt_result.jsp" method="post">
	<input type="text" maxlength="5" name="text" placeholder="한글입력" required>
	<input type="submit" value="전송">
	
</body>
</html>