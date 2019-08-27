<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Spring - Travel Community Site</title>
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/clean-blog.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/header.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/footer.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/weather.css"
	rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
///첫화면 -> 서울 	  
var cityname = "<%=request.getAttribute("cityname")%>";
var apiURI = "http://api.openweathermap.org/data/2.5/forecast?q=" + cityname + "&units=metric&appid=d9723d62421856f0786196815b7b314a";

$.ajax({      
    url: apiURI,	      
    dataType: "json",//밑의 데이터를 사용하는 글자
    type: "GET",
    success: function(city){//성공했을때 호출되는 함수
       console.log(city);
       $("table #city").append(cityname);
              
   	// 오늘 날짜 구하는 코딩
   	<%
   	Calendar today1 = Calendar.getInstance();
   	today1.setTime(new Date());   	
   	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
   	String[] sarray = new String[5];
   	for(int i = 0; i < 5; i++){  	 	
   	 	sarray[i] = (df.format(today1.getTime()));
   	 	today1.add(Calendar.DATE, 1);
   	}
 
   	%>  	
   	var today = "<%=sarray[0] %>";

   		
   	// 내일이후 날짜 구하는 코딩	               	 
   	var twice_day = "<%=sarray[1] %>"; //2일차
   	var third_day = "<%=sarray[2] %>"; //3일차
   	var fourth_day = "<%=sarray[3] %>";//4일차
   	var fifth_day = "<%=sarray[4] %>"; //5일차
	
   	$('#tod').text(today);
   	$('#tom1').text(twice_day);
   	$('#tom2').text(third_day);
   	$('#tom3').text(fourth_day);
   	$('#tom4').text(fifth_day);

            var arr1 = new Array();
            var arr2 = new Array();
            var arr3 = new Array();
            var arr4 = new Array();
            var arr5 = new Array();
            	               
       $.each(city.list, function(key) {
           // api에서 받는 날짜   
           var date = city.list[key].dt_txt.substring(0,10)//날짜에 붙는 숫자에 관여
           // 온도
           var temp=(Math.round(city.list[key].main.temp))+"˚C";
           // 날씨
           var weath = city.list[key].weather[0].description;
           //리얼 시간 표현
           var realTime = city.list[key].dt_txt;
           //습도
           var humid = city.list[key].main.humidity + "%";
           //풍량
           var wind = city.list[key].wind.speed + "m/s";
           //구름
           var cloud = city.list[key].clouds.all + "%";          
           
           var weathst;
           if(weath == "clear sky"){
        	   weathst = "맑음";
           }
           else if(weath == "few clouds" || weath == "scattered clouds" || weath == "broken clouds" ||  weath == "overcast clouds"){
        	   weathst = "구름";
           }
           else if(weath == "shower rain" || weath == "light rain" || weath == "moderate rain" || weath == "Rain"){
        	   weathst = "비";
           }
           else if(weath == "Thunderstorm"){
        	   weathst="천둥/번개";
           }
           else if(weath == "snow"){
        	   weathst="눈";
           }
           else if(weath == "mist"){
        	   weathst="안개";
           }

           ///////////////
           if(date === today) {//오늘 날짜
				arr1.push(realTime);
				if(realTime === arr1[0]){
					$('#todaytb1 #temp').text(temp);
					$('#todaytb1 #status').text(weathst);
					$('#todaytb1 .weather-icon1').attr('id', weathst);
					$('#todaytb2 #wind').text(wind);
					$('#todaytb2 #wet').text(humid);
					$('#todaytb2 #cld').text(cloud);
				}
           	}else if(date === twice_day) {//이틀
          	 	arr2.push(realTime);
				if(realTime === arr2[0]){
					$('#tom1tb1 #temp').text(temp);
					$('#tom1tb1 #status').text(weathst);
					$('#tom1tb1 .weather-icon1').attr('id', weathst);
					$('#tom1tb2 #wind').text(wind);
					$('#tom1tb2 #wet').text(humid);
					$('#tom1tb2 #cld').text(cloud);
					}     
           	}else if(date === third_day) {//3일
          	 	arr3.push(realTime);
				if(realTime === arr3[0]){
					$('#tom2tb1 #temp').text(temp);
					$('#tom2tb1 #status').text(weathst);
					$('#tom2tb1 .weather-icon1').attr('id', weathst);
					$('#tom2tb2 #wind').text(wind);
					$('#tom2tb2 #wet').text(humid);
					$('#tom2tb2 #cld').text(cloud);
				}
               
           	}else if(date === fourth_day){//4일
          	 	arr4.push(realTime);
				if(realTime === arr4[0]){
					$('#tom3tb1 #temp').text(temp);
					$('#tom3tb1 #status').text(weathst);
					$('#tom3tb1 .weather-icon1').attr('id', weathst);
					$('#tom3tb2 #wind').text(wind);
					$('#tom3tb2 #wet').text(humid);
					$('#tom3tb2 #cld').text(cloud);
					}
           
     		}else if(date === fifth_day){//5일 - 끝
  	   			arr5.push(realTime);
				if(realTime === arr5[0]){
				$('#tom4tb1 #temp').text(temp);
				$('#tom4tb1 #status').text(weathst);
				$('#tom4tb1 .weather-icon1').attr('id', weathst);
				$('#tom4tb2 #wind').text(wind);
				$('#tom4tb2 #wet').text(humid);
				$('#tom4tb2 #cld').text(cloud);	    	  
			}
			}

       });
       $('#맑음').append("<img src='${pageContext.request.contextPath}/resources/img/sun.png'>");
       $('#구름').append("<img src='${pageContext.request.contextPath}/resources/img/cloud.png'>");
       $('#비').append("<img src='${pageContext.request.contextPath}/resources/img/rain.png'>");
       $('#천둥/번개').append("<img src='${pageContext.request.contextPath}/resources/img/thunder.png'>");
       $('#눈').append("<img src='${pageContext.request.contextPath}/resources/img/snow.png'>");
       $('#안개').append("<img src='${pageContext.request.contextPath}/resources/img/mist.png'>");
       
    } ////function(success)

 });///ajax

 }); //ready-function

