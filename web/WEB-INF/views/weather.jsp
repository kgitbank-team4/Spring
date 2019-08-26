
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
  <link href="${pageContext.request.contextPath}/resources/css/weather.css" rel="stylesheet">
  
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
          	  <a href="airport.html" class="dropdown-toggle" data-toggle="dropdown" role="button"
          	  	  aria-haspopup="true" aria-expanded="false">정보</a>
          	  <ul class="dropdown-menu">
          		  <li><a class="nav-link" href="airport.html">운항 정보</a></li>
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
        <div class="weather-container">
			<h3>날씨정보</h3>
			<div id="well" class="well-sm">
			  <form action="#">
				<ul>
					<li style="font-size: 16px;">도시명&nbsp;</li>
					<li><input type="text" name="" placeholder="도시명을 입력해주세요." style="font-size: 15px; height:35px;"></li>
					<li><input type="submit" value="검색" style="font-size: 16px;" class="weather-searchbt"></li>
					<li><a href=""><i class="fas fa-search"></i></a></li>
				</ul>
			  </form>
			  <!-- tabparent -->
			  <div class="pills-container">
				  <ul class="nav nav-pills navpills" id="pills-tab" role="tablist">
					  <li class="nav-item">
					    <a class="nav-link active" id="pills-today-tab" data-toggle="pill" href="#pills-today" role="tab" aria-controls="pills-today" aria-selected="true">오늘</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" id="pills-tommorow-tab" data-toggle="pill" href="#pills-tommorow1" role="tab" aria-controls="pills-tommorow1" aria-selected="false">내일</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" id="pills-tommorow2-tab" data-toggle="pill" href="#pills-tommorow2" role="tab" aria-controls="pills-tommorow2" aria-selected="false">내일모레</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" id="pills-tommorow3-tab" data-toggle="pill" href="#pills-tommorow3" role="tab" aria-controls="pills-tommorow3" aria-selected="false">글피</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" id="pills-tommorow4-tab" data-toggle="pill" href="#pills-tommorow4" role="tab" aria-controls="pills-tommorow4" aria-selected="false">그글피</a>
					  </li>
				  </ul>
				  
				  <!-- tabchild -->
				  <div class="tab-content" id="pills-tabContent">	
				  			  				  				  
				  	  <!-- 오늘날씨 -->
					  <div class="tab-pane fade show active" id="pills-today" role="tabpanel" aria-labelledby="pills-today-tab">
					  	<div class="weather-table">
					  		<table class="table table-borderless  weathertb1">
					  			<tr>
					  				<td rowspan="3" class="weather-icon1 " id="맑음"></td>
					  				<td >5도</td>
					  			</tr>
					  			<tr>
					  				<td>맑음</td>
					  			</tr>
					  			<tr>
					  				<td>Seoul,KO</td>
					  			</tr>
					  		</table>
					  		<table class="table table-borderless weatherbt2">
					  			<tr>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/water.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
					  			</tr>
					  			<tr class="table-bottom1">
					  				<td>1.5m/s</td>
					  				<td>80%</td>
					  				<td>40%</td>
					  			</tr>
					  		</table>
					  	</div>
					  </div>
				  	  <!-- 내일날씨 -->
					  <div class="tab-pane fade show" id="pills-tommorow1" role="tabpanel" aria-labelledby="pills-tommorow1-tab">
					  	<div class="weather-table">
					  		<table class="table table-borderless  weathertb1">
					  			<tr>
					  				<td rowspan="3" class="weather-icon1" id="구름"></td>
					  				<td >5도</td>
					  			</tr>
					  			<tr>
					  				<td>구름</td>
					  			</tr>
					  			<tr>
					  				<td>Seoul,KO</td>
					  			</tr>
					  		</table>
					  		<table class="table table-borderless weatherbt2">
					  			<tr>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/water.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
					  			</tr>
					  			<tr class="table-bottom1">
					  				<td>1.5m/s</td>
					  				<td>80%</td>
					  				<td>40%</td>
					  			</tr>
					  		</table>
					  	</div>
					  </div>
				  	  <!-- 내일모레날씨 -->
					  <div class="tab-pane fade show" id="pills-tommorow2" role="tabpanel" aria-labelledby="pills-tommorow2-tab">
					  	<div class="weather-table">
					  		<table class="table table-borderless  weathertb1">
					  			<tr>
					  				<td rowspan="3" class="weather-icon1" id="비"></td>
					  				<td >5도</td>
					  			</tr>
					  			<tr>
					  				<td>비</td>
					  			</tr>
					  			<tr>
					  				<td>Seoul,KO</td>
					  			</tr>
					  		</table>
					  		<table class="table table-borderless weatherbt2">
					  			<tr>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/water.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
					  			</tr>
					  			<tr class="table-bottom1">
					  				<td>1.5m/s</td>
					  				<td>80%</td>
					  				<td>40%</td>
					  			</tr>
					  		</table>
					  	</div>
					  </div>
				  	  <!-- 글피날씨 -->
					  <div class="tab-pane fade show" id="pills-tommorow3" role="tabpanel" aria-labelledby="pills-tommorow3-tab">
					  	<div class="weather-table">
					  		<table class="table table-borderless  weathertb1">
					  			<tr>
					  				<td rowspan="3" class="weather-icon1" id="비"></td>
					  				<td >5도</td>
					  			</tr>
					  			<tr>
					  				<td>비</td>
					  			</tr>
					  			<tr>
					  				<td>Seoul,KO</td>
					  			</tr>
					  		</table>
					  		<table class="table table-borderless weatherbt2">
					  			<tr>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/water.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
					  			</tr>
					  			<tr class="table-bottom1">
					  				<td>1.5m/s</td>
					  				<td>80%</td>
					  				<td>40%</td>
					  			</tr>
					  		</table>
					  	</div>
					  </div>
				  	  <!-- 그글피날씨 -->
					  <div class="tab-pane fade show" id="pills-tommorow4" role="tabpanel" aria-labelledby="pills-tommorow4-tab">
					  	<div class="weather-table">
					  		<table class="table table-borderless  weathertb1">
					  			<tr>
					  				<td rowspan="3" class="weather-icon1" id="맑음"></td>
					  				<td >5도</td>
					  			</tr>
					  			<tr>
					  				<td>비</td>
					  			</tr>
					  			<tr>
					  				<td>Seoul,KO</td>
					  			</tr>
					  		</table>
					  		<table class="table table-borderless weatherbt2">
					  			<tr>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/water.png"></td>
					  				<td><img src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
					  			</tr>
					  			<tr class="table-bottom1">
					  				<td>1.5m/s</td>
					  				<td>80%</td>
					  				<td>40%</td>
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
</div>
  <!-- MAIN END-->
  
  <!-- START MAIN JS -->
  <script>
  	window.onload = function(){
  		document.getElementById("맑음").innerHTML ="<img src='${pageContext.request.contextPath}/resources/img/sun.png'>";
  		document.getElementById("구름").innerHTML = "<img src='${pageContext.request.contextPath}/resources/img/cloud.png'>";
  		document.getElementById("비").innerHTML = "<img src='${pageContext.request.contextPath}/resources/img/rain.png'>";
  	}
  </script>
  <script>
  	var width = $(window).width();
  </script>
  <!-- END MAIN JS -->
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
