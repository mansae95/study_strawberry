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

<link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/member/signup1.css?ver=1'/>">
<script type="text/javascript" src="<c:url value = '/resources/js/member/signup1.js?ver=1'/>"></script>

<title>회원가입(약관동의)</title>

</head>
<body>
	<!-- side bar -->
	<c:import url="/WEB-INF/views/fragments/sidebar.jsp" />
		
	<div id="container">
		<form id="agreement_form" action="member_join" method="post">
			<div id="contents">
				<div id="div_left_header">
					<h1>Strawberry</h1>
				</div>
				<hr>
				<div class="div_content">
					<div id="div_all_chk" class="div_chk">
						<span id="all_chk" class="chk">
							<input type="checkbox">
							<label>
								모두 동의합니다.
							</label>	
						</span>
						<div id="all_chk_explain">
							서비스 이용약관, 개인정보 수집 및 이용, 프로모션 정보 수신(선택)에 모두 동의합니다.
						</div>
					</div>
					<div id="div_chk1" class="div_chk">
						<span class="chk">
							<input id="chkbox1" type="checkbox" name="#" value="#">
							<label>
								서비스 이용약관 동의
							</label>
							<span>(필수)</span>
						</span>
						<div class="agreement_box">
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
						</div>
					</div>
					<div id="div_chk2" class="div_chk">
						<span class="chk">
							<input id="chkbox2" type="checkbox" name="#" value="#">
							<label>
								개인정보 수집 및 이용 동의
							</label>
							<span>(필수)</span>
						</span>
						<div class="agreement_box">
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
						</div>	
					</div>	
					
					<div id="div_chk3" class="div_chk">
						<span class="chk">
							<input type="checkbox" name="ad_agree_yn" >
							<label>
								프로모션 정보 수신 동의
							</label>
							<span>(선택)</span>
						</span>
						<div class="agreement_box">
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
							<p>
								Strawberry 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
							        본 약관은 다양한 Strawberry 서비스의 이용과 관련하여 Strawberry 서비스를 제공하는 Strawberry 주식회사(이하 ‘Strawberry’)와
							        이를 이용하는 Strawberry 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
							        아울러 여러분의 Strawberry 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
							</p>
						</div>
					</div>
				</div>
				<div>
					<input id="submit-btn" type="button" value="동의">
				</div>
			</div>	
			
		</form>
	</div>
	
	<!-- Footer -->
	<c:import url="/WEB-INF/views/fragments/footer.jsp" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	
		$(document).ready(function() {
			$('#all_chk input').change(function() {
				var status = $('#all_chk input').is(":checked");
				checkAllchkbox(status);
			});
			
			$('.chk input').change(function() {
				uncheckAllchk();
			});
			
			$('#submit-btn').click(function() {
				if (checkSubmit()) {
					$("#agreement_form").submit();	
				} else {
					alert("필수 약관에 대하여 동의해주세요.");
				}
			});
			
			
		});
		
	</script>
	
</body>
</html>