</script>
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="index.html">SPRING</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">이야기</a>
						<ul class="dropdown-menu">
							<li><a class="nav-link" href="#">후기</a></li>
							<li><a class="nav-link" href="#">사진</a></li>
						</ul></li>
					<li class="dropdown"><a href="airport.html"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">정보</a>
						<ul class="dropdown-menu">
							<li><a class="nav-link" href="airport.html">운항 정보</a></li>
							<li><a class="nav-link" href="#">날씨 정보</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">커뮤니티</a>
						<ul class="dropdown-menu">
							<li><a class="nav-link" href="#">자유게시판</a></li>
							<li><a class="nav-link" href="#">Q & A</a></li>
							<li><a class="nav-link" href="#">공지사항</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link-login"
						href="mypage.html">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link-login"
						data-target="#modal1" data-toggle="modal">로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Header -->
	<header class="masthead"
		style="background-image: url('${pageContext.request.contextPath}/resources/img/home-bg.png')">
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
							<form name="weatherform">
								<ul>
									<li style="font-size: 16px;">도시명&nbsp;</li>
									<li><input type="text" id="cityname"
										placeholder="도시명 입력(예:seoul)"
										style="font-size: 15px; height: 35px;"></li>
									<li><input type="button" onclick="javascript:getWeather()"
										value="검색" style="font-size: 16px;" class="weather-searchbt"></li>
									<li><a href=""><i class="fas fa-search"></i></a></li>
								</ul>
							</form>
							<!-- tabparent -->
							<div class="pills-container">
								<ul class="nav nav-pills navpills" id="pills-tab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="pills-today-tab" data-toggle="pill" href="#pills-today"
										role="tab" aria-controls="pills-today" aria-selected="true"><span
											id="tod"></span></a></li>
									<li class="nav-item"><a class="nav-link"
										id="pills-tommorow-tab" data-toggle="pill"
										href="#pills-tommorow1" role="tab"
										aria-controls="pills-tommorow1" aria-selected="false"><span
											id="tom1"></span></a></li>
									<li class="nav-item"><a class="nav-link"
										id="pills-tommorow2-tab" data-toggle="pill"
										href="#pills-tommorow2" role="tab"
										aria-controls="pills-tommorow2" aria-selected="false"><span
											id="tom2"></span></a></li>
									<li class="nav-item"><a class="nav-link"
										id="pills-tommorow3-tab" data-toggle="pill"
										href="#pills-tommorow3" role="tab"
										aria-controls="pills-tommorow3" aria-selected="false"><span
											id="tom3"></span></a></li>
									<li class="nav-item"><a class="nav-link"
										id="pills-tommorow4-tab" data-toggle="pill"
										href="#pills-tommorow4" role="tab"
										aria-controls="pills-tommorow4" aria-selected="false"><span
											id="tom4"></span></a></li>
								</ul>

								<!-- tabchild -->
								<div class="tab-content" id="pills-tabContent">
									<!-- 오늘날씨 -->
									<div class="tab-pane fade show active" id="pills-today"
										role="tabpanel" aria-labelledby="pills-today-tab">
										<div class="weather-table">
											<table class="table table-borderless  weathertb1"
												id="todaytb1" border=1>
												<tr>
													<td rowspan="3" class="weather-icon1"></td>
													<td id="temp"></td>
												</tr>
												<tr>
													<td id="status"></td>
												</tr>
												<tr>
													<td id="city"></td>
												</tr>
											</table>
											<table class="table table-borderless weatherbt2"
												id="todaytb2">
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/water.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
												</tr>
												<tr class="table-bottom1">
													<td id="wind"></td>
													<td id="wet"></td>
													<td id="cld"></td>
												</tr>
											</table>
										</div>
									</div>
									<!-- 내일날씨 -->
									<div class="tab-pane fade show" id="pills-tommorow1"
										role="tabpanel" aria-labelledby="pills-tommorow1-tab">
										<div class="weather-table">
											<table class="table table-borderless  weathertb1"
												id="tom1tb1">
												<tr>
													<td rowspan="3" class="weather-icon1"></td>
													<td id="temp"></td>
												</tr>
												<tr>
													<td id="status"></td>
												</tr>
												<tr>
													<td id="city"></td>
												</tr>
											</table>
											<table class="table table-borderless weatherbt2" id="tom1tb2">
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/water.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
												</tr>
												<tr class="table-bottom1">
													<td id="wind"></td>
													<td id="wet"></td>
													<td id="cld"></td>
												</tr>
											</table>
										</div>
									</div>
									<!-- 내일모레날씨 -->
									<div class="tab-pane fade show" id="pills-tommorow2"
										role="tabpanel" aria-labelledby="pills-tommorow2-tab">
										<div class="weather-table">
											<table class="table table-borderless  weathertb1"
												id="tom2tb1">
												<tr>
													<td rowspan="3" class="weather-icon1"></td>
													<td id="temp"></td>
												</tr>
												<tr>
													<td id="status"></td>
												</tr>
												<tr>
													<td id="city"></td>
												</tr>
											</table>
											<table class="table table-borderless weatherbt2" id="tom2tb2">
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/water.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
												</tr>
												<tr class="table-bottom1">
													<td id="wind"></td>
													<td id="wet"></td>
													<td id="cld"></td>
												</tr>
											</table>
										</div>
									</div>
									<!-- 글피날씨 -->
									<div class="tab-pane fade show" id="pills-tommorow3"
										role="tabpanel" aria-labelledby="pills-tommorow3-tab">
										<div class="weather-table">
											<table class="table table-borderless  weathertb1"
												id="tom3tb1">
												<tr>
													<td rowspan="3" class="weather-icon1"></td>
													<td id="temp"></td>
												</tr>
												<tr>
													<td id="status"></td>
												</tr>
												<tr>
													<td id="city"></td>
												</tr>
											</table>
											<table class="table table-borderless weatherbt2" id="tom3tb2">
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/water.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
												</tr>
												<tr class="table-bottom1">
													<td id="wind"></td>
													<td id="wet"></td>
													<td id="cld"></td>
												</tr>
											</table>
										</div>
									</div>
									<!-- 그글피날씨 -->
									<div class="tab-pane fade show" id="pills-tommorow4"
										role="tabpanel" aria-labelledby="pills-tommorow4-tab">
										<div class="weather-table">
											<table class="table table-borderless  weathertb1"
												id="tom4tb1">
												<tr>
													<td rowspan="3" class="weather-icon1"></td>
													<td id="temp"></td>
												</tr>
												<tr>
													<td id="status"></td>
												</tr>
												<tr>
													<td id="city"></td>
												</tr>
											</table>
											<table class="table table-borderless weatherbt2" id="tom4tb2">
												<tr>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wind.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/water.png"></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/img/wet.png"></td>
												</tr>
												<tr class="table-bottom1">
													<td id="wind"></td>
													<td id="wet"></td>
													<td id="cld"></td>
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

