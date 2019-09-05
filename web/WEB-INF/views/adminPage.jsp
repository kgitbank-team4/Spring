<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/clean-blog.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/admin.css" rel="stylesheet">
</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="home.do">SPRING</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
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
                <li class="nav-item">
                    <a class="nav-link-login" href="mypage.do">마이페이지</a>
                </li>

                <li class="nav-item logout login-inactive">
                    <a class="nav-link-login" href="logout.do">로그아웃</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Header -->
<header class="masthead" style="background-image: url('${pageContext.request.contextPath}/resources/img/home-bg.png')">
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

<!-- Main Content -->
	<div class="container mypage1">
		<div class="row">
			<div class="col">
					<div class="mypage-border">
						<h4>관리자페이지</h4>
						<hr>
						<ul class="nav nav-pills navpills" id="pills-tab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="pills-inform-tab" data-toggle="pill" href="#pills-inform"
								role="tab" aria-controls="pills-inform" aria-selected="true">회원리스트</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								id="pills-write-tab" data-toggle="pill" href="#pills-write"
								role="tab" aria-controls="pills-write" aria-selected="false">삭제된
									글</a></li>
							<li class="nav-item"><a class="nav-link"
								id="pills-write22-tab" data-toggle="pill" href="#pills-write22"
								role="tab" aria-controls="pills-write22" aria-selected="false">관리자글</a>
							</li>
						</ul>
						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-inform"
								role="tabpanel" aria-labelledby="pills-home-tab">
								<div class="mypage-table">
									<table class="table table-hover">
										<caption>
											<div class="d-inline-block member-total">전체 회원수 2,333명</div>
											<div class="d-inline-block" style="float: right;">
												<div class="input-group">
													<input type="text" class="form-control form2"
														placeholder="검색">
													<button class="btn11" type="submit">
														<i class="fas fa-search fa-lg"></i>
													</button>
													<button class="btn11" name="admin-check" id="admin-check"
														onclick="$('.chk').toggle();">
														<i class="fas fa-check-circle"></i>
													</button>
												</div>
											</div>
										</caption>
										<tr class="table-header">
											<td><input type="checkbox" id="product_check_all"
												class="chk" /></td>
											<td>No.</td>
											<td>이름</td>
											<td>ID</td>
											<td>닉네임</td>
											<td>전화번호</td>
											<td>가입일자</td>
										</tr>
										<c:forEach items="${myArtList}" var="myArtList">
											<fmt:formatDate value="${myArtList.date_created}" var="date"
												pattern="yyyy-MM-dd" />
											<tr class="table-child">
												<td><input type="checkbox" name="_selected_"
													class="chk" value="제목"></td>
												<td>${myAr}</td>
												<td>${myArtList.title}</td>
												<td>${date}</td>
												<td>${myArtList.view_cnt}</td>
												<td>${myArtList.up_cnt}</td>
												<td>${myArtList.up_cnt}</td>
											</tr>
										</c:forEach>
										<tr class="table-child">
											<td><input type="checkbox" name="_selected_" class="chk"
												value="제목"></td>
											<td>1</td>
											<td><a href="#">제목</a></td>
											<td>닉네임</td>
											<td>작정일자</td>
											<td>전화번호</td>
											<td>가입일자</td>
										</tr>
										<tr>
											<td colspan=7 class="btn-td"><div
													class="p-2 ml-auto writebtn a2">
													<button class="gradient-btn1 gradient-btn2 p-2 a22"
														id="check" type="button" onclick="">삭제</button>
												</div></td>
										</tr>
									</table>
									<div class="container page1">
										<div class="container">
											<div class="text-center">
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
							<div class="tab-pane fade" id="pills-write" role="tabpanel"
								aria-labelledby="pills-profile-tab">
								<div class="mypage-table">
									<table class="table table-hover">
										<caption>
											<div class="d-inline-block" style="float: right;">
												<div class="input-group">
													<input type="text" class="form-control form2"
														placeholder="검색">
													<button class="btn11" type="submit">
														<i class="fas fa-search fa-lg"></i>
													</button>
													<button class="btn11" name="admin-check" id="admin-check"
														onclick="$('.chk2').toggle();">
														<i class="fas fa-check-circle"></i>
													</button>
												</div>
											</div>
										</caption>
										<tr class="table-header">
											<td><input type="checkbox" id="product_check_all2"
												class="chk2"></td>
											<td>No.</td>
											<td>제목</td>
											<td>닉네임</td>
											<td>작성일자</td>
											<td>게시판</td>
										</tr>
										<c:forEach items="${myArtList}" var="myArtList">
											<fmt:formatDate value="${myArtList.date_created}" var="date"
												pattern="yyyy-MM-dd" />
											<tr class="table-child">
												<td><input type="checkbox" name="_selected_2"
													class="chk2" value="제목"></td>
												<td>${myAr}</td>
												<td>${myArtList.title}</td>
												<td>${date}</td>
												<td>${myArtList.view_cnt}</td>
												<td>${myArtList.up_cnt}</td>
											</tr>
										</c:forEach>
										<tr class="table-child">
											<td><input type="checkbox" name="_selected_2"
												class="chk2" value="제목"></td>
											<td>1</td>
											<td><a href="#">제목</a></td>
											<td>닉네임</td>
											<td>작정일자</td>
											<td>자유게시판</td>
										</tr>
										<tr>
											<td colspan=7 class="btn-td"><div
													class="p-2 ml-auto writebtn a2">
													<button class="gradient-btn1 gradient-btn2 p-2 a22"
														id="check" type="button" onclick="">삭제</button>
												</div></td>
										</tr>
									</table>
									<div class="container page1">
										<div class="container">
											<div class="text-center">
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
							<div class="tab-pane fade" id="pills-write22" role="tabpanel"
								aria-labelledby="pills-contact-tab">
								<div class="mypage-table">
									<table class="table table-hover">
										<caption>
											<div class="d-inline-block ul1">
												<ul class="list-inline">
													<li class="list-inline-item"><a href="#"
														class="active">공지사항</a></li>
													<li class="list-inline-item"><a href="#">Q&A</a></li>
												</ul>
											</div>
											<div class="d-inline-block" style="float: right;">
												<div class="input-group">
													<input type="text" class="form-control form2"
														placeholder="검색">
													<button class="btn11" type="submit">
														<i class="fas fa-search fa-lg"></i>
													</button>
													<button class="btn11" name="admin-check" id="admin-check"
														onclick="$('.chk3').toggle();">
														<i class="fas fa-check-circle"></i>
													</button>
												</div>
											</div>
										</caption>
										<tr class="table-header">
											<td><input type="checkbox" id="product_check_all3"
												class="chk3"></td>
											<td>No.</td>
											<td>제목</td>
											<td>작성일자</td>
										</tr>
										<c:forEach items="${myArtList}" var="myArtList">
											<fmt:formatDate value="${myArtList.date_created}" var="date"
												pattern="yyyy-MM-dd" />
											<tr class="table-child">
												<td><input type="checkbox" name="_selected_3"
													class="chk3" value="value"></td>
												<td>${myAr}</td>
												<td>${myArtList.title}</td>
												<td>${myArtList.up_cnt}</td>
											</tr>
										</c:forEach>
										<tr class="table-child">
											<td><input type="checkbox" name="_selected_3"
												class="chk3" value="value2"></td>
											<td>1</td>
											<td><a href="#">제목</a></td>
											<td>작정일자</td>
										</tr>
										<tr>
											<td colspan=4 class="btn-td"><div
													class="p-2 ml-auto writebtn a2">
													<button class="gradient-btn1 gradient-btn2 p-2 a22"
														id="check" type="button" onclick="">삭제</button>
												</div></td>
										</tr>
									</table>
									<div class="container page1">
										<div class="container">
											<div class="text-center">
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
					</div>
			</div>
		</div>
	</div>

