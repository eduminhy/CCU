<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	.leftContainer{ /* 왼쪽 부분 */
		margin-left:250px;
		width:200px;
		height:1000px;
		background-color:#ddd;
	}
	
	.topContainer{ /* 상단 부분 */
		margin-left:200px;
		width:1170px;
		height:200px;
		background-color:#F5F2FA;
		text-align:center;
	}
	
	.hashTag{
		margin-top:70px;
		margin-left:30px;
		font-size:20px;
		padding:10px 30px;
		background-color: #F5F2FA;
		color: black;
		border: 2px solid #7000FF;
		border-radius:30px;
	}
	
	.hashTag:hover{
		background-color: #7000FF;
		color: white;
		font-weight:bold;
	}
	/*
	.clicked{
		background-color: #7000FF;
		color: white;
		font-weight:bold;
	}
	*/
	.selectPoster{
		width:150px;
		margin-top:140px;
		margin-left:80px;
	}
	.selectCheck{
	}
	
</style>
<script>
</script>
</head>
<body>
	<div class="leftContainer">
		<div class="topContainer">
			<button class="hashTag">#드라마</button>
			<button class="hashTag">#로맨스</button>
			<button class="hashTag">#스릴러</button>
			<button class="hashTag">#액션</button>
			<button class="hashTag">#역사</button>
			<button class="hashTag">#코미디</button>
			
			<section>
				<a href="#"><img src="../img/선호포스터1.png" class="selectPoster"/></a>
				<a href="#"><img src="../img/선호포스터2.png" class="selectPoster"/></a>
				<a href="#"><img src="../img/선호포스터3.png" class="selectPoster"/></a>
				<a href="#"><img src="../img/선호포스터4.png" class="selectPoster"/></a><br/>
				<a href="#"><img src="../img/선호포스터5.png" class="selectPoster"/></a>
				<a href="#"><img src="../img/선호포스터6.png" class="selectPoster"/></a>
				<a href="#"><img src="../img/선호포스터7.png" class="selectPoster"/></a>
				<a href="#"><img src="../img/선호포스터8.png" class="selectPoster"/></a>
			
			</section>
			
			
			
			
			
		</div>
		<input type="checkbox" name="checkbox" value="연극" class="selectCheck">연극
		<input type="checkbox" name="checkbox" value="뮤지컬" class="selectCheck">뮤지컬
		<input type="checkbox" name="checkbox" value="클래식/오페라" class="selectCheck">클래식/오페라
		<input type="checkbox" name="checkbox" value="무용" class="selectCheck">무용
		<input type="checkbox" name="checkbox" value="국악" class="selectCheck">국악
		<input type="checkbox" name="checkbox" value="아동" class="selectCheck">아동
	</div>
</body>
</html>