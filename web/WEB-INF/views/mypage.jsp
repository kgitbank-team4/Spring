<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Spring - Travel Community Site</title>
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
  <link href="${pageContext.request.contextPath}/resources/css/mypage.css" rel="stylesheet">
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="home.do">SPRING</a>
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
            <li class="nav-item">
	          <a class="nav-link-login" href="mypage.html">마이페이지</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link-login" data-target="#modal1" data-toggle="modal">로그인</a>
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
      <div class="col-lg-8 col-md-10 mx-auto">
      	<section class="xm">
      	  <div class="mypage-border">
      	    <h4>마이페이지</h4>
      	    <br>
      	    <ul class="nav nav-pills navpills" id="pills-tab" role="tablist">
			  <li class="nav-item">
			    <a class="nav-link active" id="pills-inform-tab" data-toggle="pill" href="#pills-inform" role="tab" aria-controls="pills-inform" aria-selected="true">회원정보보기</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="pills-write-tab" data-toggle="pill" href="#pills-write" role="tab" aria-controls="pills-write" aria-selected="false">내가 작성한 글</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="pills-write22-tab" data-toggle="pill" href="#pills-write22" role="tab" aria-controls="pills-write22" aria-selected="false">내 댓글</a>
			  </li>
			</ul>
			<div class="tab-content" id="pills-tabContent">
			  <div class="tab-pane fade show active" id="pills-inform" role="tabpanel" aria-labelledby="pills-home-tab">
			  	<div class="mypage-table">
				  	  <table class="table table-hover">
				  	  	<tr>
				  	  	  <td class="table-header">아이디</td>
				  	  	  <td class="table-child">${user.username}</td>
				  	  	</tr>
				  	  	<tr>
				  	  	  <td class="table-header">닉네임</td>
				  	  	  <td class="table-child">${user.nickname}</td>
				  	  	</tr>
				  	  	<tr>
				  	  	  <td class="table-header">휴대폰번호</td>
				  	  	  <td class="table-child">${user.tel}</td>
				  	  	</tr>
				  	  	<tr class="tablebt-tr">
				  	  	  <td colspan="2" style="text-align: right">
				  	  	  	<input type="submit" value="회원정보수정" class="tablebt" data-target="#modal2" data-toggle="modal">
				  	  	  	<input type="submit" value="탈퇴하기" class="tablebt" data-target="#modal3" data-toggle="modal">
				  	  	  	
				  	  	  </td>
				  	  	</tr>
				  	  </table>
			  	</div>
			  </div>
			  <div class="tab-pane fade" id="pills-write" role="tabpanel" aria-labelledby="pills-profile-tab">	
			  	<div class="mypage-table">
			  	  <table class="table table-hover">
			  	  	<tr class="table-header">
			  	  	  <td>No.</td>
			  	  	  <td>제목</td>
			  	  	  <td>날짜</td>
			  	  	  <td>조회수</td>
			  	  	  <td>추천수</td>
			  	  	</tr>
			  	  	<tr class="table-child">
			  	  	  <td>1</td>
			  	  	  <td><a href="#">############</a></td>
			  	  	  <td>####-##-##</td>
			  	  	  <td>##</td>
			  	  	  <td>#</td>
			  	  	</tr>
			  	  	<tr class="table-child">
			  	  	  <td>1</td>
			  	  	  <td><a href="#">############</a></td>
			  	  	  <td>####-##-##</td>
			  	  	  <td>##</td>
			  	  	  <td>#</td>
			  	  	</tr>
			  	  </table>
			  	  <div class="container page1">
		            <div class="row">
		               <div class="col-lg-5 col-md-5">
		                  <div class="container">
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
			  <div class="tab-pane fade" id="pills-write22" role="tabpanel" aria-labelledby="pills-contact-tab">
			  	<div class="mypage-table">
			  	  <table class="table table-hover">
			  	  	<tr class="table-header">
			  	  	  <td>No.</td>
			  	  	  <td>댓글</td>
			  	  	  <td>게시글제목</td>
			  	  	  <td>추천수</td>
			  	  	</tr>
			  	  	<tr class="table-child">
			  	  	  <td>1</td>
			  	  	  <td><a href="#">############</a></td>
			  	  	  <td>####-##-##</td>
			  	  	  <td>#</td>
			  	  	</tr>
			  	  	<tr class="table-child">
			  	  	  <td>1</td>
			  	  	  <td><a href="#">############</a></td>
			  	  	  <td>####-##-##</td>
			  	  	  <td>#</td>
			  	  	</tr>
			  	  </table>
			  	  <div class="container page1">
		            <div class="row">
		               <div class="col-lg-5 col-md-5">
		                  <div class="container">
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
		  </div>
		</section>
      </div>
    </div>
  </div>

  <hr>

  <!-- Footer -->
  <!-- <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
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
          <p class="copyright text-muted">Copyright &copy; Your Website 2019</p>
        </div>
      </div>
    </div>
  </footer> -->
  
  
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
        <!-- End CCopyright Section -->
        
        
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
        					<form class="form-horizontal" action="regmember.html">
							  <div class="form-group">
							    <label for="loginID" class="col-sm-2 control-label">ID</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" id="loginID" placeholder="ID">
							    </div>
							  </div>
							  <div class="form-group">
							    <label for="loginPW" class="col-sm-2 control-label">Password</label>
							    <div class="col-sm-10">
							      <input type="password" class="form-control" id="loginPW" placeholder="Password">
							    </div>
							  </div>
							  <div class="form-group">
							    <div class="col-sm-offset-2 col-sm-10">
							      <div class="checkbox">
							        <label>
							          <input type="checkbox" id="saveID"><span class="rememberID"> 아이디 저장하기</span>
							        </label>
							      </div>
							    </div>
							  </div>
							  <div class="form-group">
							    <div class="col-sm-offset-2 col-sm-10" style="text-align: right">
							      <button type="submit" class="btn btn-default">로그인</button>
							      <a href="regmember.html">회원가입</a>
							    </div>							    
							  </div>
							</form>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
        
        <!-- 회원정보 수정 모달 -->
        <div class="row">
        	<div class="modal" id="modal2" tabindex="-1">
        		<div class="modal-dialog">
        			<div class="modal-content">
        				<div class="modal-header">
        					<span>회원정보수정</span>
        					<button class="close" data-dismiss="modal">&times;</button>
        				</div>
        				<div class="modal-body">
        				  <div class="mypage-border">
        				    <div class="mypage-table">
        				      <form action="userUPDATE.do">
        				      <input type="hidden" name="id" value="${user.id}">
	        					<table class="table table-bordered modal-table">
	        					  <tr>
	        					    <td class="table-header">아이디</td>
	        					    <td class="table-child">${user.username}</td>
	        					  </tr>
	        					  <tr>
	        					    <td class="table-header">현재비밀번호</td>
	        					    <td class="table-child">
	        					    	<input type="password" name="oldpassword" id="pw">
	        					    </td>
	        					  </tr>
	        					  <tr>
	        					    <td class="table-header">신규비밀번호</td>
	        					    <td class="table-child">
	        					    	<input type="password" name="password" id="pw2">
	        					    </td>
	        					  </tr>
	        					  <tr>
	        					    <td class="table-header">신규비밀번호 확인</td>
	        					    <td class="table-child">
	        					    	<input type="password" name="passwordcheck" id="pwcheck">
	        					    </td>
	        					  </tr>
	        					  <tr>
	        					    <td class="table-header">닉네임</td>
	        					    <td class="table-child">
	        					    <input type="text" name="nickname" placeholder="${user.nickname}">
	        					    </td>
	        					  </tr>
	        					  <tr>
	        					    <td class="table-header">휴대폰번호</td>
	        					    <td class="table-child">
	        					    <input type="text" name="tel" placeholder="${user.tel}">
	        					    </td>
	        					  </tr>
	        					  <tr class="tablebt-tr">
							  	  	 <td colspan="2" style="text-align: right">
							  	  	  <input type="submit" value="수정하기" class="tablebt">							  	  	  
							  	  	 </td>
							  	  </tr>
	        					</table>
	        				  </form>
        					</div>
        				  </div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
        
        <!-- 회원탈퇴 모달 -->
        <div class="row">
        	<div class="modal" id="modal3" tabindex="-1">
        		<div class="modal-dialog">
        			<div class="modal-content">
        				<div class="modal-header">
        					<span>탈퇴하기</span>
        					<button class="close" data-dismiss="modal">&times;</button>
        				</div>
        				<div class="modal-body">
        				  <div class="mypage-border">
        				    <div class="mypage-table">
        				      <form name="form2" action="userDELETE.do">
        				      <input type="hidden" name="id" value="${user.id}">
	        					<table class="table table-bordered modal-table">
	        					  <tr>
	        					    <td class="table-header">아이디</td>
	        					    <td class="table-child">${user.username}</td>
	        					  </tr>
	        					  <tr>
	        					    <td class="table-header">비밀번호</td>
	        					    <td class="table-child">
	        					    	<input type="password" name="password" id="pw_id">
	        					    	<input type="hidden" id="pw_ck" value="${user.password}">
	        					    </td>
	        					  </tr>	        					  
	        					  <tr class="tablebt-tr">
							  	  	 <td colspan="2" style="text-align: right">
							  	  	  <input type="button" value="탈퇴하기" class="tablebt" onclick="javascript:outcheck()">
							  	  	 </td>
							  	  </tr>
	        					</table>
	        				  </form>
        					</div>
        				  </div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="${pageContext.request.contextPath}/js/clean-blog.min.js"></script>

</body>
<script>
function check(){
	var pw = document.getElementById("pw_id").value;
	var pwck = document.getElementById("pw_ck").value;
	if(pw == ''){
		alert('비밀번호를 입력하세요');
		document.getElementById("pw_id").focus();
		return false;
	}else if(pw != pwck){
		alert('비밀번호를 확인하세요');
		//document.getElementById("pw_id").focus();
		return false;
	}
	return true;
}
function outcheck(){
	if(check())
		document.form2.submit();
}
</script>
</html>
