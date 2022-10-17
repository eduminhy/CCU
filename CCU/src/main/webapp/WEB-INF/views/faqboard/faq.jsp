<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/faqStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
</head>

<body>
<!-- 
<img src="../img/chatbot_icon.png" id="chatboticon">
<div id="cculogo">
<img src="../img/logo01.PNG" width=100px; height=100px;">
</div>
-->

	<div class="csmenu">
		<div><a href="/faq">FAQ</a></div>
		<div><a href="/qna">Q&A</a></div>
		<div><a href="/chatbot">ChatBot</a></div>
		<div><a href="/terms">이용약관</a></div>
	</div>

<div class="faqbox">
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
</div>	
<br/>
<br/>

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