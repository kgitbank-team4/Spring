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
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
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
	href="${pageContext.request.contextPath}/resources/css/regmember.css"
	rel="stylesheet">

<script>
window.onload = function(){
	engAndNumberFunc(document.getElementById("userID")); //영어&숫자 
	onlyNumberFunc(document.getElementById("userTEL")); //숫자만 입력
}

function engAndNumberFunc(t){
	var regexp = /[^a-z0-9]/gi;
	t.onkeyup = function(e){
		var v = this.value;
		this.value = v.replace(regexp,'');
	}
}
	
function onlyNumberFunc(t){
		var regexp = /[^0-9]/gi;
  		t.onkeyup = function(e){
    	var v = this.value;
    	this.value = v.replace(regexp,'');
	}
}
</script>
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="home.do">SPRING</a>
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
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">정보</a>
						<ul class="dropdown-menu">
							<li><a class="nav-link" href="#">운항 정보</a></li>
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
						href="mypage.do">마이페이지</a></li>
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
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<section class="xm">
					<div class="border1">
						<h4>회원가입</h4>
						<br>
						<form name="form1" action="signup.do">
							<!-- <div class="form-group"> -->
							<table>							
								 <tr>
									<td>
										<div class="form-group">
											<em style="color: red">*</em>
											<h6>아이디</h6>
										</div>
									</td>
								</tr> 
								<tr>
									<td>
									<input type="text" class="form-control" id="userID" name="username" placeholder="영문,숫자 12글자이하로 입력하세요"></td>
									<td id="checkbox1"><input type="button" onclick="idCheck()" value="중복체크" id="checkbtn"></td>
								<tr>
									<td><span id="idresult"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group">
											<em style="color: red">*</em>
											<h6>비밀번호</h6>
										</div>
									</td>
								<tr>
									<td><input type="password" class="form-control" id="userPW" name="password"></td>
								</tr>
								<tr>
									<td>
										<div class="form-group">
											<em style="color: red">*</em>
											<h6>비밀번호 확인</h6>
										</div>
									</td>
								</tr>
								<tr>
									<td><input type="password" class="form-control" id="userPWCK"></td>
								</tr>
								<tr>
									<td>
										<div class="form-group">
											<em style="color: red">*</em>
											<h6>닉네임</h6>
										</div>
									</td>
								</tr>
								<tr>
									<td><input type="text" class="form-control" id="userNICK" name="nickname"></td>
									<td id="checkbox1"><input type="button" onclick="nicknameCheck()" value="중복체크" id="checkbtn"></td>
								</tr>
								<tr>
									<td><span id="nameresult"></span></td>
								</tr>
								<tr>
									<td>
										<div class="form-group">
											<h6>전화번호</h6>
										</div>
									</td>
								<tr>
									<td><input type="text" class="form-control" id="userTEL" name="tel" placeholder="숫자만 입력하세요(예:01012345678)"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<div class="form-group">
											<input type="checkbox" name="agree" id="agree_id" value='agree'> 
											<em style="color: red">*</em>
											<h6>개인정보수집 동의(필수)</h6>
										</div>
								<tr>
									<td colspan="2">
										<div class="form-btn" style="text-align: right">
											<button type="button" class="btn btn-default" onclick="javascript:join()">회원가입</button>
											<a href="home.do">취소</a>
										</div>
									</td>
								</tr>
							</table>
						</form>
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
						<span>Login</span>
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" action="login.do">
							<div class="form-group">
								<label for="loginID" class="col-sm-2 control-label">ID</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputId1"
										placeholder="ID" name="username">
								</div>
							</div>
							<div class="form-group">
								<label for="loginPW" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="loginPW"
										placeholder="Password" name="password">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox" id="Saveid"><span
											class="rememberID"> 아이디 저장하기</span>
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
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script
		src="${pageContext.request.contextPath}/resources/js/clean-blog.min.js"></script>

</body>
<script>
var result1;
var result2;
function check(){
	var id = document.getElementById("userID").value;
	var pw = document.getElementById("userPW").value;
	var pwck = document.getElementById("userPWCK").value;
	var nick = document.getElementById("userNICK").value;
	var tel = document.getElementById("userTEL").value;
	var agree = document.getElementById("agree_id").checked;
	var innertext1 = document.getElementById("idresult").innerHTML;
	var innertext2 = document.getElementById("nameresult").innerHTML;
	
	if(id == ''){
		alert('아이디를 입력하세요.');
		document.getElementById("userID").focus();
		return false;
	}
	
	if(pw == ''){
		alert('비밀번호를 입력하세요.');
		document.getElementById("userPW").focus();
		return false;
	}else if(pw != pwck){
		alert('비밀번호를 확인해주세요.');
		document.getElementById("userPWCK").focus();
		return false;
	}
	
	if(nick == ''){
		alert('닉네임을 입력하세요.');
		document.getElementById("userNICK").focus();
		return false;
	}
	
	if(tel == ''){
		alert('전화번호를 입력하세요.');
		document.getElementById("userTEL").focus();
		return false;
	}
	
	if(!agree){
		alert('개인정보수집에 동의해주세요.');
		return false;
	}
	
	if(innertext1 == "" || result1 == 0){
		alert("id 중복체크를 해주세요!");
		return false;
	}
	if(innertext2 == "" || result2 == 0){
		alert("닉네임 중복체크를 해주세요!");
		return false;
	}
	
	return true;
}

function join(){
	if(check())
		document.form1.submit();
}

//id 중복체크
function idCheck(){
	var idStr = $("#userID").val();
	$.ajax({
		url : "idcheck.do?username=" + idStr,
		success : function(data){
				if (data == "success"){
					$("#idresult").text("사용가능한 아이디입니다.");
					result1 = 1;
				} else if(data == "fail"){
					$("#idresult").text("중복된 아이디입니다.");
					$("#userID").val("");
					result1 = 0;	
				}				
		}		
		});
		
	}

//닉네임 중복체크
function nicknameCheck(){
	var nickStr = $("#userNICK").val();
	$.ajax({
		url : "nicknamecheck.do?nickname=" + nickStr,
		success : function(data){
				if (data == "success"){
					$("#nameresult").text("사용가능한 닉네임입니다.");
					result2 = 1;
				} else if(data == "fail"){
					$("#nameresult").text("중복된 닉네임입니다.");
					$("#userNICK").val("");
					result2 = 0;	
				}				
		}		
		});
}

</script>
</html>
