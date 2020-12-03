<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form modelAttribute="signUpMember" action="signupmember" method="post">
	<!-- <form action="<c:url value='/member/signupmember'/>" method="post"> -->
	
		<input type="hidden" name="token" value="84057007-fe78-4a9b-98b6-4b23dc578da6"/>
	
		이메일 : <input id="email" type="text" name="email" value="${email}" autocomplete="off"/>
		<form:errors path="email" element="span"/>
		
		패스워드 : <input id="pwd" type="password" name="pwd" />
		<form:errors path="pwd" element="span"/>
		
		닉네임 : <input id="nick" type="text" name="nick" value="${nick}"/> 
		<form:errors path="nick" element="span"/>
		
		<input type="submit" value="회원가입">
		
		
		<!-- 
		<div class="contents">
			<form:form modelAttribute="signinForm" method="POST" action="/member/signin">
				<input id="email" name="email" type="text" value="${signinForm.email}" placeholder="Email" autocomplete="off" spellcheck="false">
				<form:errors path="email" element="p"/>
				<input id="password" name="password" type="password" placeholder="Password">
				<form:errors path="password" element="p"/>
				<form:errors path="eMsg" element="p"/>
				<input class="signinBtn" type="submit" value="SUBMIT">
			</form:form>
		</div>
		 -->	
	<!-- </form> -->
</form:form>
</body>
</html>