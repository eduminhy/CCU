<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/chatStyle.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	function registChat() {

		window.open('chatList', '네이버팝업',
				'width=500, height=400, scrollbars=yes, resizable=no');
	}
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
</head>

<body>
	<div class="chatqnabox">
		<ul>
			<li>관리자와의 1:1대화함으로 문의사항을 알려주세요</li>
			<li>답변 소요시간에는 최소 수 시간에서 약 3일가량 소요될 수 있습니다</li>
			<li><button type="button" onclick="registChat();" id="chatBtn">1:1문의하기</button></li>
		</ul>	
	</div>
</body>
</html>