function citycheck(){
	var cityname = $("#cityname").val();
	if(cityname == ''){
		alert('도시이름을 입력해주세요.');
		return false;
	}
	return true;
}

function getWeather(){
	if(citycheck()){
		var cityname = $("#cityname").val();	
		location.href = "weatherinfo.do?cityname=" + cityname;
	}
}

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
							<li class="footer-contact"><i class="fa fa-home"></i>서울시 종로구
								KGITBANK</li>
							<li class="footer-contact"><i class="fa fa-envelope"></i><a
								href="#"> KGITBANK@naver.com</a></li>
							<li class="footer-contact"><i class="fa fa-phone"></i>
								010-456-7890</li>
							<li class="footer-contact"><i class="fa fa-globe"></i><a
								href="#" target="_blank"> www.google.com</a></li>
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
							<li class="list-inline-item"><a href="#"> <span
									class="fa-stack fa-lg"> <i
										class="fas fa-circle fa-stack-2x"></i> <i
										class="fab fa-twitter fa-stack-1x fa-inverse"></i>
								</span>
							</a></li>
							<li class="list-inline-item"><a href="#"> <span
									class="fa-stack fa-lg"> <i
										class="fas fa-circle fa-stack-2x"></i> <i
										class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
								</span>
							</a></li>
							<li class="list-inline-item"><a href="#"> <span
									class="fa-stack fa-lg"> <i
										class="fas fa-circle fa-stack-2x"></i> <i
										class="fab fa-github fa-stack-1x fa-inverse"></i>
								</span>
							</a></li>
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
						Copyright © 2014. All Rights Reserved.Design and Developed by <a
							href="#">kgitbank508</a>
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
			</div>
			<!--/.row -->
		</div>
		<!-- /.container -->
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
									<input type="text" class="form-control" id="loginID"
										placeholder="ID">
								</div>
							</div>
							<div class="form-group">
								<label for="loginPW" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="loginPW"
										placeholder="Password">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox" id="saveID"><span
											class="rememberID"> 아이디 저장하기</span>
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
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script
		src="${pageContext.request.contextPath}/resources/js/clean-blog.min.js"></script>

</body>

</html>
