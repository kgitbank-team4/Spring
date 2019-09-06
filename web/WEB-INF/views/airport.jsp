<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link href="${pageContext.request.contextPath}/resources/css/airport.css" rel="stylesheet">

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
               <!--  <li class="nav-item">
                    <a class="nav-link-login" href="mypage.do">마이페이지</a>
                </li> -->
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
	if( ${user.id} != null ) {
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
                                <a class="nav-link active" id="pills-start-tab" data-toggle="pill" href="#pills-start"
                                   role="tab" aria-controls="pills-start" aria-selected="true">출발</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-end-tab" data-toggle="pill" href="#pills-end" role="tab"
                                   aria-controls="pills-end" aria-selected="false">도착</a>
                            </li>
                        </ul>
                        <!-- tabchild -->
                        <div class="tab-content" id="pills-tabContent">


                            <!-- 출발정보 -->
                            <div class="tab-pane fade show active" id="pills-start" role="tabpanel"
                                 aria-labelledby="pills-start-tab">
                                <div class="airport-table">
                                    <form action="">
                                        <table class="table table-bordered firsttb">
                                            <tr>
                                                <td class="table-head" id="tablegroup1">공항</td>
                                                <td class="table-child" id="tablegroup1">
                                                    <select name="schAirCode" id="schAirCode" class="airport-drop">
                                                        <option value="non" selected><span class="caret"></span>
                                                        </option>
                                                        <option value="GMP">서울/김포</option>
                                                        <option value="PUS">부산/김해</option>
                                                        <option value="CJU">제주</option>
                                                        <option value="TAE">대구</option>
                                                        <option value="USN">울산</option>
                                                        <option value="CJJ">청주</option>
                                                        <option value="MWX">무안</option>
                                                        <option value="KWJ">광주</option>
                                                        <option value="RSU">여수</option>
                                                        <option value="KPO">포항</option>
                                                        <option value="YNY">양양</option>
                                                        <option value="HIN">사천</option>
                                                        <option value="KUV">군산</option>
                                                        <option value="WJU">횡성/원주</option>
                                                    </select>
                                                </td>
                                                <td class="table-head" id="tablegroup2">시간</td>
                                                <td class="table-child" id="tablegroup2">
                                                    <select name="schStTime" id="schStTime" class="airport-droptime">
                                                        <option value="0000">00</option>
                                                        <option value="0100">01</option>
                                                        <option value="0200">02</option>
                                                        <option value="0300">03</option>
                                                        <option value="0400">04</option>
                                                        <option value="0500">05</option>
                                                        <option value="0600">06</option>
                                                        <option value="0700">07</option>
                                                        <option value="0800">08</option>
                                                        <option value="0900">09</option>
                                                        <option value="1000">10</option>
                                                        <option value="1100">11</option>
                                                        <option value="1200">12</option>
                                                        <option value="1300">13</option>
                                                        <option value="1400">14</option>
                                                        <option value="1500">15</option>
                                                        <option value="1600">16</option>
                                                        <option value="1700">17</option>
                                                        <option value="1800">18</option>
                                                        <option value="1900">19</option>
                                                        <option value="2000">20</option>
                                                        <option value="2100">21</option>
                                                        <option value="2200">22</option>
                                                        <option value="2300">23</option>
                                                        <option value="2400">24</option>
                                                    </select>
                                                     시~
                                                    <select name="schEdTime" id="schEdTime" class="airport-droptime">
                                                        <option value="0000">00</option>
                                                        <option value="0100">01</option>
                                                        <option value="0200">02</option>
                                                        <option value="0300">03</option>
                                                        <option value="0400">04</option>
                                                        <option value="0500">05</option>
                                                        <option value="0600">06</option>
                                                        <option value="0700">07</option>
                                                        <option value="0800">08</option>
                                                        <option value="0900">09</option>
                                                        <option value="1000">10</option>
                                                        <option value="1100">11</option>
                                                        <option value="1200">12</option>
                                                        <option value="1300">13</option>
                                                        <option value="1400">14</option>
                                                        <option value="1500">15</option>
                                                        <option value="1600">16</option>
                                                        <option value="1700">17</option>
                                                        <option value="1800">18</option>
                                                        <option value="1900">19</option>
                                                        <option value="2000">20</option>
                                                        <option value="2100">21</option>
                                                        <option value="2200">22</option>
                                                        <option value="2300">23</option>
                                                        <option value="2400">24</option>
                                                    </select>
                                                    시
                                                </td>
                                                <td class="table-head" id="tablegroup3">편명</td>
                                                <td class="table-child" id="tablegroup3"><input type="text" name="" class="airport-input"></td>

                                            </tr>
                                            <tr>
                                                <td class="table-head" id="tablegroup4">구분</td>
                                                <td class="table-child" id="tablegroup4">
                                                    <select name="schLineType" id="schLineType" class="airport-drop">
                                                        <option value="non"><span class="caret"></span></option>
                                                        <option value="D">국내선</option>
                                                        <option value="I">국제선</option>
                                                    </select>
                                                </td>
                                                <td class="table-head" id="tablegroup5">항공사</td>
                                                <td class="table-child" id="tablegroup5">
                                                    <select class="airport-drop">
                                                        <option value="non"><span class="caret"></span></option>
                                                    </select>
                                                </td>
                                                <td class="tablebt" colspan="2" id="tablegroup6">
                                                    <input type="hidden" name="schIOType" value="O">
                                                    <input type="submit" value="조회"
                                                           style="width: 150px; color: white; background-color: #0281ff; border-color: #0281ff;">
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
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
                                        <c:forEach items="${AirList}" var="AirList">
                                            <tr>
                                                <td>${AirList.airlineKorean}</td>
                                                <td>${AirList.airFln}</td>
                                                <td>${fn:substring(AirList.std,0 ,2 )}:${fn:substring(AirList.std,2 ,4 )}</td>
                                                <td>${fn:substring(AirList.etd,0 ,2 )}:${fn:substring(AirList.etd,2 ,4 )}</td>
                                                <td>${AirList.boardingKor}</td>
                                                <td>${AirList.arrivedKor}</td>
                                                <td>${AirList.line}</td>
                                                <td>${AirList.gate}</td>
                                                <td id="${fn:substring(AirList.rmkKor,0 ,3 )}">${AirList.rmkKor}</td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </div>
                            </div>


                            <!-- 도착정보 -->
                            <div class="tab-pane fade show" id="pills-end" role="tabpanel"
                                 aria-labelledby="pills-end-tab">
                                <div class="airport-table">
                                    <form action="airinfo.do">
                                        <table class="table table-bordered firsttb">
                                            <tr>
                                                <td class="table-head" id="tablegroup1">공항</td>
                                                <td class="table-child" id="tablegroup1">
                                                    <select name="schAirCode" id="schAirCode2" class="airport-drop">
                                                        <option value="non" selected><span class="caret"></span>
                                                        </option>
                                                        <option value="GMP">서울/김포</option>
                                                        <option value="PUS">부산/김해</option>
                                                        <option value="CJU">제주</option>
                                                        <option value="TAE">대구</option>
                                                        <option value="USN">울산</option>
                                                        <option value="CJJ">청주</option>
                                                        <option value="MWX">무안</option>
                                                        <option value="KWJ">광주</option>
                                                        <option value="RSU">여수</option>
                                                        <option value="KPO">포항</option>
                                                        <option value="YNY">양양</option>
                                                        <option value="HIN">사천</option>
                                                        <option value="KUV">군산</option>
                                                        <option value="WJU">횡성/원주</option>
                                                    </select>
                                                </td>
                                                <td class="table-head" id="tablegroup2">시간</td>
                                                <td class="table-child" id="tablegroup2">
                                                    <select name="schStTime" id="schStTime2" class="airport-droptime">
                                                        <option value="0000">00</option>
                                                        <option value="0100">01</option>
                                                        <option value="0200">02</option>
                                                        <option value="0300">03</option>
                                                        <option value="0400">04</option>
                                                        <option value="0500">05</option>
                                                        <option value="0600">06</option>
                                                        <option value="0700">07</option>
                                                        <option value="0800">08</option>
                                                        <option value="0900">09</option>
                                                        <option value="1000">10</option>
                                                        <option value="1100">11</option>
                                                        <option value="1200">12</option>
                                                        <option value="1300">13</option>
                                                        <option value="1400">14</option>
                                                        <option value="1500">15</option>
                                                        <option value="1600">16</option>
                                                        <option value="1700">17</option>
                                                        <option value="1800">18</option>
                                                        <option value="1900">19</option>
                                                        <option value="2000">20</option>
                                                        <option value="2100">21</option>
                                                        <option value="2200">22</option>
                                                        <option value="2300">23</option>
                                                        <option value="2400">24</option>
                                                    </select>
                                                    시&nbsp;&nbsp;
                                                    <select name="schEdTime" id="schEdTime2" class="airport-droptime">
                                                        <option value="0000">00</option>
                                                        <option value="0100">01</option>
                                                        <option value="0200">02</option>
                                                        <option value="0300">03</option>
                                                        <option value="0400">04</option>
                                                        <option value="0500">05</option>
                                                        <option value="0600">06</option>
                                                        <option value="0700">07</option>
                                                        <option value="0800">08</option>
                                                        <option value="0900">09</option>
                                                        <option value="1000">10</option>
                                                        <option value="1100">11</option>
                                                        <option value="1200">12</option>
                                                        <option value="1300">13</option>
                                                        <option value="1400">14</option>
                                                        <option value="1500">15</option>
                                                        <option value="1600">16</option>
                                                        <option value="1700">17</option>
                                                        <option value="1800">18</option>
                                                        <option value="1900">19</option>
                                                        <option value="2000">20</option>
                                                        <option value="2100">21</option>
                                                        <option value="2200">22</option>
                                                        <option value="2300">23</option>
                                                        <option value="2400">24</option>
                                                    </select>
                                                    시
                                                </td>
                                                <td class="table-head" id="tablegroup3">편명</td>
                                                <td class="table-child" id="tablegroup3"><input type="text" name="" class="airport-input"></td>
                                            </tr>
                                            <tr>
                                                <td class="table-head" id="tablegroup4">구분</td>
                                                <td class="table-child" id="tablegroup4">
                                                    <select name="schLineType" id="schLineType2" class="airport-drop">
                                                        <option value="non"><span class="caret"></span></option>
                                                        <option value="D">국내선</option>
                                                        <option value="I">국제선</option>
                                                    </select>
                                                </td>
                                                <td class="table-head" id="tablegroup5">항공사</td>
                                                <td class="table-child" id="tablegroup5">
                                                    <select class="airport-drop">
                                                        <option value="non"><span class="caret"></span></option>
                                                    </select>
                                                </td>

                                                <td class="tablebt" colspan="2" id="tablegroup6">
                                                    <input type="hidden" name="schIOType" value="I">
                                                    <input type="submit" value="조회"
                                                           style="width: 150px; color: white; background-color: #0281ff; border-color: #0281ff;">
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
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
                                        <c:forEach items="${AirList2}" var="AirList2">
                                            <tr>
                                                <td>${AirList2.airlineKorean}</td>
                                                <td>${AirList2.airFln}</td>
                                                <td>${fn:substring(AirList2.std,0 ,2 )}:${fn:substring(AirList2.std,2 ,4 )}</td>
                                                <td>${fn:substring(AirList2.etd,0 ,2 )}:${fn:substring(AirList2.etd,2 ,4 )}</td>
                                                <td>${AirList2.boardingKor}</td>
                                                <td>${AirList2.arrivedKor}</td>
                                                <td>${AirList2.line}</td>
                                                <td>${AirList2.gate}</td>
                                                <td id="${fn:substring(AirList2.rmkKor,0 ,3 )}">${AirList2.rmkKor}</td>
                                            </tr>
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
</div>
<!-- MAIN END-->

<!-- START MAIN JS -->
<%--<script>
    window.onload = function () {
        document.getElementById("출발").style.background = "skyblue";
        document.getElementById("탑승중").style.background = "orange";
        document.getElementById("도착").style.background = "violet";
    }
</script>--%>
<script>
    $(function () {
        $("#schAirCode").val("${param.schAirCode}").attr("selected", "selected");
        $("#schStTime").val("${param.schStTime}").attr("selected", "selected");
        $("#schEdTime").val("${param.schEdTime}").attr("selected", "selected");
        $("#schLineType").val("${param.schLineType}").attr("selected", "selected");
        $("#schAirCode2").val("${param.schAirCode}").attr("selected", "selected");
        $("#schStTime2").val("${param.schStTime}").attr("selected", "selected");
        $("#schEdTime2").val("${param.schEdTime}").attr("selected", "selected");
        $("#schLineType2").val("${param.schLineType}").attr("selected", "selected");
    })
    var width = $(window).width();
    //alert($("#schLineType").val("${param.schAirCode}").attr("selected"))
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

</body>

</html>
