<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/reset.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/strawberry.css' /> ">
		<link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/fragments/side_and_footer.css' /> ">
		<link rel="stylesheet" type="text/css" href="<c:url value = '/resources/css/market/write.css' /> ">
		<script src="<c:url value="/resources/js/ckeditor/ckeditor.js"/>"></script>
		<title>Strawberry : Market write</title>
	</head>
	<body>
		<c:import url="/WEB-INF/views/fragments/sidebar.jsp" />
		<div class="contents">
			<div class="vital_warp sb-center">
				<form:form modelAttribute="marketWriteForm" method="post" action="/market/write" enctype="multipart/form-data" onsubmit="return form(this);">
					<table class="vital_tb">
						<tbody>
							<tr>
								<td class="vital_td">
									<div id="thumbnail_cover" class="infomaition_left">
										<p id="addBtn_p"><span id="thumbnail_add" onclick="showImageAdd();">Click</span> here to add image</p>
										<input id="thumbnail" name="thumbnail" type="file" style="display:none;">
										<span id="thumbnail_delete" style="display:none;" onclick="imageDel();"></span>
									</div>
									<div class="infomation_right">
										<div class="sb-tbox">
											<input id="productName" name="productName" type="text" maxlength="30" autocomplete="off" spellcheck="false">
											<p>Product Name</p>
										</div>
										<div class="sb-tbox" style="width: 200px; margin-top: 10px">
											<input id="price" name="price" type="text" maxlength="7" autocomplete="off" spellcheck="false" oninput="numberCommaReplace(this);">
											<p>Price (￦)</p>
										</div>
										<div class="sb-tbox" style="width: 200px; margin: 10px 10px 0px 10px;">
											<input id="sale" name="sale" type="text" maxlength="2" autocomplete="off" spellcheck="false" oninput="numberCommaReplace(this);">
											<p>Sale (%)</p>
										</div>
	 									<div class="thumbnail_info">
											<p>1:1 비율 크기에 최적화 되어있으며,<br>400MB이하인 *.JPG, *.PNG, *.BMP 파일만 업로드 가능합니다.</p>
										</div>>
									</div>
								</td>
							</tr>
							<tr>
								<td class="vital_td">
									<textarea name="contents" id="contents" rows="40" cols="80">
									</textarea>
									<script>
						                // Replace the <textarea id="editor1"> with a CKEditor 4
						                // instance, using default configuration.
						                CKEDITOR.replace( 'contents', {
												height: '500px',
												filebrowserUploadUrl: '/util/upload'
							                });
						            </script>
								</td>
							</tr>
							<tr>
								<td style="text-align: right">
									<input class="sb-submit" type="submit" value="submit" style="margin-top: 10px;">
								</td>
							</tr>
						</tbody>
					</table>
				</form:form>
			</div>
		</div>
		<c:import url="/WEB-INF/views/fragments/footer.jsp" />
		<script type="text/javascript" src="<c:url value="/resources/js/market/write.js"/>"></script>
	</body>
</html>