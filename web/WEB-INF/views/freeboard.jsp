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
  
<title>자유게시판</title>
  <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
  <!-- Bootstrap core CSS -->
  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
  
  
 <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/clean-blog.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/customfree.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/selectbox.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>

<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">SPRING</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
            <li class="dropdown">
          	  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
          	  	  aria-haspopup="true" aria-expanded="false">이야기</a>
          	  <ul class="dropdown-menu">
          		  <li><a class="nav-link" href="#">후기</a></li>
          		  <li><a class="nav-link" href="#">사진</a></li>
          	  </ul>
            </li>
	        <li class="dropdown">
          	  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
          	  	  aria-haspopup="true" aria-expanded="false">정보</a>
          	  <ul class="dropdown-menu">
          		  <li><a class="nav-link" href="#">운항 정보</a></li>
          		  <li><a class="nav-link" href="#">날씨 정보</a></li>
          	  </ul>
            </li>
            <li class="dropdown">
          	  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
          	  	  aria-haspopup="true" aria-expanded="false">커뮤니티</a>
          	  <ul class="dropdown-menu">
          		  <li><a class="nav-link" href="#">자유게시판</a></li>
          		  <li><a class="nav-link" href="#">Q & A</a></li>
          		  <li><a class="nav-link" href="#">공지사항</a></li>
          	  </ul>
            </li>
            <li class="dropdown">
          	  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
          	  	  aria-haspopup="true" aria-expanded="false">마이페이지</a>
          	  <ul class="dropdown-menu">
          		  <li><a class="nav-link" href="#">회원정보보기</a></li>
          		  <li><a class="nav-link" href="#">내가 작성한 글</a></li>
          		  <li><a class="nav-link" href="#">내 댓글</a></li>          		  
          	  </ul>
            </li>
	        <li class="nav-item">
	          <a class="nav-link-login" data-target="#modal1" data-toggle="modal">로그인</a>
	        </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('img/home-bg.png')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>Spring</h1>
            <span class="subheading">온라인 여행 커뮤니티</span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
  <!-- 태이블 -->
	<div class="container" id="bootstrap-override">
		<div class="row">
			<div class="col">
				<div class="container">
					<h3>자유게시판</h3>
					<hr>
					<div id="well" class="d-flex">
						<div class="p-2 align-self-center">
							<select>
								<option value="제목" selected>제목<span class="caret"></span></option>
								<option value="닉네임">닉네임</option>
								<option value="닉네임+제목">닉네임+제목</option>
							</select>
						</div>
						<div class="p-2 align-self-center">
							<div class="input-group">
								<input type="text" class="form-control form2" placeholder="검색">
								<button class="btn11" type="submit">
									<i class="fas fa-search fa-lg"></i>
								</button>
							</div>
						</div>
						<div class="p-2 ml-auto">
							<button class="btn">
								<i class="fas fa-pencil-alt"></i>글쓰기
							</button>
						</div>
					</div>
				</div>

				<div class="container ul1">
					<ul class="list-inline">
						<li class="list-inline-item"><a href="#" class="active">최신순</a></li>
						<li class="list-inline-item"><a href="#">조회순</a></li>
						<li class="list-inline-item"><a href="#">추천순</a></li>
						<li class="list-inline-item"><a href="#">댓글순</a></li>
					</ul>
				</div>
				<br>
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="w-10" scope="col">번호</th>
							<th class="w-50" scope="col">제목</th>
							<th class="w-20" scope="col">글쓴이</th>
							<th class="w-10" scope="col">날짜</th>
							<th class="w-10" scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>첫번째글ㅇㅇㅇㅇㅇ</td>
							<td>닉네임</td>
							<td>2019-08-22</td>
							<td>15</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>두번째글</td>
							<td>닉네임</td>
							<td>2019-08-22</td>
							<td>33</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>세번째글</td>
							<td>닉네임</td>
							<td>2019-08-22</td>
							<td>11</td>
						</tr>
					</tbody>
				</table>

				<hr>
				<!-- 페이징 -->
				<div class="container">
					<div class="row">
						<div class="col">
							<ul class="pagination justify-content-center">
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
	
	
<!-- Start Footer Section -->
  <section id="footer-section" class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 footer-office">
                        <div class="section-heading-2">
                            <h3 class="section-title">
                                <span>Office Address</span>
                            </h3>
                        </div>                       
                        <div class="footer-address">
                            <ul>
                                <li class="footer-contact"><i class="fa fa-home"></i>서울시 종로구 KGITBANK</li>
                                <li class="footer-contact"><i class="fa fa-envelope"></i><a href="#"> KGITBANK@naver.com</a></li>
                                <li class="footer-contact"><i class="fa fa-phone"></i> 010-456-7890</li>
                                <li class="footer-contact"><i class="fa fa-globe"></i><a href="#" target="_blank"> www.google.com</a></li>
                            </ul>
                        </div>
                    </div>
                    
           
                    <div class="col-md-4">
                        <div class="section-heading-2">
                            <h3 class="section-title">
                                <span>SNS</span>
                            </h3>
                        </div>                    
                        <div class="latest-tweet">
                            <ul class="list-inline text-left">
					            <li class="list-inline-item">
					              <a href="#">
					                <span class="fa-stack fa-lg">
					                  <i class="fas fa-circle fa-stack-2x"></i>
					                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>				                 
					                </span>
					              </a>
					            </li>
					            <li class="list-inline-item">
					              <a href="#">
					                <span class="fa-stack fa-lg">
					                  <i class="fas fa-circle fa-stack-2x"></i>
					                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
					                </span>
					              </a>
					            </li>
					            <li class="list-inline-item">
					              <a href="#">
					                <span class="fa-stack fa-lg">
					                  <i class="fas fa-circle fa-stack-2x"></i>
					                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
					                </span>
					              </a>
					            </li>
					          </ul>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="section-heading-2">
                            <h3 class="section-title">
                                <span>Community</span>
                            </h3>
                        </div>
                        <div class="footer-address">
                            <ul>
                                <li class="footer-contact"><a href="#">공지사항</a></li>
                                <li class="footer-contact"><a href="#">자유게시판</a></li>
                                <li class="footer-contact"><a href="#">Q & A</a></li>
                            </ul>
                        </div>
                    </div>                                  
                </div>
            </div>
        </section>
        <!-- End Footer Section -->
        
        
        <!-- Start Copyright Section -->
        <div id="copyright-section" class="copyright-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="copyright">
                            Copyright © 2014. All Rights Reserved.Design and Developed by <a href="#">kgitbank508</a>
                        </div>
                    </div>
                    
                    <div class="col-md-5">
                        <div class="copyright-menu pull-right">
                            <ul>
                                <li><a href="#" class="active">Home</a></li>
                                <li><a href="#">Airport.co.kr</a></li>
                                <li><a href="#">OpenWheaterMap.org</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!--/.row -->
            </div><!-- /.container -->
        </div>
        <!-- End Copyright Section -->
        
        
        <!-- Start Modal -->
        <div class="row">
        	<div class="modal" id="modal1" tabindex="-1">
        		<div class="modal-dialog">
        			<div class="modal-content">
        				<div class="modal-header">
        					<span>로그인</span>
        					<button class="close" data-dismiss="modal">&times;</button>
        				</div>
        				<div class="modal-body">
        					<form class="form-horizontal" action="login.do">
							  <div class="form-group">
							    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
							    <div class="col-sm-10">
							      <input type="email" class="form-control" id="inputEmail3" placeholder="ID">
							    </div>
							  </div>
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
							    <div class="col-sm-10">
							      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
							    </div>
							  </div>
							  <div class="form-group">
							    <div class="col-sm-offset-2 col-sm-10">
							      <div class="checkbox">
							        <label>
							          <input type="checkbox"><span class="rememberID"> 아이디 저장하기</span>
							        </label>
							      </div>
							    </div>
							  </div>
							  <div class="form-group">
							    <div class="col-sm-offset-2 col-sm-10" style="text-align: right">
							      <button type="submit" class="btn btn-default">로그인</button>
							      <a href="regmember.do">회원가입</a>
							    </div>							    
							  </div>
							</form>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
        
        
        
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Custom scripts for this template -->
  <script src="${pageContext.request.contextPath}/resources/js/clean-blog.min.js"></script>

	<!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/clean-blog.min.js"></script>
  
  <!-- 수정js -->
  <script>
	$(function(){
		var clic=$("ul > li");
		clic.find("a").click(function(){
			click.removeClass("active");
			$(this).addClass("active").css("text-decoration","underline");
		});
	});
</script>

 <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Custom scripts for this template -->
  <script src="js/clean-blog.min.js"></script>
</body>
</html>
  
</body>

</html>