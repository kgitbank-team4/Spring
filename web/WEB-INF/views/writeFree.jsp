<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자유게시판</title>

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>


    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/clean-blog.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/customwriteReview.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/selectbox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/gradientBtn.css">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <!-- summernote editor -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <link href="${pageContext.request.contextPath}/resources/summernoteeditor/plugins/summernote-bs4.css"
          rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/summernoteeditor/plugins/summernote-bs4.js"></script>
    <!-- summer note korean language pack -->
    <script src="${pageContext.request.contextPath}/resources/summernoteeditor/lang/summernote-ko-KR.js"></script>
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
                        <li><a class="nav-link" href="freeboard.do?id=101&sort=lately">후기</a></li>
                        <li><a class="nav-link" href="freeboard.do?id=102&sort=lately">사진</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">정보</a>
                    <ul class="dropdown-menu">
                        <li><a class="nav-link" href="#" onclick="x1()">운항 정보</a></li>
                        <li><a class="nav-link" href="weatherinfo.do?cityname=seoul">날씨 정보</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">커뮤니티</a>
                    <ul class="dropdown-menu">
                        <li><a class="nav-link" href="freeboard.do?id=103&sort=lately">자유게시판</a></li>
                        <li><a class="nav-link" href="freeboard.do?id=104&sort=lately">Q & A</a></li>
                        <li><a class="nav-link" href="freeboard.do?id=105&sort=lately">공지사항</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="mypage.do" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">마이페이지</a>
                </li>
                <li class="nav-item logout login-inactive">
                    <a class="nav-link-login" href="javascript:void(0);" onclick="location.replace('logout.do')">로그아웃</a>
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

<!-- 글쓰기 -->
<div class="container" id="bootstrap-override3">
    <div class="row">
        <div class="col">
            <div class="container">
                <h3 id="subject">자유게시판 - 글쓰기</h3>
                <hr>
                <form name="freeform" action="writeboard.do">
                    <div id="well">
                        <div class="content-box1">
                            <div class="content1">
                                <select name="category" id="category">
                                    <option value="가입인사">가입인사</option>
                                    <option value="잡담">잡담</option>
                                </select>
                            </div>
                            <div class="content1">
                                <input type="text" class="form-control" name="title" id="title"
                                       placeholder="제목을 입력하세요.">
                            </div>
                            <div class="content2">
                                <input type="text" class="form-control" name="writer"
                                       id="writer" value="${user.nickname}" readonly="readonly">
                            </div>
                        </div>
                        <div class="container">
                            <iframe src="iframe.do" id="editor_iframe"
                                    name="editor_iframe" width="100%" height="655" title="자유게시판글쓰기"
                                    frameborder="0" overflow="hidden"></iframe>
                        </div>
                    </div>
                    <div class="d-flex justify-content-around bnt11">
                        <button id="edit" class="btn btn-primary gradient-btn1 gradient-btn2 p-2"
                                type="button" onclick="editor_iframe.edit('${board_id}')">목록
                        </button>
                        <button id="save" class="btn btn-primary gradient-btn1 gradient-btn2 p-2"
                                type="button" onclick="editor_iframe.save('writeboard.do','${Article.id}','${board_id}')">저장
                        </button>
                        <button id="update" class="btn btn-primary gradient-btn1 gradient-btn2 p-2"
                                type="button" onclick="editor_iframe.save('updateboard.do','${Article.id}','${Article.board_id}')" style="display: none">수정
                        </button>
                        <!-- 						 <input type="submit" id="save" class="gradient-btn1 gradient-btn2 p-2"
                                                     value="저장">  -->
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<br>
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
                                <li class="footer-contact"><a href="freeboard.do?id=105&sort=lately">공지사항</a></li>
                                <li class="footer-contact"><a href="freeboard.do?id=103&sort=lately">자유게시판</a></li>
                                <li class="footer-contact"><a href="freeboard.do?id=104&sort=lately">Q & A</a></li>
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
                                <li><a href="home.do" class="active">Home</a></li>
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

<!-- 수정js -->
<script>
    $(function () {
        var clic = $("ul > li");
        clic.find("a").click(function () {
            click.removeClass("active");
            $(this).addClass("active").css("text-decoration", "underline");
        });
    });
</script>
<script>
    window.onload = function () {
        if ('${Article.id}' != '') {
            //sessionStorage.setItem(['tt'],'<%--${Article.text}--%>')
            //var text = sessionStorage.getItem('tt')
            $("#title").val('${Article.title}')
            $("#subject").text("글 수정하기")
            var text = '${Article.text}'
            document.getElementById('editor_iframe').contentWindow.imp(text)
            $("#save").css('display','none')
            $("#update").css('display','inline-block')
            $("#category").val('${Article.category}').selected()
            //var text = <%--${Article.text}--%>
            /*var frame = $("#editor_iframe").contents()
            var text = "sadsds"
            var iframe = frame.find("#summernote").summernote('code',text)*/
            //document.getElementById('editor_iframe').contentWindow.document.getElementById('summernote').innerHTML='맞아?'
        }
    }

</script>
  <!-- 수정js -->
  <script>
    function x1() {
        var d = new Date();
        var stime = d.getHours();
        if(stime>23){
            var dtime = stime+1-24;
        }
        else
            var dtime = stime+1
        location.href="airinfo.do?schStTime="+stime+"00&schEdTime="+dtime+"00&schLineType=D&schIOType=O&schAirCode=GMP"
    }
  </script>

</body>
</html>