<hr>


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
                        <li class="footer-contact"><i class="fa fa-envelope"></i><a href="#"> KGITBANK@naver.com</a>
                        </li>
                        <li class="footer-contact"><i class="fa fa-phone"></i> 010-456-7890</li>
                        <li class="footer-contact"><i class="fa fa-globe"></i><a href="#" target="_blank">
                            www.google.com</a></li>
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
<!-- End CCopyright Section -->

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for this template -->
<script src="${pageContext.request.contextPath}/resources/js/clean-blog.min.js"></script>
</body>
<script>
$(document).ready(function() {
	//전체 선택/해제
    $("#product_check_all").click(function(){
    	var chk = $(this).is(":checked");
                     
    	if(chk){
    		$('input[name*="_selected_"]').prop('checked', true);
    	}else{
    		$('input[name*="_selected_"]').prop('checked', false);
    	}
   	});
    $("#product_check_all2").click(function(){
    	var chk = $(this).is(":checked");
                     
    	if(chk){
    		$('input[name*="_selected_2"]').prop('checked', true);
    	}else{
    		$('input[name*="_selected_2"]').prop('checked', false);
    	}
   	});
    $("#product_check_all3").click(function(){
    	var chk = $(this).is(":checked");
                     
    	if(chk){
    		$('input[name*="_selected_3"]').prop('checked', true);
    	}else{
    		$('input[name*="_selected_3"]').prop('checked', false);
    	}
   	});
                 
   //체크 항목 확인
   $("#check").click(function(){
	   $('input[name*="_selected_"]').each(function(i){
                 
	   	   if($(this).is(":checked")){
	            }
	       });
       });
   });
</script>
</html>

