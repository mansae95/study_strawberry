<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>


<script type="text/javascript">

    // 회원가입 화면의 입력값들을 검사한다.
    function checkValue()
    {
        var form = document.userInfo;

        if(!form.email.value){
            alert("이메일을 입력하세요.");
            return false;
        }

        if(form.emailDuplication.value != "emailCheck"){
            alert("이메일 중복체크를 해주세요.");
            return false;
        }

        if(!form.password.value){
            alert("비밀번호를 입력하세요.");
            return false;
        }

        // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
        if(form.password.value != form.passwordCheck.value ){
            alert("비밀번호를 동일하게 입력하세요.");
            return false;
        }

        if(!form.nickname.value){
            alert("닉네임을 입력하세요.");
            return false;
        }
        if(form.nicknameDuplication.value != "nicknameCheck"){
            alert("닉네임 중복체크를 해주세요.");
            return false;
        }

    }

    // 이메일 중복체크 화면open
    function openEmailCheck(){
        window.name = "parentForm";
        window.open("member/signup/emailCheckForm",
            "chkForm", "width=500, height=300, resizable = no, scrollbars = no");
    }


    // 닉네임 중복체크 화면open
    function openNicknameCheck(){
        window.name = "parentForm";
        window.open("member/signup/nicknameCheckForm",
            "chkForm", "width=500, height=300, resizable = no, scrollbars = no");
    }
	
</script>

<script>
	var msg = "${msg}";
	if (msg === "signupFail") {
		alert("회원가입 실패");
	}
</script>

<head>
    <meta charset="UTF-8">

    <!-- sidebar/footer css -->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/reset.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/fragments/side_and_footer.css' /> ">
    <!-- 회원가입 페이지 css/js -->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/member/signup1.css'/>">
    <script type="text/javascript" src="<c:url value = '/resources/js/member/signup1.js'/>"></script>

</head>
<body>
<!-- side bar -->
<c:import url="/WEB-INF/views/fragments/sidebar.jsp" />

<!-- 실질적으로 내용이 표시되는 영역 꼭 'contents'로 생성 안해도 되지만 div를 내용을 감쌀 div추가가 필요함.-->
<!-- <div class="contents"> -->


<div id="container">

    <form id="agreement_form" action="<c:url value = '/member/member_signup' />" name="userInfo"  method="post" onsubmit="return checkValue()">
        <br><br>
        <div >
            <h1>Strawberry 회원가입</h1>
        </div>  <br>

                 <div class="fieldlabel"><div class="titlelabel">이메일</div>
                 <input type="text" name="email" id="userEmail"/> <input type="button" value="이메일 중복확인" onclick="openEmailCheck()" /> </div>
                 <br>


                <div class="fieldlabel"><div class="titlelabel">비밀번호 </div><input type="password" name="password"/></div>
                <br>
                 <div class="fieldlabel"><div class="titlelabel">비밀번호 확인 </div><input type="password" name="passwordCheck"/></div>
                <br>
                <div class="fieldlabel"><div class="titlelabel">닉네임 </div><input type="text" name="nickname" id="userNickname"/>  <input type="button" value="닉네임중복확인" onclick="openNicknameCheck()"/></div>
                <br>

        <input type="submit" id="submit-btn" value="등록하기"  /><br>
	    <input type="hidden" name="emailDuplication" value="emailUncheck" >
	    <input type="hidden" name="nicknameDuplication" value="nicknameUncheck" >
	    <input type="hidden" name="token" value="${token}"/>
    </form>

</div>


<!-- </div> -->

<!-- Footer -->
<c:import url="/WEB-INF/views/fragments/footer.jsp" />


</body>
</html>