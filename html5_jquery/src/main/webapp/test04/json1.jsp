<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트 문자 배열 데이터 : json1.jsp</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	/* 
	 1. id가 checkJson인 요소에 click 이벤트 설정
	 2. 이벤트가 발생하면 데이터를 출력
	 3. JSON 데이터 : "key명 : 데이터"
	 4. 문자열 형태의 데이터를 JSON객체로 변환 : JSON.parse(문자열)
	 5. 필수 라이브러리 : json=simple-1.1.1jar
	*/

	$(function(){ // $(document).ready(function(){}); <body></body> 내의 컨텐츠 준비가 끝나면
		$("#checkJson").click(function(){	// 1.
			var jsonstr = '{"name":["홍길동","이순신","이승만"]}';
			var jsonObj = JSON.parse(jsonstr);
			
			var output = "회원이름<br>";
			output+="==============<br>";
			
			for(var i in jsonObj.name){	// java script for()문 <== Java for(:)
				output+=jsonObj.name[i] +"<br>";
				}	
			$("#output").html(output);
		});
	});
 
</script>

</head>
<body>
	<a id="checkJson" style="cursor: pointer">출력</a>
	<div id="output"></div>
</body>
</html>