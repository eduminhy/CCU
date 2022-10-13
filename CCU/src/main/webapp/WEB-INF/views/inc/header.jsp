<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1"
	charset="UTF-8">
<!-- <meta  charset="UTF-8"> -->
<title>Insert title here</title>
<!-- JQ link -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- favicon.ico 오류 지우기 & 웹 브라우저 아이콘 설정 -->
<link rel="shortcut icon" href="#">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/style/headerfooter.css">

<!-- bxslider -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
</style>

<script>
	$(function() {
		//검색창
		$(".search-btn").click(function() {
			if ($("#searchBar").css("display") == "none") {
				$("#searchBar").show();
				$("#searchBar").focus();
			} else {
				$("#searchBar").hide();
			}
		});

		$("#searchBar").keyup(function(key) {
			if (key.keyCode === 13) {
				const search = document.getElementById('searchBar').value;
				if (search !== '') {
					alert("검색하시겠습니까?");
					const link = "/show/title?search=" + search;
					location.href = link;
				} else {
					console.log("beep");
					alert("검색어를 입력하세요");
				}
			}
		});

		
// 		//알림버튼
// 		$(".bell-btn").click(function(){
// 			$("#bellDiv").toggle();
// 		});
		

		//사용자버튼
		$("#toggleDiv").hide();
		$(".user-btn").click(function() {
			$("#toggleDiv").toggle();
// 			var goFocus = function() {
// 				$('#id').focus();
// 			}
// 			var goInfinite = function() {
// 				function(){ goFocus(); }/* 3 Sec interval */
// 			}

		});

	});

	$(function() {
		$("#log").submit(function() {
			if ($("#id").val() == "") {
				alert("아이디를 입력하십시오.");
				return false;
			}
			if ($("#password").val() == "") {
				alert("비밀번호를 입력하십시오.");
				return false;
			}
			return true;
		});
	});

	function logoutFunc() {
		$.ajax({
			url : "/user/logout",
			type : 'get',
			async : false,
		}).done(function() {
			document.location.href = '/user/logout';
		}).fail(function(error) {
			alert(JSON.stringify(error))
		});
	}


*/


</script>
</head>
<body>
	<div id="topMenu">
		<c:if test="${logStatus!='Y' }">
			<a href="/user/login">로그인</a>

			<span>&nbsp;</span>
			<a href="/user/signup">회원가입</a>
			<span>&nbsp;</span>
			<a href="/qna">1:1문의</a>
		</c:if>
		<c:if test="${logStatus=='Y' }">
			<a href="/user/logout">로그아웃</a>
			<span>&nbsp;</span>
			<a href="/mypage/myInfo">mypage</a>
			<span>&nbsp;</span>
			<a href="/qna">1:1문의</a>

		</c:if>
	</div>
	<div class="topUp">
		<div id="top">
			<button class="search-btn" type="submit">
				<i class="fas fa-search" id="searchBtn"></i>
			</button>
			<input type="text" id="searchBar" /> <a href="/" id="mainLink">
				<img src="../img/logo.png" id="logo" /> <span>CCU</span>
			</a>



			

			<!-- 		<button class="bell-btn" type="submit"><i class="fas fa-bell" id="bellBtn"></i></button> -->
			<button class="user-btn" type="submit">
				<i class="fas fa-user-circle" id="userBtn"></i>
			</button>
			<!-- 		<div id="bellDiv"> -->
			<!-- 		</div> -->




			<form method="post" action="/user/loginOk" id="log">
				<div id="toggleDiv">


					<input type="text" placeholder="아이디를 입력해주세요" name="id" id="id">
					<br /> <input type="password" placeholder="비밀번호를 입력해주세요"
						name="password" id="password"> <br /> <br />
					<c:if test="${logStatus!='Y' }">
						<input type="submit" value="로그인" class="loginBtn">
						<br />
					</c:if>
					<c:if test="${logStatus=='Y' }">

						<button onclick="logoutFunc();">로그아웃</button>
						<!-- <a href="/user/logout" class="logoutBtn">로그아웃</a> -->
					</c:if>
				</div>

		
			</form>
			<!-- 
			<input type="text" id="userid" placeholder="ID"/><br/>
			<input type="password" id="userpwd" placeholder="PW"/><br/>
			<input type="submit" value="Login" id="logBtn" width=160px;/>
		 -->

			<!-- 
		<Div>
			<img src="../img/navericon.png" width=40px; height=40px; id="navericon">
			<img src="../img/kakaoicon.png" width=40px; height=40px; id="kakaoicon">
			<img src="../img/googleicon.png" width=40px; height=40px; id="googleicon">
		</Div>

		

		 -->


			<br />
			<div>
				<a href="/user/signup">회원가입</a>
			</div>
			<div>
				<a href="/faq">고객센터</a>
			</div>

 -->




		</div>
	</div>
	</div>

	<div class="topDown">
		<!-- 탭메뉴 -->
		<div id="tapmenu">
			<ul>
				<li><a href="/show/showList?genre=전체">전체</a></li>
			</ul>
			<ul>
				<li><a href="/show/showList?genre=연극">연극</a></li>
			</ul>
			<ul>
				<li><a href="/show/showList?genre=뮤지컬">뮤지컬</a></li>
			</ul>
			<ul>
				<li><a href="/show/showList?genre=클래식&오페라">클래식/오페라</a></li>
			</ul>
			<ul>
				<li><a href="/show/showList?genre=아동">아동</a></li>
			</ul>
			<ul>
				<li><a href="/meeting/mainMeeting">같이갈래요?</a></li>
			</ul>
		</div>
	</div>