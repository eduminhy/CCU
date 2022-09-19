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
	<div class="signuplogo">
	<img src="../img/logo01.PNG" width=100px; height=100px;>
	</div>
	<br />
	<br />
	<!-- 아이디,비밀번호,닉네임,이름,연락처,주소 -->
<div class="signupcontainer">
	<form action="/usersignup">
		
		<input type="text" name="userid" id="userid" placeholder="아이디를 입력해주세요"><br /> 
		<input type="text" name="userpwd" id="userpwd" placeholder="비밀번호를 입력해주세요"><br />
		<input type="text" name="nickname" id="nickname" placeholder="닉네임을 입력해주세요"><br /> 
		<input type="text" name="username" id="username" placeholder="이름을 입력해주세요"><br />
		<input type="text" name="usertel" id="usertel" placeholder="연락처를 입력해주세요 (' - ' 제외)"><br />
		<input type="text" name="useraddr" id="useraddr" placeholder="주소를 입력해주세요"><br />
		<button type="submit" value="회원가입" class="signupbtn">회원가입</button>
		<br /> 
		<br /> 
		<br />
		<img src="../img/navericon.png" width=80px; height=80px; id="navericon"> 
		<img src="../img/kakaoicon.png" width=80px; height=80px; id="kakaoicon">
		<img src="../img/googleicon.png" width=80px; height=80px; id="googleicon">
	</form>
</div>
</body>
</html>