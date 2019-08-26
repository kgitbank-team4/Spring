<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>bootstrap4</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
   
  <link href="${pageContext.request.contextPath}/resources/summernoteEitor/plugins/summernote-bs4.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/resources/summernoteEditor/plugins/summernote-bs4.js"></script>
  <!-- summer note korean language pack -->
  <script src="${pageContext.request.contextPath}/resources/summernoteEditor/lang/summernote-ko-KR.js"></script> </head>
<body>
	<form action="" method="">
		<div id="summernote"></div>
	</form>
	
	<script>
		$(function() {
			$('#summernote').summernote({
				height : 600,
				lang : 'ko-KR'
			});
		});
	</script>
</body>
</html>