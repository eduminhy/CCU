<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.asdfqwer {
	position: relative;
}
</style>
<script>
	//토글 로그인
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
			if (key.keyCode == 13) {
				if ($("#searchBar").val() != '') {
					alert("검색할까요?");
				} else {
					alert("검색어를 입력하세요");
				}
			}
		});
		
		//알림버튼
		$(".bell-btn").click(function(){
			$("#bellDiv").toggle();
		});
		
		//사용자버튼
		$(".user-btn").click(function() {
			$("#toggleDiv").toggle();
		});
		
	});
</script>

<script>
/*
Kakao.init('f2b41f54011f5a39affde978dd2c424f'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
	Kakao.Auth.login({
		success : function(response) {
			Kakao.API.request({
				url : '/v2/user/me',
				success : function(response) {
					console.log(response)
				},
				fail : function(error) {
					console.log(error)
				},
			})
		},
		fail : function(error) {
			console.log(error)
		},
	})
}
//카카오로그아웃  
function kakaoLogout() {
	if (Kakao.Auth.getAccessToken()) {
		Kakao.API.request({
			url : '/v1/user/unlink',
			success : function(response) {
				console.log(response)
			},
			fail : function(error) {
				console.log(error)
			},
		})
		Kakao.Auth.setAccessToken(undefined)
	}
}
*/
/*
//네이버
var naverLogin = new naver.LoginWithNaverId(
	{
		clientId: "MyYQPSddCtErBH2vDfMD", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
		callbackUrl: "http://localhost:8020/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
		isPopup: false,
		callbackHandle: true
	}
);	

	naverLogin.init();
	
	window.addEventListener('load', function () {
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
	    		
				console.log(naverLogin.user); 
	    		
	            if( email == undefined || email == null) {
					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
					naverLogin.reprompt();
					return;
				}
			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});
	});


	var testPopUp;
	function openPopUp() {
	    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
	}
	function closePopUp(){
	    testPopUp.close();
	}
	
	function naverLogout() {
		openPopUp();
		setTimeout(function() {
			closePopUp();
			}, 1000);
		
		
}
*/
//구글
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyAK13l80uJ9qGjXrD4Typ2jrYUPPGHA-5Q', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log(profile)
	})
	.fail(function(e){
		console.log(e);
	})
}
function onSignInFailure(t){		
	console.log(t);
}

</script>
</head>
<div class="usermenu">
		<c:if test = "${logStatus!='Y' }">
			<li><a href = "/user/login">로그인</a></li>
			<li><a href = "/user/signup">회원가입</a></li>
		</c:if>
		<c:if test = "${logStatus=='Y' }"></li>
			<li><a href = "/user/logout">로그아웃</a>
		</c:if>
			<li><a href="/faq">고객센터</a></li>
</div>
<div class="asdfqwer">
	<ul>
		
		<li><a href="/searchResult">검색결과페이지</a></li>
		<li><a href="/preferGenre">선호도장르페이지</a></li>
		<li><a href="/mainMeetingNotice">미팅게시판전체공지(임시)</a></li>
		<li><a href="/playMeetingList">연극게시판목록페이지(임시)</a></li>
		<li><a href="/playMeetingForm">연극게시판 글쓰기(임시)</a></li>
		<li><a href="/playMeetingComment">연극게시판 댓글(임시)</a></li>
		
		<li><a href="/show/showList">연극</a></li>
		<li><a href="/book/bookSeat">좌석선택</a></li>
		<li><a href="/book/bookCredit">결제하기</a></li>
		<li><a href="/book/bookCheck">예약내역확인하기</a></li>
		<li><a href="/show/showDetail">공연상세보기</a></li>

		<li><a href="/playMeetingList">연극게시판목록페이지(임시)</a></li>
		<li><a href="/admin">admin</a></li>

		<li><a href="/dBData/showInputMain">DB에 show데이터</a></li>
		<li><a href="/dBData/palceInputMain">DB에 place데이터</a></li>

	</ul>
</div>
<body>

<div class="topUp">

	<div class="usermenu">
		<a href = "/user/login">로그인</a> 
		<a href = "/user/signup">회원가입</a> 
		<a href = "/user/logout">로그아웃</a> 
		<a href="/faq">고객센터</a>
		<a href="/board/boardform">게시판</a>
	<!-- 게시판 -->
	</div>

	
	<div id="top">

		<button class="search-btn" type="submit"><i class="fas fa-search" id="searchBtn"></i></button>
		<input type="text" id="searchBar"/>	
		<a href="/" id="mainLink">
			<img src="../img/logo.png" id="logo"/>
			<span>CCU</span>
		</a>
		<button class="bell-btn" type="submit"><i class="fas fa-bell" id="bellBtn"></i></button>
		<button class="user-btn" type="submit"><i class="fas fa-user-circle" id="userBtn"></i></button>
	
		
		<div id="bellDiv">
		</div>
		
		
		
		<div id="toggleDiv">
			
			<form method="post" action="/user/loginOk" id="log">
		
				<li><input type="text" placeholder="ID" name="id" id="id"></li><br/>
				<li><input type="password" placeholder="PW" name="password" id="password"></li><br/>
			<c:if test = "${logStatus!='Y' }">	
				<li><input type="submit" value="로그인" class="loginBtn" ></li><br/> 
			</c:if> 
			<br/>
			<c:if test = "${logStatus=='Y' }">
				<a href = "/user/logout">로그아웃</a>
			</c:if>
				<br/>
			<c:if test = "${logStatus!='Y' }">
				<li><a href="/user/signup">회원가입</a></li>
			</c:if>
			</form>
			
				<a href="/faq">고객센터</a>
			
			<ul>
					<li onclick="kakaoLogin();">
					<a href="javascript:void(0)">
						<img src="../img/kakaoicon.png"  id="kakaoicon" width="40px"; height="40px">
					</a>
				</li>
					
				<li>
					<a id="naverIdLogin_loginButton" href="javascript:void(0)">
						<img src="../img/navericon.png" id="navericon" width="40px"; height="40px">
					</a>
				</li>
				
				
				
				<li id="GgCustomLogin">
					 <a href="javascript:void(0)"> 
						<img src="../img/googleicon.png"  id="googleicon" width="40px"; height="40px">
					</a>
				</li> 
			</ul>
		</div>

	</div>
</div>

		<div class="topDown">
			<!-- 탭메뉴 -->
			<div id="tapmenu">
				<ul>
					<li><a href="#">전체</a></li>
				</ul>
				<ul>
					<li><a href="/show/showList">연극</a></li>
				</ul>
				<ul>
					<li><a href="#">뮤지컬</a></li>
				</ul>
				<ul>
					<li><a href="#">클래식/오페라</a></li>
				</ul>
				<ul>
					<li><a href="#">아동</a></li>
				</ul>
				<ul>
					<li><a href="/meeting/mainMeeting">같이갈래요?</a></li>
				</ul>
			</div>
		</div>

	</div>
	


