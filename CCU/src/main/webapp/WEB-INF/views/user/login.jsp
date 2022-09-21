<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/loginStyle.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js">
</script>
<script src="https://developers.kakao.com/sdk/js/kakao.js">
</script>
<script 
	src="https://apis.google.com/js/platform.js?onload=init" async defer>
</script>
<script 
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8">
</script>
<head>
<meta name ="google-signin-client_id" content="1005826264941-hbs6khjvtefta159igqlntnhrp28ua44.apps.googleusercontent.com">
</head>
<script>
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
<body>
	<div class="cculogo">
		<img src="../img/logo01.PNG" width=100px; height=100px;>
	</div>
	<div class="logincontainer">
		<form method="post" action="/user/loginOk" id="log">
			<input type="text" placeholder="아이디를 입력해주세요" name="id" id="id">
			<br /> <input type="password" placeholder="비밀번호를 입력해주세요"
				name="password" id="password"> <br /> <br /> <input
				type="submit" value="로그인" class="loginBtn"> <br />
			<!-- <input type="button" value="회원가입"  class="signupBtn">  -->
			<li><a href="/user/signup">회원가입</a></li> <br /> <br /> <br /> <br />
		</form>
		</div>
		
		
		<div class="snslogincontainer">
		<ul>
				<li onclick="kakaoLogin();">
					<a href="javascript:void(0)">
						<img src="../img/kakaoicon.png"  id="kakaoicon">
					</a>
				</li>
					
				<li>
					<a id="naverIdLogin_loginButton" href="javascript:void(0)">
						<img src="../img/navericon.png" id="navericon">
					</a>
				</li>
				
				
				
				<li id="GgCustomLogin">
					 <a href="javascript:void(0)"> 
						<img src="../img/googleicon.png"  id="googleicon">
					</a>
				</li> 
		</ul> 
	</div>
	

	

<!-- 
-------------------------------최근 작업
<img src="../img/navericon.png">
--------------------------------카카오 시도한 작업
<ul>
				<li onclick="kakaologin();">
					<a href="javascript:void(0)">
						<img src="../img/kakaoicon.png"  id="kakaoicon">
					</a>
				<li>
				<img src="../img/navericon.png"  id="navericon"></li> 
				<li>
				<img src="../img/googleicon.png" id="googleicon"></li>
			</ul> 
			
			
			
			
			
			<ul>
				<li onclick="kakaoLogin();"><a href="javascript:void(0)"> <span>카카오
							로그인</span>
				</a></li>
				<li onclick="kakaoLogout();"><a href="javascript:void(0)">
						<span>카카오 로그아웃</span>
				</a><li><img src="../img/navericon.png" id="navericon">
				</li> 
				<li>
				<img src="../img/googleicon.png" id="googleicon">
				</li>
			</ul> 
      
----------------------------- 구글 시도한 작업
<ul>
 <li id="GgCustomLogin">
  <a href="javascript:void(0)">
   <span>Login with Google</span>
  </a>
 </li>
</ul>

---------------------------네이버 시도한 작업
<ul>
	<li>
      
      <a id="naverIdLogin_loginButton" href="javascript:void(0)">
          <span>네이버 로그인</span>
      </a>
	</li>
	<li onclick="naverLogout(); return false;">
      <a href="javascript:void(0)">
          <span>네이버 로그아웃</span>
      </a>
	</li>
</ul>

 -->
</body>
</html>