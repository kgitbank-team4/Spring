<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.team4.biz.user.dao.UserDAO" %>
<%@ page import="com.team4.biz.user.dao.UserDAOImpl" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.team4.biz.board.service.BoardService" %>
<%@ page import="com.team4.biz.board.service.BoardServiceImpl" %>
<%@ page import="com.team4.biz.board.vo.ArticleVO" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <title>Spring - Travel Community Site</title>
  <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/css/clean-blog.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
  
  <!-- Custom for freeboard css -->
  <link href="${pageContext.request.contextPath}/resources/css/customfree.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/selectbox.css" rel="stylesheet">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  

</head>

<body>

<!-- freeboard -->
<div class="container" id="bootstrap-override">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<div class="container">
					<h3>자유게시판</h3>
					<div id="well" class="well-sm">
						<div class="d-flex">
							<div class="p-2">
								<select>
									<option value="제목" selected>제목<span class="caret"></span></option>
									<option value="닉네임">닉네임</option>
									<option value="닉네임+제목">닉네임+제목</option>
								</select>
							</div>

							<div class="p-2">
								<div class="input-group">
									<input class="form-control" placeholder="검색" /> <span
										class="input-group-addon"><i class="fas fa-search"></i></span>
								</div>
							</div>
							<div class="ml-auto p-2">
								<button class="btn">
									<i class="fas fa-pencil-alt"></i>글쓰기
								</button>
							</div>
						</div>
					</div>
					<div class="container ul1">
						<ul class="list-inline">
							<li><a href="#" class="active">최신순</a></li>
							<li><a href="#">조회순</a></li>
							<li><a href="#">추천순</a></li>
							<li><a href="#">댓글순</a></li>
						</ul>
					</div>
					<table class="table">
						<thead id="td">
							<tr>
								<th id="td" class="col-md-1">번호</th>
								<th id="td" class="col-md-6">제목</th>
								<th id="td" class="col-md-2">글쓴이</th>
								<th id="td" class="col-md-2">날짜</th>
								<th id="td" class="col-md-1">조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td id="td">1</td>
								<td id="td"><a href="#">첫번째글</a></td>
								<td id="td">4조</td>
								<td id="td">2019-08-20</td>
								<td id="td">2</td>
							</tr>
							<tr>
								<td id="td">2</td>
								<td id="td"><a href="#">두번째글</a></td>
								<td id="td">4조</td>
								<td id="td">2019-08-19</td>
								<td id="td">2</td>
							</tr>
							<tr>
								<td id="td">3</td>
								<td id="td"><a href="#">세번째글</a></td>
								<td id="td">3조</td>
								<td id="td">2019-08-18</td>
								<td id="td">10</td>
							</tr>
						</tbody>
					</table>
					<hr>
					<!-- 페이징 -->
					<div class="container">
						<div class="row">
							<div class="col-lg-8 col-md-8">
								<div class="container">
									<!-- 페이징 -->
									<div class="text-center">
										<ul class="pagination">
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);">처음</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);">1</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);">2</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);">끝</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  
  <hr>
  
        
        
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Custom scripts for this template -->
  <script src="${pageContext.request.contextPath}/resources/js/clean-blog.min.js"></script>
  
  <!-- Custom freeboard js -->
  <script>
	$(function(){
		var clic=$("ul > li");
		clic.find("a").click(function(){
			click.removeClass("active");
			$(this).addClass("active");
		});
	});
  </script>
	
	
  
</body>

</html>