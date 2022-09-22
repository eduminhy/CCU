<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/style/mypage/myBoardStyle.css">
<script>
	$(function(){
		//리스트 전체선택
		$("#allChk").click(function(){
			$(".board input[type=checkbox]").prop("checked", $("#allChk").prop("checked"));
		});
		
	});
</script>
<div class="container">
	<h1>- 마이페이지 -</h1>
	<div id="myTapmenu">
		<ul>
			<li><a href="myInfo">나의 정보</a></li>
			<li><a href="myReservation">나의 예매내역</a></li>
			<li><a href="myHeartList">나의 찜목록</a></li>
			<li><a href="myBoard">나의 게시글</a></li>
			<li><a href="myComment">나의 댓글</a></li>
			<li><a href="myQna">나의 문의내역</a></li>
		</ul>
	</div>
		
	<form method="post" action="#" id="boardFrm">
		<ul>
			<li>
				<ul id="boardList">
					<li>
						<ul class="board">
							<li><input type="checkbox" id="allChk"/></li>
							<li>게시판분류</li>
							<li>게시글</li>
							<li>작성날짜</li>
						</ul>
					</li>
					<li>
						<ul class="board">
							<li><input type="checkbox"/></li>
							<li>연극</li>
							<li><a href="#">요즘 연극 뭐가 재밌나요?</a></li>
							<li>2022.04.30</li>
						</ul>
					</li>
					<li>
						<ul class="board">	
							<li><input type="checkbox"/></li>
							<li>뮤지컬</li>
							<li><a href="#">제발 엘리자벳 다들 꼭 보시라고요!!</a></li>
							<li>2022.03.31</li>
						</ul>
					</li>
					<li>
						<ul class="board">	
							<li><input type="checkbox"/></li>
							<li>오페라</li>
							<li><a href="#">잔잔한 오페라 추천해주세요</a></li>
							<li>2022.02.04</li>
						</ul>
					</li>
					<li>
						<ul class="board">	
							<li><input type="checkbox"/></li>
							<li>기타</li>
							<li><a href="#">요즘 볼 것들이 많아서 행복해요ㅠㅠ</a></li>
							<li>2022.01.22</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
		<input type="button" value="삭제" id="DeleteBtn"/>	
	</form>
</div>