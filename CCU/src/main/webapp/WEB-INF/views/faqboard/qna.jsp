<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

	#faqmenu {
		list-style: none;
		border: 1px solid purple;
		background-color : purple;
		opacity : 0.7;
		height: 500px;
		width: 10%;
		float: left;
		box-sizing: border-box;
}
	.faqmenubar {
	text-decoration-line: none;
	color: white;
}
	#cstext {
		text-align: center;
		font-size: 3em;
		color: #440099;
		margin-bottom: 100px;
	}
	#qnabox {
		border: 2px solid;
		color: #440099;
		height: 50px;
		width: 230px;
		text-align: center;
		font-weight: bold;
		font-size: 30px;
		margin-left: 34%;
		margin-bottom: 50px;
}
	#qnaboardtitle{
		overflow:auto;
		list-style : none;
		width: 1200px;
		margin-left: 20%;
		font-weight: bold;
		background-color:title;
	}
	#qnaboard, #qnaboardtitle{
		overflow:auto;
		list-style : none;
		width: 1200px;
		margin-left: 20%;
	}
	#qnaboard li, #qnaboardtitle li{
		float : left;
		width : 8%;
		line-height : 43px;
		border-bottom : 1px solid grey;
		white-space : nowrap;
		overflow : hidden;
		text-overflow : ellipsis;
		
	}
	#qnaboard li:nth-child(2){
		width:40%
	}
	#qnaboardtitle li:nth-child(2){
		width:40%
	}

	.writeqna {
		
		width:100px;
		height:40x;
		background-color:#440099;
		color:white;
		margin-top:10px;
		margin-bottom:10px;
		margin-left:52%;
		font-size : 1.1em;
	}
	#chatboticon{
		position: absolute; 
		right: 0px; 
		bottom: 0px;
	}
</style>
<body>
<img src="../img/chatbot_icon.png" id="chatboticon">
	<div>
		<ul id=faqmenu>

			<a href="/faq" class="faqmenubar">FAQ</a>
			<br />
			<a href="/qna" class="faqmenubar">QNA</a>
			<br />
			<a href="/terms" class="faqmenubar">이용약관</a>

		</ul>

	</div>


	<h1 id="cstext">- 고객센터 -</h1>
	<h1 id="qnabox" text-align=center;>Q&A</h1>

	

		<ul id = "qnaboardtitle">
			
			<li>번호</li>
			<li>제목</li>
			<li>작성자</li>
			<li>조회수</li>
			<li>작성일</li>
		</ul>
		<ul id = "qnaboard">
			<li>333</li>
			<li>카드결제 환불 문의</li>
			<li>박동빈</li>
			<li>1</li>
			<li>2022.09.14</li>
		</ul>
		<ul id = "qnaboard">	
			<li>332</li>
			<li>분실물 문의</li>
			<li>박동빈</li>
			<li>3</li>
			<li>2022.09.14</li>
		</ul>
	
	<input type="button" value="글쓰기"  class="writeqna">

	



</body>
</html>