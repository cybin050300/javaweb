<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_set : set 태그</title>
</head>
<body>
	변수 설정 <br>
	<c:set var="msg" value="Hello"></c:set>
	\${ msg } = ${ msg }<br>
	
	<c:set var="age" > 100</c:set>
	\${ age } = ${ age }<br>
	
	
	<c:set var="add" value="${ 10+5 }"></c:set>
	\${ add } = ${ add }<br>
	
	
	<c:set var="flag" value="${ 10 > 5 }"></c:set>
	\${ flag } = ${ flag }<br>
	
	<hr>
	<h4>MemberBean 객체 생성</h4>
	<c:set var="member" value="<%=new com.cyb.beans.MemberBean()%>" ></c:set>
	
	<c:set target="${ member }" property="name" value="강기훈"></c:set>
	<!-- 			  사용객체명           내부변수명 			변수에 대입-->
	
	<c:set target="${ member }" property="userid" >최유빈</c:set>
	\${ member } = ${ member }
	<!-- toString() 자동 호출 -->	
</body>
</html>