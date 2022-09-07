<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#qnabox {
	 	border:2px solid; color:#440099; 
		height:50px; width:230px;
		text-align:center;
		font-weight:bold;
		font-size:30px;
		margin-left:34%;
		margin-bottom:50px;
	}
	.chatbotbox {
		text-align: center;
		border: 5px double; color:#440099;
		border-radius: 10%;
		margin-right:500px;
		margin-left:500px;
		padding : 50px;
	}
	.usechatbot {
		width:230px;
		height:50px;
		background-color:#440099;
		color:white;
		margin-bottom:10px;
		font-size : 1.1em;
	}
	#cstext {
		text-align:center;
		font-size:3em;
		color:#440099;
		margin-bottom:100px;
	}
</style>
<body>
	<h1 id="cstext">- 고객센터 -</h1>
	<h1 id="qnabox" text-align=center;>Q&A</h1>
	<div class="chatbotbox">
		<img src="../img/chatboticon.PNG" id="chatboticon">
		<br/>
		<input type="button" value="이용하기" class="usechatbot">
	</div>

</body>
</html>