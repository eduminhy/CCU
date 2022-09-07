<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	
	#userid, #userpwd, #nickname, #username, #usertel, #useraddr {
		border : 2px solid grey;
		width:300px;
		height:45px;
		margin-bottom:10px;
	}
	div.signupfrm {
		text-align:center;
		border: 5px double; color:#440099;
		border-radius: 10%;
		margin-right:500px;
		margin-left:500px;
		padding : 50px;

	}
	.signupbtn {
		width:300px;
		height:45px;
		background-color:#440099;
		color:white;
		margin-bottom:10px;
		font-size : 1.1em;
	}
	h1 {
		color:#440099;
		font-size:15px;
		margin-bottom:80px;
	}
	#googleicon {
		border: 2.5px solid; color:#4285F4;
		border-radius: 50%;
	}
	#navericon {
		margin-right:25px;
	}
	#kakaoicon {
		margin-right:25px;
	}

</style>
</head>
<body>
	<!-- 아이디,비밀번호,닉네임,이름,연락처,주소 -->
	<div class="signupfrm">
		<img src="../img/logo01.PNG" width=100px; height=100px;><br />
																<br />
		<input type="userid" placeholder="아이디를 입력해주세요" id="userid"><br />
		<input type="userpwd" placeholder="비밀번호를 입력해주세요" id="userpwd"><br />
		<input type="nickname" placeholder="닉네임을 입력해주세요" id="nickname"><br />
		<input type="username" placeholder="이름을 입력해주세요" id="username"><br />
		<input type="usertel" placeholder="연락처를 입력해주세요 (' - ' 제외)" id="usertel"><br />
		<input type="useraddr" placeholder="주소를 입력해주세요" id="useraddr"><br />
		<input type="button" value="회원가입" class="signupbtn">
		<br/>
		<br/>
		<br/>
		<img src="../img/navericon.png" width=80px; height=80px; id="navericon">
		<img src="../img/kakaoicon.png" width=80px; height=80px; id="kakaoicon">
		<img src="../img/googleicon.png" width=80px; height=80px; id="googleicon">
	</div>

</body>
</html>