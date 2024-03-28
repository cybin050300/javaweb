<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트 문자 배열 데이터 : json4.jsp</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function() {
		$("#checkJson").click(function() {
			var jsonStr = '{"members":[{"name":"yubin", "age":25, "gender":"여자", "nickname":"yub"}, {"name":"yurim", "age":25, "gender":"여자", "nickname":"rim"}, {"name":"yuchan", "age":25, "gender":"남자", "nickname":"chan"}, {"name":"ilsook", "age":25, "gender":"여자", "nickname":"hana"}]}';
			var jsonObj = JSON.parse(jsonStr);

			var output = "회원들 정보<hr>";
			for ( var i in jsonObj.members) {
				output += "이름 : " + jsonObj.members[i].name
						+ "<br>";
				output += "나이 : " + jsonObj.members[i].age
						+ "<br>";
				output += "성별 : " + jsonObj.members[i].gender
						+ "<br>";
				output += "별명 : " + jsonObj.members[i].nickname
						+ "<br>";
				output += "===============<br>";
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