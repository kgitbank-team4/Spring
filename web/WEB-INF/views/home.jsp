<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.team4.biz.user.dao.UserDAO" %>
<%@ page import="com.team4.biz.user.dao.UserDAOImpl" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.team4.biz.board.service.BoardService" %>
<%@ page import="com.team4.biz.board.service.BoardServiceImpl" %>
<%@ page import="com.team4.biz.board.vo.ArticleVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">

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
                        <li><a class="nav-link" href="freeboard.do?id=101&sort=lately">후기</a></li>
                        <li><a class="nav-link" href="freeboard.do?id=102&sort=lately">사진</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">정보</a>
                    <ul class="dropdown-menu">
                        <li><a class="nav-link" href="#" onclick="x()">운항 정보</a></li>
                        <li><a class="nav-link" href="weatherinfo.do?cityname=seoul">날씨 정보</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="freeboard.do?board_id=103" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">커뮤니티</a>
                    <ul class="dropdown-menu">
                        <li><a class="nav-link" href="freeboard.do?id=103&sort=lately">자유게시판</a></li>
                        <li><a class="nav-link" href="freeboard.do?id=104&sort=lately">Q & A</a></li>
                        <li><a class="nav-link" href="freeboard.do?id=105&sort=lately">공지사항</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                       <a href="mypage.do">마이페이지</a>
                </li>
                <li class="nav-item login login-active">
                    <a class="nav-link-login" data-target="#modal1" data-toggle="modal" >로그인</a>
                </li>
                <li class="nav-item logout login-inactive">
                     <a class="nav-link-login" href="logout.do">로그아웃</a>                   
                </li>
				
            </ul>
        </div>
    </div>
