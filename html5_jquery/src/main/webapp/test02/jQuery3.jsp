<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 셀렉터 연습3 html() class 속성 : jQuery3.html</title>
<!--  1. jQuery 라이브러리(자바 스크립트 함수 모음) -->
<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
<script>
		$(document).read(function(){
			alert("테스트");
		});	
		
		function addImage(){
			$(".class1").html("<img src='../image/duke.png'>");
		}
	</script>
</head>
<body>
	<div class="class1"></div>
	<div class="class2"></div>
	<div>
		<input type="button" value="이미지 추가" onclick="addImage()">
	</div>
	
</body>
</html>