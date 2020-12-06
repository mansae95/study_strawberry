<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="sidebar">
	<div class="sidebar_logo" onclick="location.href='/'">
		<h1 class="no_drag">Strawberry</h1>
	</div>
	<ul class="sidebar_member">
		<c:choose>
			<c:when test="${level le 1}">
				<li class="member_li"><a href="/member/signout">SIGN OUT</a></li>
				<li class="member_li"><a href="#">MY PAGE</a></li>
			</c:when>
			<c:otherwise>
				<li class="member_li"><a href="/member/signin">SIGN IN</a></li>
				<li class="member_li"><a href="/member/sign_up">SIGN UP</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
	<ul class="sidebar_menu">
		<li class="menu_li"><a href="#">NOTIC</a></li>
		<li class="menu_li"><a href="#">MARKET</a></li>
	</ul>
</div>