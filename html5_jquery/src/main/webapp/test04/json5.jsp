<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var='contextPath' value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 객체 ajax 이용하여 servlet으로 전달 : json5.jsp</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function() {
		$("#checkJson").click(function() {
			var jsonStr = '{"name":"yubin", "age":25, "gender":"여자", "nickname":"yub"}';
			$.ajax({
				type : "post",
				async : false,
				url : "${contextPath}/json1",
				data : {
					jsoninfo : jsonStr
				},
				success : function(data, textstatus) {
				},
				error : function(data, textstatus) {
					alert("error!!!");
				},
				complete : function(data, textstatus) {
					alert("작업 종료");
				}
			});
		});
	});
</script>
</head>
<body>
	<a id="checkJson" style="cursor: pointer">출력</a>
	<div id="output"></div>
</body>
</html>