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
	function check(){
		var t1 = parent.document.getElementById("title").value;
		if(t1 == ''){
			alert("제목을 입력해주세요!");
			return false;
		}
		return true;
	}

		function save(url,what,board_id) {
			//alert(board_id)
			var form = document.createElement("form")
			//alert(form.getAttribute('name'))
			var parm = new Array();
			var input = new Array();

			form.action = url;
			form.method = "post";
			var text = $('#summernote').summernote('code');

			parm.push( ['title', parent.document.getElementById("title").value] );
			parm.push( ['category', parent.document.getElementById("category").value] );
			parm.push( ['text', text] );
			parm.push(['board_id',board_id]);//수정해야함
			parm.push( ['writer_id', '${user.id}'] );
			parm.push( ['writer', '${user.nickname}'] );
			if(url=='updateboard.do') {
                parm.push(['id', what]);
            }

			for (var i = 0; i < parm.length; i++) {
				input[i] = document.createElement("input");
				input[i].setAttribute("type", "hidden");
				input[i].setAttribute('name', parm[i][0]);
				input[i].setAttribute("value", parm[i][1]);
				form.appendChild(input[i]);
			}
			document.body.appendChild(form);
			form.target="_parent"
			if(check())
				form.submit();
		}
		
		function edit(board_id){
			parent.document.location.href = "freeboard.do?id="+board_id+"&sort=lately";
		}

		$(function x() {
			$('#summernote').summernote({
				height : 600,
				lang : 'ko-KR'
			});
		});
	</script>
	<script>
        function imp(text) {
            $('#summernote').summernote({
                height : 600,
                lang : 'ko-KR'
            });
            $('#summernote').summernote('code',text);
        }

	</script>
</body>
</html>