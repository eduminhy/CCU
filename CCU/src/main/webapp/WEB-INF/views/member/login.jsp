<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<style>
	h1 {
		background-color:#440099;
	}
	.wrap {
		display: grid;
  		place-items: center;
  		min-height: 100px;
	}
	.loginFrm{
		text-align:center;
	}
	#userid, #userpwd {
		border : 1px solid grey;
		width:300px;
		height:45px;
		margin-bottom:10px;
	}
	.loginBtn, .signupBtn {
		width:300px;
		height:45px;
		background-color:#440099;
		color:white;
		margin-bottom:10px;
	}
	h2 {
		color:#440099;
		text-align:center;
	}
	#naverloginBtn, #kakaologinBtn, #googleloginBtn {
		width:300px;
		height:45px;
		border : 1px solid white;
		color:white;
	}
	#naverloginBtn {
		background-color:green;
		margin-bottom : 10px;
		text-align: center;
	}
	#kakaologinBtn {
		background-color:yellow;
		margin-bottom : 10px;
	}
	#googleloginBtn {
		background-color:black;
	}

	
</style>
<body>
<form class="wrap">
	<h1><img src="../img/cculogo.png" width=100px; height=100px;></h1>
		<div class="loginFrm">
			<input type="userid" placeholder="아이디를 입력해주세요" id="userid">
			<br/>
			<input type="userpwd" placeholder="비밀번호를 입력해주세요" id="userpwd">
		</div>
		<br/>
		<br/>
		<div>
			<input type="submit" value="로그인" class="loginBtn">
		</div>
		<div>
			<input type="button" value="회원가입"  class="signupBtn">
		</div>
</form>
</body>
<body>
	<h2>SNS 계정을 통해 <br/> 로그인하실 수 있습니다</h2>
<form>
		<div>
			<input type="button" value="네이버 계정 로그인"  id="naverloginBtn">
		</div>
		<div>
			<input type="button" value="카카오 계정 로그인"  id="kakaologinBtn">
		</div>
		<div>
			<input type="button" value="구글 계정 로그인"  id="googleloginBtn">
		</div>
</form>
</body>
</html>