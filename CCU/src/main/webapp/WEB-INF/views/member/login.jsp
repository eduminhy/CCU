<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/loginStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

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
			<input type="button" value="회원가입"  class="signupBtn">
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