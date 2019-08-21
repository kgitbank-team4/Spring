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
  <div class="container nav-tabcontain">
    <div class="row post-tab11">
      <div class="col-md-6 post-tabs" role="navigation">
	    <div role="tabpanel">
		  <ul class="nav nav-tabs tab1" role="tablist">
		    <li role="presentation" class="active tablist1"><a href="#hugi" aria-controls="hugi" role="tab" data-toggle="tab">후기</a></li>
		    <li role="presentation" class="tablist2"><a href="#picture" aria-controls="picture" role="tab" data-toggle="tab">사진</a></li>
		  </ul>
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="hugi">
		    	<table class="table table-hover tab-table1">
		    		<tr>	    			
		    			<td style="color: red">아시아</td>
		    			<td><a href="#">오키나와 다녀왔습니다</a></td>
		    			<td>1</td> 
		    		</tr>
		    		<tr>  			
		    			<td style="color: red">유럽</td>
		    			<td><a href="#">유럽 다녀왔습니다</a></td>
		    			<td>1</td>   			
		    		</tr>
		    		<tr>  			
		    			<td style="color: red">아시아</td>
		    			<td><a href="#">인천 다녀왔습니다</a></td>
		    			<td>1</td>   			
		    		</tr>
		    	</table>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="picture">사진</div>
		  </div>
		</div>       
      </div>
      <div class="col-md-6 post-tabs" role="navigation">
	    <div role="tabpanel">
		  <ul class="nav nav-tabs tab2" role="tablist">
		    <li role="presentation" class="active tablist1"><a href="#free" aria-controls="free" role="tab" data-toggle="tab">자유게시판</a></li>
		    <li role="presentation" class="tablist2"><a href="#qa" aria-controls="qa" role="tab" data-toggle="tab">Q & A</a></li>
		  </ul>
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="free">
		    	<table class="table table-hover tab-table1">
		    		<tr>	    			
		    			<td style="color: red">아시</td>
		    			<td><a href="#">오키나와 다녀왔습니다</a></td>
		    			<td>1</td> 
		    		</tr>
		    		<tr>  			
		    			<td style="color: red">유럽</td>
		    			<td><a href="#">유럽 다녀왔습니다</a></td>
		    			<td>1</td>   			
		    		</tr>
		    		<tr>  			
		    			<td style="color: red">아시아</td>
		    			<td><a href="#">인천 다녀왔습니다</a></td>
		    			<td>1</td>   			
		    		</tr>
		    	</table>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="qa">qa</div>
		  </div>
		</div>       
      </div>
      <div class="col-md-6 post-tabs" role="navigation">
	    <div role="tabpanel">
		  <ul class="nav nav-tabs tab3" role="tablist">
		    <li role="presentation" class="active tablist1"><a href="#airport" aria-controls="airport" role="tab" data-toggle="tab">운항 정보</a></li>
		    <li role="presentation" class="tablist2"><a href="#weather" aria-controls="weather" role="tab" data-toggle="tab">날씨 정보</a></li>
		    
		  </ul>
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="airport">
		    	<table class="table table-hover tab-table1">
		    		<tr>	    			
		    			<td style="color: red">아시</td>
		    			<td><a href="#">오키나와 다녀왔습니다</a></td>
		    			<td>1</td> 
		    		</tr>
		    		<tr>  			
		    			<td style="color: red">유럽</td>
		    			<td><a href="#">유럽 다녀왔습니다</a></td>
		    			<td>1</td>   			
		    		</tr>
		    		<tr>  			
		    			<td style="color: red">아시아</td>
		    			<td><a href="#">인천 다녀왔습니다</a></td>
		    			<td>1</td>   			
		    		</tr>
		    	</table>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="weather">weather</div>		    
		  </div>
		</div>       
      </div>
		  <div class="col-md-6 post-tabs" role="navigation">
	    <div role="tabpanel">
		  <ul class="nav nav-tabs tab4" role="tablist">
			<li role="presentation" class="active tablist3"><a href="#info" aria-controls="info" role="tab" data-toggle="tab">공지사항</a></li>		    
		  </ul>
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="info">
		    	<table class="table table-hover tab-table1">
		    		<tr>	    			
		    			<td style="color: red">아시</td>
		    			<td><a href="#">오키나와 다녀왔습니다</a></td>
		    			<td>1</td> 
		    		</tr>
		    		<tr>  			
		    			<td style="color: red">유럽</td>
		    			<td><a href="#">유럽 다녀왔습니다</a></td>
		    			<td>1</td>   			
		    		</tr>
		    		<tr>  			
		    			<td style="color: red">아시아</td>
		    			<td><a href="#">인천 다녀왔습니다</a></td>
		    			<td>1</td>   			
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
  
  <!-- Main Content js -->
  <script>
  	$(".tab1 li").on("click", function(){
  		$(".tab1 li").removeClass("active");
  		$(this).addClass("active");
  	});
  	$(".tab2 li").on("click", function(){
  		$(".tab2 li").removeClass("active");
  		$(this).addClass("active");
  	});
  	$(".tab3 li").on("click", function(){
  		$(".tab3 li").removeClass("active");
  		$(this).addClass("active");
  	});
  </script>
  
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
