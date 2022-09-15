<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/signupStyle.css">
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