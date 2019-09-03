<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link href="${pageContext.request.contextPath}/resources/css/customfree.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/showfreeboard.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
</head>

<body>
<%--<c:forEach items="${Content}" var="Content">
	${Content}
</c:forEach>--%>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="index.html">SPRING</a>
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

<!-- 태이블 -->
<div class="container" id="bootstrap-override">
    <div class="row">
        <div class="col-md-10 mx-auto">
            <div class="container">

                <!-- 프리보드 헤더 -->
                <div class="freeboard-header">
                    <h6 style="color: purple; margin-bottom: 15px; font-size: 17px;">${Article.category}</h6>
                    <h3 style="margin-bottom: 15px;">${Article.title}</h3>
                    <fmt:formatDate value="${Article.date_created}" var="date" pattern="yyyy-MM-dd"/>
                    <span class="freeboard-header-items">
							<span class="freeboard-header-id">
								<span class="freeboard-header-2">${Article.writer}</span>
							</span>				
							<span class="freeboard-header-date">
								<span class="freeboard-header-1" style="margin: 0 20px;">${date}</span>
							</span>				
							<span class="freeboard-header-showup">
								<span class="freeboard-header-1">조회 수</span>
								<span class="freeboard-header-2">${Article.view_cnt}</span>
							</span>				
							<span class="freeboard-header-up">
								<span class="freeboard-header-1" style="margin: 0 0 0 20px;">추천 수</span>
								<span class="freeboard-header-2">${Article.up_cnt}</span>
							</span>				
							<span class="icondrop">
							    <ion-icon name="more" data-toggle="tooltip" data-placement="top" title="더보기"></ion-icon>
							  	<ul class="icondrop-menu">
								    <li><a href="#" class="board-up1">추천</a></li>
								    <li><a href="#" data-target="#modal-boarddlt" data-toggle="modal" class="upanddel2" style="display: none">글 삭제</a></li>
								    <li><a href="#" class="upanddel2" style="display: none">글 수정</a></li>
								    <li><a href="#">목록으로</a></li>
							    </ul>
							</span>
						</span>
                </div>

                <!-- 프리보드 내용 -->
                <div class="freeboard-content">
                    <div class="content-con">
                        ${Article.text}
                    </div>
                </div>

                <!-- 프리보드 댓글 -->
                <div class="freeboard-comment-up">
                    <div class="comment-up">
                        <a href="#">
                            <ion-icon class="heart" name="heart" data-toggle="tooltip" data-placement="bottom"
                                      title="추천"></ion-icon>
                        </a>
                        <span class="clip-file">
								<ion-icon class="clip" name="attach"></ion-icon>
								<span class="clip-comment">첨부파일 1개</span>
								<span class="clip-back"><a href="#">목록으로</a></span>
							</span>
                    </div>
                    <br>
                    <div class="comment1">
                        <form action="insertComment.do">
							<span class="comment-insert">
								<table class="table table-borderless">
                                    <input type="hidden" name="writer_id" value="${user.id}"/>
                                    <input type="hidden" name="article_id" value="${Article.id}"/>
									<tr>
										<td class="insert-input1"><textarea class="insertta" name="content"
                                                                            placeholder="내용을 입력해주세요."
                                                                            style="width: 100%; height: 100%; resize: none; "></textarea></td>
										<td class="insert-input2"><input type="submit" value="등록" name=""style="width: 100%; height: 100%; font-weight: bold;"/></td>
									</tr>
								</table>
							</span>
                        </form>
                        <span class="comment-show">
							<h5>${Article.comment_cnt}개의 댓글</h5>
                            <c:forEach var="Comment" items="${Comment}">
                            <fmt:formatDate value="${Comment.date_created}" var="Cdate" pattern="yyyy-MM-dd HH:mm:ss"/>
                                    <div class="show1">
								<div class="show1-nickname">${Comment.writer}</div>
								<div class="show1-comment" id="id${Comment.id}">
                                    <div>${Comment.content}</div>
                                </div>
								<div class="show1-bottom">
									<span style="color: #808080;">${Cdate}</span>
									<span><a href="javascript:void(0);" id="update"
                                             onclick="updateOn(${Comment.id})" style="display: none;" class="upanddel">수정</a></span>
									<span><a href="javascript:void(0);" onclick="aa('${Comment.id}','${Article.id}')" style="display: none;" class="upanddel">삭제</a></span>
								</div>
							</div>
                            <script>
                                     if(${user.id}==${Comment.writer_id}) {
                                         $(".upanddel").attr("style", "display: inline-block;");
                                     }

                            </script>
                            </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<hr>
<script>
    function aa(cid,aid){
        if(confirm('삭제하시겠습니까?')) {
            location.href = "deleteComment.do?id=" + cid + "&article_id=" + aid
        }
    }
    $(function () {
        if(${user.id}==${Article.writer_id}) {
            $(".upanddel2").attr("style", "display: inline-block;");
        }
    });
    function updateOn(id) {
        var text = document.getElementById("id" + id).innerText
        var updatetext = 'updatetext' + id
        //alert()
        document.getElementById("id" + id).innerHTML = "<textarea class='insertta' style='width:100%; height: 60px; resize: none;'>";
        document.getElementById("id" + id).firstChild.setAttribute('id', 'updatetext' + id)
        document.getElementById("updatetext" + id).value = text;
        document.getElementById("update").setAttribute('onclick', 'updateExecute(' + '\"' + updatetext + '\"' + ')')

    }

    function updateExecute(id) {
        var content = document.getElementById(id).value;
        location.href = "updateComment.do?content=" + content + "&id=" + id.substring(10, 12) + "&article_id=" +
        ${Article.id}
    }


</script>
<script>
    $(".icondrop").click(function () {
        $(".icondrop-menu").slideToggle("fast", function () {
            // Animation complete.
        });
    });

    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    });
</script>

<script>
    $(".freeboard-comment-up .comment-up a").click(function () {
        alert("추천하셨습니다.");
    });
    $(".icondrop .icondrop-menu .board-up1").click(function () {
        alert("추천하셨습니다.");
    });
</script>

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
                        <li class="footer-contact"><i class="fa fa-envelope"></i><a href="#">
                            KGITBANK@naver.com</a>
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
                                <input type="text" class="form-control" id="inputEmail3" placeholder="ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword3"
                                       placeholder="Password">
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
<div class="row">
    <div class="modal" id="modal-boarddlt" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <span style="font-weight: 600;">정말 삭제하시겠습니까?</span>
                    <button class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
        					<span class="delete_ok">
        						<span class="okok1"><input type="submit" value="OK"></span>
        						<span class="okcancel1"><button data-dismiss="modal">Cancel</button></span>
        					</span>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Custom scripts for this template -->


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

<!-- Bootstrap core JavaScript -->
<!-- Custom scripts for this template -->
</body>
</html>

</body>

</html>