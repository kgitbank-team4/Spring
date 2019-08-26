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
  <link href="${pageContext.request.contextPath}/resources/css/airport.css" rel="stylesheet">
  
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
 <div id="bootstrap-override">
  <div class="container">
    <div class="row">
      <div class="col-lg-10 col-md-10 mx-auto">
        <div class="airport-container">
		<h3>운항정보</h3>
			<div id="well" class="well-sm">
				<!-- tabparent -->
				<ul class="nav nav-pills navpills" id="pills-tab" role="tablist">
				  <li class="nav-item">
				    <a class="nav-link active" id="pills-start-tab" data-toggle="pill" href="#pills-start" role="tab" aria-controls="pills-start" aria-selected="true">출발</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" id="pills-end-tab" data-toggle="pill" href="#pills-end" role="tab" aria-controls="pills-end" aria-selected="false">도착</a>
				  </li>
				</ul>
				<!-- tabchild -->
				<div class="tab-content" id="pills-tabContent">
				  
				  
				  
				  <!-- 출발정보 -->
				  <div class="tab-pane fade show active" id="pills-start" role="tabpanel" aria-labelledby="pills-start-tab">
				  	<div class="airport-table">
				  	  <table class="table table-bordered firsttb">
				  	  	<tr>
				  	  		<td class="table-head" id="tablegroup1" >공항</td>
				  	  		<td class="table-child" id="tablegroup1">
				  	  			<select class="airport-drop">
				  	  				<option value="non" selected> <span class="caret"></span></option>
				  	  				<option value="인천"">인천</option>
				  	  				<option value="서울/김포">서울/김포</option>
				  	  				<option value="제주">제주</option>
				  	  			</select>
				  	  		</td>
				  	  		<td class="table-head" id="tablegroup2">시간</td>
				  	  		<td id="tablegroup2">
				  	  			<select style="width:55px;">
				  	  				<option value="0" >0</option>
				  	  				<option value="12">12</option>
				  	  			</select>
				  	  			시&nbsp;&nbsp;
				  	  			<select style="width:55px;">
				  	  				<option value="0">0</option>
				  	  				<option value="59">12</option>
				  	  			</select>
				  	  			 분
				  	  		</td>
				  	  		<td class="table-head" id="tablegroup3">편명</td>
				  	  		<td id="tablegroup3"><input type="text" name="" ></td>
				  	  		
				  	  	</tr>
				  	  	<tr>
				  	  		<td class="table-head" id="tablegroup4">구분</td>
				  	  		<td id="tablegroup4">
				  	  			<select class="airport-drop">
				  	  				<option value="non"> <span class="caret"></span></option>
				  	  				<option value="국내선">국내선</option>
				  	  				<option value="국제선">국제선</option>
				  	  			</select>
				  	  		</td>
				  	  		<td class="table-head" id="tablegroup5">항공사</td>
				  	  		<td id="tablegroup5">
				  	  			<select class="airport-drop">
									<option value="non"> <span class="caret"></span></option>
				  	  				<option value="인천공항">국내</option>
				  	  				<option value="코리아익스프레스에어">코리아익스프레스에어</option>
				  	  			</select>
				  	  		</td>
				  	  		<td class="tablebt" colspan="2" id="tablegroup6">
				  	  			<input type="submit" value="조회" style="width: 150px; color: white; background-color: #0281ff; border-color: #0281ff;">
				  	  		</td>
				  	  	</tr>
				  	  </table>
				  	  <hr>
				  	  <table class="table table-hover secondtb">
					  	  	<tr class="table-head2 ">
					  	  		<td>항공사</td>
					  	  		<td>편명</td>
					  	  		<td>예정시간</td>
					  	  		<td>변경시간</td>
					  	  		<td>출발지</td>
					  	  		<td>도착지</td>
					  	  		<td>구분</td>
					  	  		<td>탑승구</td>
					  	  		<td>현황</td>
					  	  	</tr>
					  	  	<tr>
					  	  		<td>아시아나항공</td>
					  	  		<td>OZ9104</td>
					  	  		<td>20:00</td>
					  	  		<td>20:08</td>
					  	  		<td>서울/김포</td>
					  	  		<td>도쿄/하네다</td>
					  	  		<td>국제선</td>
					  	  		<td>38</td>
					  	  		<td id="출발">출발</td>
					  	  	</tr>
					  	  	<tr>
					  	  		<td>아시아나항공</td>
					  	  		<td>OZ9104</td>
					  	  		<td>20:00</td>
					  	  		<td>20:08</td>
					  	  		<td>서울/김포</td>
					  	  		<td>도쿄/하네다</td>
					  	  		<td>국제선</td>
					  	  		<td>38</td>
					  	  		<td id="탑승장 입장">탑승장 입장</td>
					  	  	</tr>
				  	  </table>
				  	</div>
			  	  </div>
			  	  
			  	  
			  	  
			  	  			  	  			  	  			  	  			  			  	  
			  	  <!-- 도착정보 -->
			  	  <div class="tab-pane fade show" id="pills-end" role="tabpanel" aria-labelledby="pills-end-tab">
				  	<div class="airport-table">
				  	  <table class="table table-bordered firsttb">
				  	  	<tr>
				  	  		<td class="table-head" id="tablegroup1">공항</td>
				  	  		<td class="table-child" id="tablegroup1">
				  	  			<select class="airport-drop">
				  	  				<option value="non" selected> <span class="caret"></span></option>
				  	  				<option value="인천"">인천</option>
				  	  				<option value="서울/김포">서울/김포</option>
				  	  				<option value="제주">제주</option>
				  	  			</select>
				  	  		</td>
				  	  		<td class="table-head" id="tablegroup2">시간</td>
				  	  		<td id="tablegroup2">
				  	  			<select style="width:55px;">
				  	  				<option value="0" >0</option>
				  	  				<option value="12">12</option>
				  	  			</select>
				  	  			시&nbsp;&nbsp;
				  	  			<select style="width:55px;">
				  	  				<option value="0">0</option>
				  	  				<option value="59">12</option>
				  	  			</select>
				  	  			 분
				  	  		</td>
				  	  		<td class="table-head" id="tablegroup3">편명</td>
				  	  		<td id="tablegroup3"><input type="text" name=""></td>
				  	  	</tr>
				  	  	<tr>
				  	  		<td class="table-head" id="tablegroup4">구분</td>
				  	  		<td id="tablegroup4">
				  	  			<select class="airport-drop">
				  	  				<option value="non"> <span class="caret"></span></option>
				  	  				<option value="국내선">국내선</option>
				  	  				<option value="국제선">국제선</option>
				  	  			</select>
				  	  		</td>
				  	  		<td class="table-head" id="tablegroup5">항공사</td>
				  	  		<td id="tablegroup5">
				  	  			<select class="airport-drop">
				  	  				<option value="non"> <span class="caret"></span></option>
				  	  				<option value="인천공항">국내</option>
				  	  				<option value="코리아익스프레스에어">코리아익스프레스에어</option>
				  	  			</select>
				  	  		</td>
				  	  		
				  	  		<td class="tablebt" colspan="2" id="tablegroup6">
				  	  			<input type="submit" value="조회" style="width: 150px; color: white; background-color: #0281ff; border-color: #0281ff;">
				  	  		</td>
				  	  	</tr>
				  	  </table>
				  	  <hr>
				  	  <table class="table table-hover secondtb">
					  	  	<tr class="table-head2">
					  	  		<td>항공사</td>
					  	  		<td>편명</td>
					  	  		<td>예정시간</td>
					  	  		<td>변경시간</td>
					  	  		<td>출발지</td>
					  	  		<td>도착지</td>
					  	  		<td>구분</td>
					  	  		<td>탑승구</td>
					  	  		<td>현황</td>
					  	  	</tr>
					  	  	<tr>
					  	  		<td>대한항공</td>
					  	  		<td>KE1256</td>
					  	  		<td>20:10</td>
					  	  		<td>20:07</td>
					  	  		<td>제주</td>
					  	  		<td>서울/김포</td>
					  	  		<td>국내선</td>
					  	  		<td>8</td>
					  	  		<td id="도착">도착</td>
					  	  	</tr>
					  	  	<tr>
					  	  		<td>대한항공</td>
					  	  		<td>KE1256</td>
					  	  		<td>20:10</td>
					  	  		<td>20:07</td>
					  	  		<td>제주</td>
					  	  		<td>서울/김포</td>
					  	  		<td>국내선</td>
					  	  		<td>8</td>
					  	  		<td> </td>
					  	  	</tr>
				  	  </table>
				  	</div>
			  	  </div>
				  	</div>
			  	  </div>				
				</div>
	      	</div>
      	</div>
    </div>
  </div>
  <!-- MAIN END-->
  
  <!-- START MAIN JS -->
  <script>
  	window.onload = function(){
  		document.getElementById("출발").style.background = "skyblue";
  		document.getElementById("탑승장 입장").style.background = "orange";
  		document.getElementById("도착").style.background = "violet";
  	}
  </script>
  <script>
  	var width = $(window).width();
  </script>
  <!-- END MAIN JS -->
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
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="${pageContext.request.contextPath}/resources/js/clean-blog.min.js"></script>

</body>

</html>
