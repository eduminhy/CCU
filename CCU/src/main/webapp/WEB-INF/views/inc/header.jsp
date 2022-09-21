<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JQ link -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- favicon.ico 오류 지우기 & 웹 브라우저 아이콘 설정 -->
<link rel="shortcut icon" href="#">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/style/headerfooter.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.asdfqwer {
	position: relative;
}
</style>
<script>
	$(function() {
		//검색창
		$(".search-btn").click(function() {
			if ($("#searchBar").css("display") == "none") {
				$("#searchBar").show();
				$("#searchBar").focus();
			} else {
				$("#searchBar").hide();
			}
		});

		$("#searchBar").keyup(function(key) {
			if (key.keyCode == 13) {
				if ($("#searchBar").val() != '') {
					alert("검색할까요?");
				} else {
					alert("검색어를 입력하세요");
				}
			}
		});

		//사용자버튼
		$(".user-btn").click(function() {
			$("#toggleDiv").toggle();
		});
	});
</script>
</head>
<div class="asdfqwer">
	<ul>
		<li><a href="/login">로그인</a></li>
		<li><a href="/signup">회원가입</a></li>
		<li><a href="/searchResult">검색결과페이지</a></li>
		<li><a href="/preferGenre">선호도장르페이지</a></li>
		<li><a href="/mainMeetingNotice">미팅게시판전체공지(임시)</a></li>
		<li><a href="/playMeetingList">연극게시판목록페이지(임시)</a></li>
		<li><a href="/playMeetingForm">연극게시판 글쓰기(임시)</a></li>
		<li><a href="/playMeetingComment">연극게시판 댓글(임시)</a></li>
		<li><a href="/faq">고객센터</a></li>
		<li><a href="/show/showList">연극</a></li>
		<li><a href="/book/bookSeat">좌석선택</a></li>
		<li><a href="/book/bookCredit">결제하기</a></li>
		<li><a href="/book/bookCheck">예약내역확인하기</a></li>
		<li><a href="/show/showDetail">공연상세보기</a></li>

		<li><a href="/playMeetingList">연극게시판목록페이지(임시)</a></li>
		<li><a href="/admin">admin</a></li>
		<li><a href="/dBData/showInputMain">DB에 데이터 넣기..</a></li>
	</ul>
</div>
<body>

	<div class="topUp">
		<div id="top">
			<button class="search-btn" type="submit">
				<i class="fas fa-search" id="searchBtn"></i>
			</button>
			<input type="text" id="searchBar" /> <a href="/" id="mainLink">
				<img src="../img/logo.png" id="logo" /> <span>CCU</span>
			</a>
			<button class="user-btn" type="submit">
				<i class="fas fa-user-circle" id="userBtn"></i>
			</button>
			<div id="toggleDiv">
				<input type="text" id="userid" placeholder="ID" /><br /> <input
					type="password" id="userpwd" placeholder="PW" /><br /> <input
					type="submit" value="Login" /> <img src="../img/navericon.png"
					width=40px; height=40px; id="navericon"> <img
					src="../img/kakaoicon.png" width=40px; height=40px; id="kakaoicon">
				<img src="../img/googleicon.png" width=40px; height=40px;
					id="googleicon"> <br /> <a href="/user/login">로그인</a> <a
					href="/user/signup">회원가입</a> <br /> <br /> <a href="/faq">고객센터</a>

			</div>
		</div>


		<div class="topDown">
			<!-- 탭메뉴 -->
			<div id="tapmenu">
				<ul>
					<li><a href="#">전체</a></li>
				</ul>
				<ul>
					<li><a href="/show/showList">연극</a></li>
				</ul>
				<ul>
					<li><a href="#">뮤지컬</a></li>
				</ul>
				<ul>
					<li><a href="#">클래식/오페라</a></li>
				</ul>
				<ul>
					<li><a href="#">무용</a></li>
				</ul>
				<ul>
					<li><a href="#">국악</a></li>
				</ul>
				<ul>
					<li><a href="#">아동</a></li>
				</ul>
				<ul>
					<li><a href="/preferGenre">선호장르선택</a></li>
				</ul>
				<ul>
					<li><a href="#">같이갈래요??</a></li>
				</ul>
			</div>
		</div>
		<div id="topMenu">
			<c:if test="${logStatus!='Y' }">
				<a href="/user/login">로그인123</a>
				<a href="/user/signup">회원가입</a>
			</c:if>
			<c:if test="${logStatus=='Y' }">
				<a href="/user/logout">로그아웃</a>
				<a href="">mypage</a>
			</c:if>
		</div>
		<!-- <h1>CCU 홈</h1>
	<ol>
		<li><a href="/login">로그인</a></li>
		<li><a href="/signup">회원가입</a></li>
		<li><a href="/searchResult">검색결과페이지</a></li>
		<li><a href="/preferGenre">선호도장르페이지</a></li>
		<li><a href="/mainMeetingNotice">미팅게시판전체공지(임시)</a></li>
		<li><a href="/playMeetingList">연극게시판목록페이지(임시)</a></li>
		<li><a href="/playMeetingForm">연극게시판 글쓰기(임시)</a></li>
		<li><a href="/playMeetingComment">연극게시판 댓글(임시)</a></li>
		<li><a href="/faq">고객센터</a></li>
		<li><a href="/show/showList">연극</a></li>
		<li><a href="/book/bookSeat">좌석선택</a></li>
		<li><a href="/book/bookCredit">결제하기</a></li>
		<li><a href="/book/bookCheck">예약내역확인하기</a></li>
		<li><a href="/show/showDetail">공연상세보기</a></li>
	</ol> -->