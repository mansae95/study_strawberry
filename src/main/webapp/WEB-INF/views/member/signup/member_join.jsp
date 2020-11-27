<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <!-- sidebar/footer css -->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/reset.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/fragments/side_and_footer.css' /> ">
    <!-- 회원가입 페이지 css/js -->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/member/signup1.css'/>">
    <script type="text/javascript" src="<c:url value = '/resources/js/member/signup1.js'/>"></script>

    <title>회원가입(약관동의)</title>

</head>
<body>
<!-- side bar -->
<c:import url="/WEB-INF/views/fragments/sidebar.jsp" />

<!-- 실질적으로 내용이 표시되는 영역 꼭 'contents'로 생성 안해도 되지만 div를 내용을 감쌀 div추가가 필요함.-->
<!-- <div class="contents"> -->

<div id="container">
회원가입 페이지
    ${token}
</div>
<!-- </div> -->

<!-- Footer -->
<c:import url="/WEB-INF/views/fragments/footer.jsp" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>



</script>

</body>
</html>