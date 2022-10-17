<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/chatStyle.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	function registChat() {

		window.open('chatList', '네이버팝업',
				'width=660, height=870, scrollbars=yes, resizable=no');
	}
</script>


<body>

	<div class="csmenu">
		<div><a href="/faq">FAQ</a></div>
		<div><a href="/qna">Q&A</a></div>
		<div><a href="/chatbot">ChatBot</a></div>
		<div><a href="/terms">이용약관</a></div>
	</div>
	<br/>
	<br/>
	<div class="chatqnabox">
		<ul>
			<li id="chatqnali1"><b>관리자와의 1:1대화로 문의사항을 알려주세요</b></li>
			<br/>
			<li id="chatqnali2">답변 소요시간에는 최소 수 시간에서 약 3일가량 소요될 수 있습니다</li>
			<br/>
			<br/>
			<br/>
			<li><img src="data:image/png;base64,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" onclick="registChat();" style="cursor:pointer;" id="chaticon"></li>
			<li><button type="button" onclick="registChat();" id="chatBtn"  style="cursor:pointer;">1:1문의하기</button></li>
		</ul>	
	</div>
</body>
</html>