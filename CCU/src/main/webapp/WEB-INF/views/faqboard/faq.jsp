<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
</head>
<style>
	ul {
		list-style : none;
	}
	#faqlist li{
		float : left;
		line-height : 40px;
		border-bottom : 1px solid #ddd;
		width : 10%;
	}
	#faqlist li:nth-child(n+3){
		float:left;
		line-height:40px;
		width:55%;
		background-color:yellow;
	}
	#cstext {
		text-align:center;
		font-size:3em;
		color:#440099;
		margin-bottom:100px;
	}
	#faqbox {
	 	border:2px solid; color:#440099; 
		height:50px; width:230px;
		text-align:center;
		font-weight:bold;
		font-size:30px;
		margin-left:34%;
		margin-bottom:50px;
	}
	 
</style>
<body>
<div>
	<ul>
		<li><li><a href="/chatbot">Q&A CHATBOT</li>
		<li>운영방침 운영방침</li>
		<li><li><a href="/terms">이용약관</li>
	</ul>
</div>


	<h1 id="cstext">- 고객센터 -</h1>
	<h1 id="faqbox" text-align=center;>Q&A</h1>



<div class="notice">
	
	<ul id = "faqlist">
		<li>유형</li>
		<li>제목</li>
		<li>티켓/예매발권</li>
		<li>공연예매 후 언제까지 입금해야 하며, 입금시간을 연장할 수 있나요?</li>
		<li>티켓/예매발권</li>
		<li>예약번호입장(현장수령)으로 예매할 경우 대리인 수령이 가능한가요?</li>
	</ul>
</div>

</body>
</html>