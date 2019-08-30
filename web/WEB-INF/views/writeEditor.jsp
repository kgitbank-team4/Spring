<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bootstrap4</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>

<link
	href="${pageContext.request.contextPath}/resources/summernoteEitor/plugins/summernote-bs4.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/summernoteEditor/plugins/summernote-bs4.js"></script>
<!-- summer note korean language pack -->
<script
	src="${pageContext.request.contextPath}/resources/summernoteEditor/lang/summernote-ko-KR.js"></script>
</head>
<body>
	<form>
<%-- 	<input type="hidden" name="writer_id" value="${user.id}">
	<input type="hidden" name="writer" value="${user.nickname}">
	<input type="hidden" id="title" name="title">
	<input type="hidden" id="category" name="category">	 --%>
	<textarea name="text" style="display: none;"></textarea>
	<div id="summernote"></div>
	</form>
	<%
		String title = null;
		String category;
		String writer_id;
		String writer;
		String text;
	%>

	<script>
	
		function save() {
			var form = document.createElement("form")
			//alert(form.getAttribute('name'))
			var parm = new Array();
			var input = new Array();

			form.action = "writeboard.do";
			form.method = "post";
			var text = $('#summernote').summernote('code');

			parm.push( ['title', parent.document.getElementById("title").value] );
			parm.push( ['category', parent.document.getElementById("category").value] );
			parm.push( ['text', text] );
			parm.push(['board_id',103]);
			parm.push( ['writer_id', '${user.id}'] );
			parm.push( ['writer', '${user.nickname}'] );

			for (var i = 0; i < parm.length; i++) {
				input[i] = document.createElement("input");
				input[i].setAttribute("type", "hidden");
				input[i].setAttribute('name', parm[i][0]);
				input[i].setAttribute("value", parm[i][1]);
				form.appendChild(input[i]);
			}
			document.body.appendChild(form);
			form.target="_parent"
			form.submit();
		}
		
		function edit(){
			parent.document.location.href = "freeboard.do?id=103&sort=lately";
		}
		
		$(function() {
			$('#summernote').summernote({
				height : 600,
				lang : 'ko-KR'
			});
		});
	</script>
	<script>
		function getForm() {
			//$('textarea[name="content"]').val($('#summernote').summernote('code'));
			///location.href = "writeboard.do?text="+$('textarea[name="content"]').val();
			/*   var text = document.getElementsByClassName("note-editable card-block").innerHTML;
			  location.href = "writeboard.do?text="+text; */
		}
		//alert(document.getElementById("summernote").innerHTML);
	</script>
</body>
</html>