</nav>
<script>
$(document).ready(function(){	
	if(  "${user.id}" != "" ) {
		$("#mainNav .container #navbarResponsive .login").removeClass("login-active");
		$("#mainNav .container #navbarResponsive .logout").removeClass("login-inactive");
		$("#mainNav .container #navbarResponsive .login").addClass("login-inactive");
		$("#mainNav .container #navbarResponsive .logout").addClass("login-active");
	}
});
</script>
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
                    <li role="presentation" class="active tablist1"><a href="#hugi" aria-controls="hugi" role="tab"
                                                                       data-toggle="tab">후기</a></li>
                    <li role="presentation" class="tablist2"><a href="#picture" aria-controls="picture" role="tab"
                                                                data-toggle="tab">사진</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="hugi">
                        <table class="table table-hover tab-table1">
                            <c:set var="cnt" value="1"/>
                            <c:set var="doneLoop" value="false"/>
                            <c:forEach var="ArtList" items="${AllArtList}">
                                <c:if test="${not doneLoop}">
                                    <c:if test="${ArtList.board_id eq 101}">
                                        <tr>
                                            <td style="color: red">${ArtList.category}</td>
                                            <td><a href="showfreeboard.do?id=${ArtList.id}">${ArtList.title}</a></td>
                                            <td>${ArtList.view_cnt}</td>
                                            <c:set var="cnt" value="${cnt+1}"/>
                                        </tr>
                                        <c:if test="${cnt>5}">
                                            <c:set var="doneLoop" value="true"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </table>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="picture">
                    <table class="table table-hover tab-table1">
                    <c:set var="cnt" value="1"/>
                            <c:set var="doneLoop" value="false"/>
                            <c:forEach var="ArtList" items="${AllArtList}">
                                <c:if test="${not doneLoop}">
                                    <c:if test="${ArtList.board_id eq 102}">
                                        <tr>
                                            <td style="color: red">${ArtList.category}</td>
                                            <td><a href="showfreeboard.do?id=${ArtList.id}">${ArtList.title}</a></td>
                                            <td>${ArtList.view_cnt}</td>
                                            <c:set var="cnt" value="${cnt+1}"/>
                                        </tr>
                                        <c:if test="${cnt>5}">
                                            <c:set var="doneLoop" value="true"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 post-tabs" role="navigation">
            <div role="tabpanel">
                <ul class="nav nav-tabs tab2" role="tablist">
                    <li role="presentation" class="active tablist1"><a href="freeboard.do?id=103&sort=lately" aria-controls="free" role="tab"
                                                                       data-toggle="tab">자유게시판</a></li>
                    <li role="presentation" class="tablist2"><a href="#qa" aria-controls="qa" role="tab"
                                                                data-toggle="tab">Q & A</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="free">
                        <table class="table table-hover tab-table1">
                            <c:set var="cnt" value="1"/>
                            <c:set var="doneLoop" value="false"/>
                            <c:forEach var="ArtList2" items="${AllArtList}">
                                <c:if test="${not doneLoop}">
                                    <c:if test="${ArtList2.board_id eq 103}">
                                        <tr>
                                            <td style="color: red">${ArtList2.category}</td>
                                            <td><a href="showfreeboard.do?id=${ArtList2.id}">${ArtList2.title}</a></td>
                                            <td>${ArtList2.view_cnt}</td>
                                            <c:set var="cnt" value="${cnt+1}"/>
                                        </tr>
                                        <c:if test="${cnt>5}">
                                            <c:set var="doneLoop" value="true"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </table>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="qa">
                        <table class="table table-hover tab-table1">
                            <c:set var="cnt" value="1"/>
                            <c:set var="doneLoop" value="false"/>
                            <c:forEach var="ArtList" items="${AllArtList}">
                                <c:if test="${not doneLoop}">
                                    <c:if test="${ArtList.board_id eq 104}">
                                        <tr>
                                            <td style="color: red">${ArtList.category}</td>
                                            <td><a href="showfreeboard.do?id=${ArtList.id}">${ArtList.title}</a></td>
                                            <td>${ArtList.view_cnt}</td>
                                            <c:set var="cnt" value="${cnt+1}"/>
                                        </tr>
                                        <c:if test="${cnt>5}">
                                            <c:set var="doneLoop" value="true"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 post-tabs" role="navigation">
            <div role="tabpanel">
                <ul class="nav nav-tabs tab3" role="tablist">
                    <li role="presentation" class="active tablist1"><a href="#airport" aria-controls="airport"
                                                                       role="tab" data-toggle="tab">운항 정보</a></li>
                    <li role="presentation" class="tablist2"><a href="#weather" aria-controls="weather" role="tab"
                                                                data-toggle="tab">날씨 정보</a></li>

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
                    <li role="presentation" class="active tablist3"><a href="#info" aria-controls="info" role="tab"
                                                                       data-toggle="tab">공지사항</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="info">
                        <table class="table table-hover tab-table1">
                            <c:set var="cnt" value="1"/>
                            <c:set var="doneLoop" value="false"/>
                            <c:forEach var="ArtList" items="${AllArtList}">
                                <c:if test="${not doneLoop}">
                                    <c:if test="${ArtList.board_id eq 105}">
                                        <tr>
                                            <td style="color: red">${ArtList.category}</td>
                                            <td><a href="#">${ArtList.title}</a></td>
                                            <td>${ArtList.view_cnt}</td>
                                            <c:set var="cnt" value="${cnt+1}"/>
                                        </tr>
                                        <c:if test="${cnt>5}">
                                            <c:set var="doneLoop" value="true"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
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
    $(".tab1 li").on("click", function () {
        $(".tab1 li").removeClass("active");
        $(this).addClass("active");
    });
    $(".tab2 li").on("click", function () {
        $(".tab2 li").removeClass("active");
        $(this).addClass("active");
    });
    $(".tab3 li").on("click", function () {
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
                        <li class="footer-contact"><a href="freeboard.do?id=103&sort=lately">자유게시판</a></li>
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
<!-- 아이디 저장 -->
<script>
$(document).ready(function() {
	var userInputId = getCookie("userInputId");
	$("#inputId1").val(userInputId);
	
	if($("#inputId1").val() != ""){
		$("#Saveid").attr("checkd",true); //아이디 저장을 체크상태로 두기
	}
	
	$("#Saveid").change(function() {//체크박스에 변화 발생시
		if($("#Saveid").is(":checked")){//아이디 저장 체크한 상태
			var userInputId = $("#inputId1").val();
			setCookie("userInputId",userInputId, 7); //7일동안 쿠키 저장
		}else{
			deleteCookie("userInputId");
		}
	});
	
	///아이디 저장 체크한 상태에서 id 입력
	$("#inputId1").keyup(function() { //아이디 입력 칸에 아이디 입력할 때
		if($("#Saveid").is(":checked")){//아이디 저장 체크한 상태
			var userInputId = $("#inputId1").val();
			setCookie("userInputId",userInputId, 7);
		}
	});
});

//쿠키 저장
function setCookie(cookieName, value, exdays){
	var exdate = new Date();
	exdate.setDate(exdate.getDate()+exdays);
	var cookieValue = escape(value) + ((exdays==null)? "" : "; expires="+exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue;
	
}

//쿠키삭제
function deleteCookie(cookieName){
	var expireDate = new Date();
	expireDate.setDate(expireDate.getDate() - 1);
	document.cookie = cookieName + "= " + "; expires="+exdate.toGMTString();
}

//쿠키정보 가져오기
function getCookie(cookieName){
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if(start != -1){
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)
			end = cookieData.length;
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}
</script>

<div class="row">
    <div class="modal" id="modal1" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <span>로그인</span>
                    <button class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form name="loginform" class="form-horizontal" action="login.do">
                        <div class="form-group">
                            <label for="inputEmail2" class="col-sm-2 control-label">ID</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="username" id="inputId1" placeholder="ID">

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="password" id="inputPassword3"
                                       placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" id="Saveid"><span class="rememberID"> 아이디 저장하기</span>
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
<script>
    function x() {
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