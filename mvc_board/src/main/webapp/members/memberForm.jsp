<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 : memberForm.jsp</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	/* 아이디 중복 체크 등.. */
	function fn_process(){
		var _id = $("#t_id").val();
		
		// 정규 표현식 : 한글 입력 불가!!
		const regExp = /[a-zA-Z0-9]/g;
		if(regExp.test(_id)){
			alert("가능!");
		}else{
			alert("영어 숫자만 가능!");
			return;
		}
	
		/* 아이디 중복 체크 */
		$.ajax({
			type:"post",
			async:false,
			url:"http://localhost:9000/mvc_board/member/idcheck.do",
			dataType: "text",
			data:{id:_id},
			
			success:function(data,textStatus){
				if(data == "usable"){
					swal.fire("사용할 수 있는 ID 입니다.");
					$("#double").prop("disabled",true);
				}else{
					swal.fire("사용할 수 없는 ID 입니다.");
				}
			},
			
			error:function(data,textStatus){
				alert("잘못 입력!");
			},
			complete:function(data,textStatus){
				alert("작업 완료!");
			}
			});
		}// fn_process() END
		
		/* 비밀번호 확인 : .ajax() */
		$(document).ready(function(){
			$('input').focus(function(){
				$(this).css("background-color","orange");
			});
			
			$("#name").prop("disabled",true);
			$("#email").prop("disabled",true);
			
			// 암호 확인 기능 구현
			$("#pwd_confirm").keyup(function(){
				if($("#pwd").val() !== $("#pwd_confirm").val()){
					$("#pwd_message").text("");
					$("#pwd_message").html("<b>비밀번호가 틀립니다.</b>");
			}else{
				$("#pwd_message").text("");
				$("#pwd_message").html("<b>비밀번호가 맞습니다.</b>");
				
				$("#name").prop("disabled",false);
				$("#email").prop("disabled",false);
			}
		});
		
			//pwd_message 클리어
			$("#name").keydown(function(){
				$("pwd_message").text("");
			});
		
		});
		function gotoList(){
			document.location="${contextPath}/member/listMembers.do";
		}
	</script>


</head>
<body>
	<form action="${contextPath }/member/addMember.do" method="post">
		<p>회원가입 화면</p>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" id="t_id"> 
					<input type="button" value="중복확인" id="double" onclick="fn_process()">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd" id="pwd"></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="pwd_confirm" id="pwd_confirm">
					<div id="pwd_message"></div></td>
			</tr>

			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>

			<tr>
				<td><input type="button" value="목록" onclick="gotoList()"></td>
				<td><input type="submit" value="가입"><input type="reset" value="취소"></td>
			</tr>
		</table>

	</form>

</body>
</html>