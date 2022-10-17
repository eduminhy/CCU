<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/style/loginStyle.css">
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js">
</script>

<body>

<script
        src="https://apis.google.com/js/platform.js?onload=init" async defer>
</script>
<script
        src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8">
</script>
<head>
    <meta name="google-signin-client_id"
          content="426256303189-91qm6qceidgtnqitpoq62grsjgo4rot1.apps.googleusercontent.com">
</head>

<script>
    $(function () {
        $("#log").submit(function () {
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

</script>

<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    Kakao.init('2d768d1af1ecd6d4a45cfb4dc3ca7ced'); //발급받은 키 중 javascript키를 사용해준다.
    console.log(Kakao.isInitialized()); // sdk초기화여부판단
    //카카오로그인
    function kakaoLogin() {
        Kakao.Auth.login({
            success: function (response) {
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function (response) {
                        console.log(response)
                    },
                    fail: function (error) {
                        console.log(error)
                    },
                })
            },
            fail: function (error) {
                console.log(error)
            },
        })
    }

    //카카오로그아웃
    function kakaoLogout() {
        if (Kakao.Auth.getAccessToken()) {
            Kakao.API.request({
                url: '/v1/user/unlink',
                success: function (response) {
                    console.log(response)
                },
                fail: function (error) {
                    console.log(error)
                },
            })
            Kakao.Auth.setAccessToken(undefined)
        }
    }
</script>
<script>

    //처음 실행하는 함수
    function init() {
        gapi.load('auth2', function () {
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
            ,
            data: {
                personFields: 'birthdays',
                key: 'AIzaSyACSwYDDRCLex-scxMjSkbni0UAD1lFjG4',
                'access_token': access_token
            }
            ,
            method: 'GET'
        })
            .done(function (e) {
                //프로필을 가져온다.
                var profile = googleUser.getBasicProfile();
                console.log(profile)
            })
            .fail(function (e) {
                console.log(e);
            })
    }

    function onSignInFailure(t) {
        console.log(t);
    }
</script>

<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<!-- 	<a href="javascript:kakaoLogin();"><img src="../img/kakaoicon.png"  id="kakaoicon"></a>	 -->


<div class="cculogo">
    <img src="../img/logo01.PNG" width=100px; height=100px;>
</div>
<div class="logincontainer">
    <form method="post" action="/user/loginOk" id="log">
        <input type="text" placeholder="아이디를 입력해주세요" name="id" id="id">
        <br/>
        <input type="password" placeholder="비밀번호를 입력해주세요" name="password" id="password"> 
        <br/> 
        <br/>
        <input type="submit" value="로그인" class="loginBtn"> 
        <br/>
        <br/>
        <br/>
        <br/>
        <a href="/oauth2/authorization/google"><img src="../img/googlebtn.png" id="googlebtn"></a>
		<br/>
		<a href="/oauth2/authorization/kakao"><img src="../img/kakaobtne.png" id="kakaobtne"></a>
	
        <input type="button" value="회원가입" onclick=" location.href ='/user/signup' " class="signupBtn">
     
        <br/>
    </form>
</div>


<!-- <div class="sclogin"> -->
	
	
<!-- 	<a href="/oauth2/authorization/google"><img src="../img/googlebtn.png" id="googlebtn"></a> -->
<!-- 	<br/> -->
<!-- 	<a href="/oauth2/authorization/kakao"><img src="../img/kakaobtne.png" id="kakaobtne"></a> -->
<!-- </div> -->
<!-- <ul> -->
<!--     <li id="GgCustomLogin"> -->
<!--         <img src="../img/googleicon.png" id="googleicon"> -->
<!--         <a href="javascript:void(0)"> -->
<!--             <span>Login with Google</span> -->
<!--         </a> -->
<!--     </li> -->
<!-- </ul> -->


<!-- <ul> -->
<!--     <li onclick="kakaoLogin();"> -->
<!--         <a href="javascript:void(0)"> -->
<!--             <img src="../img/kakaoicon.png" id="kakaoicon"> -->
<!--         </a> -->
<!--     </li> -->
<!--     <li onclick="kakaoLogout();"> -->
<!--         <a href="javascript:void(0)"> -->
<!--             <span>카카오 로그아웃</span> -->
<!--         </a> -->
<!--     </li> -->
<!-- </ul> -->


</body>
</html>