<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/loginStyle.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
</head>
<style>
#chatboticon {
	position: absolute;
	right: 10px;
	bottom: 0px;
}
.qnamenu {
	width: 1200px;
	margin : 0 auto;
	text-align:center;
}
.qnamenuul{
	float:left; 
	text-align:center;
	display: inline-block;
}
.qnamenu li {
	list-style: none;
	outline: 2px solid #440099;
	margin-left: 6px;
}
#cstext {
	text-align: center;
	font-size: 3em;
	color: #440099;
	margin-bottom: 100px;
}

#faqbox {
	border: 2px solid;
	color: #440099;
	height: 50px;
	width: 230px;
	text-align: center;
	font-weight: bold;
	font-size: 30px;
	margin-left: 34%;
	margin-bottom: 51px;
}

.answer {
	display: none;
	padding-bottom: 30px;
}

.faq-content {
	border-bottom: 1px solid #e0e0e0;
	margin-bottom: 0%;
	margin-left: 30%;
}

.question {
	font-size: 19px;
	padding: 30px 0;
	cursor: pointer;
	border: none;
	outline: none;
	background: none;
	width: 100%;
	text-align: left;
}

.question:hover {
	color: #2962ff;
}

[id$="-toggle"] {
	margin-right: 15px;
}
</style>
<body>
	
	<h1 id="cstext">- 고객센터 -</h1>

	<div class="qnamenu">
		<ul class="qnamenuul">
			<li><a href="/faq">FAQ</a></li>
			<li><a href="/qna">Q&A</a></li>
			<li><a href="/terms">이용약관</a></li>
		</ul>
	</div>

	<h1 id="faqbox" text-align=center;>Q&A</h1>

	<div class="faq-content">
		<button class="question" id="que-1">
			<span id="que-1-toggle">+</span><span>공연예매 후 언제까지 입금해야
				하며,입금시간을 연장할 수 있나요?</span>
		</button>
		<div class="answer" id="ans-1">
			공연예매 시 결제수단을 무통장입금을 선택하신 경우 무통장 입금 선택 가능 기간은 예매일 +4일입니다.<br /> <br />
			[입금 마감 시간 안내]<br /> 입금기한 내 입금하셔야 합니다. 상품별로 입금마감시간이 다를 수 있으며, 내역은
			마이페이지에서 확인 가능합니다.
		</div>
	</div>
	<div class="faq-content">
		<button class="question" id="que-2">
			<span id="que-2-toggle">+</span><span>결제 취소 이후 취소완료시까지 소요되는
				시간이 어떻게되나요?</span>
		</button>
		<div class="answer" id="ans-2">
			결제 취소 이후 각 카드사마다 소요일의 차이가 있을 수 있습니다.<br /> 평균적인 소요 시간은 3~5일입니다.
		</div>
	</div>
	<div class="faq-content">
		<button class="question" id="que-3">
			<span id="que-3-toggle">+</span><span>예매수수료는 얼마인가요?</span>
		</button>
		<div class="answer" id="ans-3">예매수수료는 3.3%입니다.</div>
	</div>
	<div class="faq-content">
		<button class="question" id="que-4">
			<span id="que-4-toggle">+</span><span>온라인예매 이후 현장에서 대리인 수령이
				가능한가요?</span>
		</button>
		<div class="answer" id="ans-4">예약내역 확인시에 가능합니다.</div>
	</div>
<img src="../img/chatbot_icon.png" id="chatboticon">
	<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>





</body>
</html>