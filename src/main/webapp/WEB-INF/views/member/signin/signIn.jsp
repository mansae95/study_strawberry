<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- css 두가지 로드해주셔야 합니다, reset.css와 side_and_footer.css -->
		<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/reset.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/fragments/side_and_footer.css' /> ">
		<link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/member/login.css' />">
		<title>login</title>
	</head>
	<body>
		<!-- side bar는 <body> 바로 밑에 추가 -->
		<c:import url="/WEB-INF/views/fragments/sidebar.jsp" />
		<div class="wrap">
		
		<div class="logowrap">
		
		<img class="logo" alt="logo" src="<c:url value = '/resources/image/bkg/signin.png' />">
		
		</div>
		
		
		<!-- 실질적으로 내용이 표시되는 영역 꼭 'contents'로 생성 안해도 되지만 div를 내용을 감쌀 div추가가 필요함.-->
		<div class="contents">
			<form:form modelAttribute="signinForm" method="POST" id="loginForm" action="/member/signin">
				<input id="email" name="email" type="email" class="email" value="${signinForm.email}" placeholder="Email" autocomplete="off" spellcheck="false">
				<span class="er sper" id="emailerror"> 이메일에 공백이 들어가선 안됩니다 </span>
				<form:errors path="email" class="emailMSG er" element="p"/>
				<input id="password" name="password" type="password" placeholder="Password">
				<span class="er sper" id="pwerror"> 비밀번호에 공백이 들어가선 안됩니다 </span>
				<form:errors path="password" class="pwMSG er" element="p"/>
				<form:errors path="eMsg"  class="eMSGhide er" element="p" />
				<input class="loginbutton" type="button" value="LOGIN" onclick="checkForm()">
			</form:form>
		</div>
		
		</div>
		
		<!-- footer는 </body> 바로 위에 추가. -->
		<c:import url="/WEB-INF/views/fragments/footer.jsp" />
	</body>
</html>



<script>

/* test@mail.com/001717a */
	

	
$(document).ready(function () {
	
	$('#loginForm').trigger("reset");
	window.onkeydown = function() {
		var kcode = event.keyCode;
		if(kcode == 116) {
		history.replaceState({}, null, location.pathname);
		}
		}
})


	function checkForm() {
		
		var blank_pattern = /[\s]/g;
		
	
		// 프론트
		if( blank_pattern.test( $('#email').val()) == true){
		    $('#emailerror').show();
		    return false;
		}
		if( blank_pattern.test( $('#password').val()) == true){
			$('#pwerror').show();
			return false;
		}
		
		 
		else{
			$('#loginForm').submit();
			
		}
		
		
		
	} // checkForm() 끝
	
		$('#email').mouseup(function () {
			$('#emailerror').hide();
			 $('.emailMSG').hide(); 
			 $('.eMSGhide').hide(); 555555
		});
		
		$('#password').mouseup(function () {
			$('#pwerror').hide();
			 $('.pwMSG').hide();
			 $('.eMSGhide').hide(); 
		});
		
		


</script>