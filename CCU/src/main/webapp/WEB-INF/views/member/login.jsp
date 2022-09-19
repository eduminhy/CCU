<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	.wrap {
		display: grid;
  		place-items: center;
  		min-height: 100px;
	}
	.loginFrm{
		text-align: center;
		border: 5px double; color:#440099;
		border-radius: 15%;
		margin-right:500px;
		margin-left:500px;
		padding : 50px;
	
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
		font-size : 1.1em;
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
		background-color:#04CF5C;
		margin-bottom : 10px;
		text-align: center;
	}
	#kakaologinBtn {
		background-color:#ffdc00;
		margin-bottom : 10px;
	}
	#googleloginBtn {
		background-color:black;
	}
	div.loginfrm {
		width: 50%;
		float: left;
		box-sizing: border-box;
	}
	div.snsloginfrm{
		width: 50%;
		float: right;
		box-sizing: border-box;
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
<body>
<div class="logincontainer">
	<div class="loginFrm">
	<h1><img src="../img/logo01.PNG" width=100px; height=100px;></h1>
		
			<input type="userid" placeholder="아이디를 입력해주세요" id="userid">
			<br/>
			<input type="userpwd" placeholder="비밀번호를 입력해주세요" id="userpwd">
		<br/>
		<br/>
			<input type="submit" value="로그인" class="loginBtn">
			<br/>
			<!-- <input type="button" value="회원가입"  class="signupBtn">  -->
			<li><a href="/member/signup">회원가입</a></li>
		<br/>
		<br/>
		<br/>
		<br/>
			<img src="../img/navericon.png" width=80px; height=80px; id="navericon">
			<img src="../img/kakaoicon.png" width=80px; height=80px; id="kakaoicon">
			<img src="../img/googleicon.png" width=80px; height=80px; id="googleicon">
	</div>
</div>





</body>
</html>