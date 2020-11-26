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
		<link rel="stylesheet" type="text/css" href="/strawberry/resources/css/reset.css">
		<link rel="stylesheet" type="text/css" href="/strawberry/resources/css/fragments/side_and_footer.css">
		<title>login</title>
	</head>
	<body>
		<!-- side bar는 <body> 바로 밑에 추가 -->
		<c:import url="/WEB-INF/views/fragments/sidebar.jsp" />
		
		<!-- 실질적으로 내용이 표시되는 영역 꼭 'contents'로 생성 안해도 되지만 div를 내용을 감쌀 div추가가 필요함.-->
		<div class="contents">
			<form:form modelAttribute="signinForm" method="POST" action="/strawberry/member/signin">
				<input id="email" name="email" type="text" value="${signinForm.email}" placeholder="Email" autocomplete="off" spellcheck="false">
				<form:errors path="email" element="p"/>
				<input id="password" name="password" type="password" placeholder="Password">
				<form:errors path="password" element="p"/>
				<form:errors path="eMsg" element="p"/>
				<input class="signinBtn" type="submit" value="SUBMIT">
			</form:form>
		</div>
		
		<!-- footer는 </body> 바로 위에 추가. -->
		<c:import url="/WEB-INF/views/fragments/footer.jsp" />
	</body>
</html>