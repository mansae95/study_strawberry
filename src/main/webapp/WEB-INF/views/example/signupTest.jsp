<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value='/member/signupmember'/>" method="post">
	
	<input type="hidden" name="token" value="84057007-fe78-4a9b-98b6-4b23dc578da6"/>

	<div> 이메일 : <input type="text" name="email"> </div>
	<div> 패스워드 : <input type="password" name="pwd"> </div>
	<div> 닉네임 : <input type="text" name="nick"> </div>
	<div> <input type="submit" value="회원가입"> </div>
	
</form>
</body>
</html>