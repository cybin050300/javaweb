<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="co" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select_color.jsp</title>
</head>
<body>
<form action="select_color_result.jsp">
	
	<!-- tag의  id="" 속성은 CSS또는 Javascript에서 html 요소 선택시.. -->
	<!-- Javascript에서 html요소 선택
		document.getElementById("Id명")
		document.getElementByTag("Tag명")
		-->
		<label for="color">색상을 선택하세요...</label>
		<!-- <select id="color" name="color" size="3"> 리스트 형태의 메뉴-->
		<select id="color" name="color"> 
		
		<option value="0">색상선택</option>
		<option value="1">빨강</option>
		<option value="2">초록</option>
		<option value="3">파랑</option>
				
		</select>
	<input type="submit" value="전송">

</form>

</body>
</html>