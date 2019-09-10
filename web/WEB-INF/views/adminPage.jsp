<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/paging5.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/paging4.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/paging3.css" rel="stylesheet">
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
                        <li><a class="nav-link" href="#" onclick="x()">운항 정보</a></li>
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
                <li class="nav-item">
                    <a class="nav-link-login" href="mypage.do">마이페이지</a>
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
                            <table class="table table-hover" id="example5" style="width: 100%;">
                                <caption>
                                    <div class="d-inline-block member-total">전체 회원수 ${membercount}명</div>
                                    <div class="d-inline-block" style="float: right;">
                                        <div class="input-group">
                                        </div>
                                    </div>
                                </caption>
                                <thead>
                                <tr class="table-header">
                                    <td class="numtd" style="width: 6%;">No.</td>
                                    <td>ID</td>
                                    <td>닉네임</td>
                                    <td>전화번호</td>
                                    <td>가입일자</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${AllUser}" var="AllUser">
                                    <fmt:formatDate value="${AllUser.date_created}" var="date"
                                                    pattern="yyyy-MM-dd"/>
                                    <c:if test="${AllUser.flag==1}">

                                    <tr class="table-child">
                                        <td class="numtd" style="width: 6%;">${AllUser.id}</td>
                                        <td>${AllUser.username}</td>
                                        <td>${AllUser.nickname}</td>
                                        <td>${AllUser.tel}</td>
                                        <td>${date}</td>
                                    </tr>
                                    </c:if>
                                    <c:if test="${AllUser.flag==0}">
                                        <tr class="table-child" style="text-decoration-line: line-through; color: red;">
                                            <td class="numtd" style="width: 6%;">${AllUser.id}</td>
                                            <td>${AllUser.username}</td>
                                            <td>${AllUser.nickname}</td>
                                            <td>${AllUser.tel}</td>
                                            <td>${date}</td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-write" role="tabpanel"
                         aria-labelledby="pills-profile-tab">
                        <div class="mypage-table">
                            <table class="table table-borderless" id="example4" style="width: 100%;">
                                <caption>
                                    <div class="d-inline-block" style="float: right;">
                                        <div class="input-group">
                                            <button class="btn11" name="admin-check" id="admin-check"
                                                    onclick="$('.chk2').toggle();">
                                                <i class="fas fa-check-circle"></i>
                                            </button>
                                        </div>
                                    </div>
                                </caption>
                                <thead>
                                <tr class="table-header">
                                   <td style="background-color: white; width: 1%; margin:0; padding:0; vertical-align: middle"><input type="checkbox" id="product_check_all2"
                                               class="chk2"></td>
                                    <td class="numtd">No.</td>
                                    <td class="titletd">제목</td>
                                    <td>닉네임</td>
                                    <td class="datetd">작성일자</td>
                                    <td>게시판</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${deleteArt}" var="deleteArt">
                                    <fmt:formatDate value="${deleteArt.date_created}" var="date"
                                                    pattern="yyyy-MM-dd"/>
                                    <tr class="table-child">
                                       <td style="width: 1%; margin:0; padding:0; vertical-align: middle;"><input type="checkbox" name="_selected_2"
                                                   class="chk2" value="${deleteArt.article_id}"></td>
                                        <td class="numtd">${deleteArt.article_id}</td>
                                        <td class="titletd"><a href="showfreeboard.do?id=${deleteArt.article_id}">${deleteArt.title}</a>
                                        </td>
                                        <td>${deleteArt.writer}</td>
                                        <td class="datetd">${date}</td>
                                        <td>${deleteArt.boardname}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tr>
                                    <td colspan=7 class="btn-td">
                                        <div
                                                class="p-2 ml-auto writebtn a2">
                                            <button class="gradient-btn1 gradient-btn2 p-2 a22"
                                                    id="restore" type="button">복구
                                            </button>
                                            <button class="gradient-btn1 gradient-btn2 p-2 a22"
                                                    id="delete" type="button">삭제
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-write22" role="tabpanel"
                         aria-labelledby="pills-contact-tab">
                        <div class="mypage-table">
                            <table class="table table-hover" id="example3" style="width: 100%;">
                                <caption>
                                    <div class="d-inline-block" style="float: right;">
                                        <div class="input-group">
                                        </div>
                                    </div>
                                </caption>
                                <thead>
                                    <tr class="table-header">
                                        <td class="numtd3">No.</td>
                                        <td class="titletd3">제목</td>
                                        <td class="datetd3">작성일자</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${AdminArtList}" var="myArtList">
                                    <fmt:formatDate value="${myArtList.date_created}" var="date"
                                                    pattern="yyyy-MM-dd"/>
                                    <tr class="table-child">
                                        <td class="numtd3">${myArtList.article_id}</td>
                                        <td class="titletd3"><a href="showfreeboard.do?id=${myArtList.article_id}">${myArtList.title}</a>
                                        </td>
                                        <td class="datetd3">${date}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        // DataTable initialisation
        $('#example5').DataTable({
            "paging": true,
            "autoWidth": true,
            "columnDefs": [
                {
                    "targets": 4,
                    render: function(data, type, full, meta) {
                        //alert('asd');
                        if (type === 'display' && data == 'Done') {
                            var rowIndex = meta.row+1;
                            return data;
                        } else {
                            return data;
                        }
                    }
                }]
        });
    });
    $(document).ready(function() {
        // DataTable initialisation
        $('#example4').DataTable({
            "paging": true,
            "autoWidth": true,
            "columnDefs": [
                {
                    "targets": 4,
                    render: function(data, type, full, meta) {
                        //alert('asd');
                        if (type === 'display' && data == 'Done') {
                            var rowIndex = meta.row+1;
                            return data;
                        } else {
                            return data;
                        }
                    }
                }]
        });
    });
    $(document).ready(function() {
        // DataTable initialisation
        $('#example3').DataTable({
            "paging": true,
            "autoWidth": true,
            "columnDefs": [
                {
                    "targets": 2,
                    render: function(data, type, full, meta) {
                        //alert('asd');
                        if (type === 'display' && data == 'Done') {
                            var rowIndex = meta.row+1;
                            return data;
                        } else {
                            return data;
                        }
                    }
                }]
        });
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
    $("#product_check_all2").click(function () {
        var chk = $(this).is(":checked");

        if (chk) {
            $('input[name*="_selected_2"]').prop('checked', true);
        } else {
            $('input[name*="_selected_2"]').prop('checked', false);
        }
    });
    $("#delete").click(function () {
        var data = "";
        $('input[name*="_selected_"]').each(function (i) {

            if ($(this).is(":checked")) {
                data = data+$(this).val()+","
                //alert($(this).val())
                //$(location).attr("href", "admindelete.do?id="+$(this).val());
            }
        });
        $(location).attr("href", "admindelete.do?id="+data);
    });
    $("#restore").click(function () {
        var data = "";
        $('input[name*="_selected_"]').each(function (i) {

            if ($(this).is(":checked")) {
                data = data+$(this).val()+","
                //alert($(this).val())
            }
        });
        $(location).attr("href", "adminrestore.do?id="+data);
    });
    function x() {
        var d = new Date();
        var stime = d.getHours();
        if (stime > 23) {
            var dtime = stime + 1 - 24;
        } else
            var dtime = stime + 1
        location.href = "airinfo.do?schStTime=" + stime + "00&schEdTime=" + dtime + "00&schLineType=D&schIOType=O&schAirCode=GMP"
    }
</script>

<%--paging js--%>
<script src="${pageContext.request.contextPath}/resources/js/paging.js"></script>
</html>

