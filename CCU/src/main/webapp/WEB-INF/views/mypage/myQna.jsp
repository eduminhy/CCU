<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/style/mypage/myQnaStyle.css">
<script>
	$(function(){
		//리스트 전체선택
		$("#allChk").click(function(){
			$(".qna input[type=checkbox]").prop("checked", $("#allChk").prop("checked"));
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
	
	<form method="post" action="#" id="qnaFrm">
		<ul>
			<li>
				<ul id="qnaList">
					<li>
						<ul class="qna">
							<li><input type="checkbox" id="allChk"/></li>
							<li>번호</li>
							<li>제목</li>
							<li>문의날짜</li>
							<li>답변상태</li>
						</ul>
					</li>
					<li>
						<ul class="qna">
							<li><input type="checkbox"/></li>
							<li>연극</li>
							<li><a href="#">아 진짜요? 저는 재밌게 봤는데..</a></li>
							<li>2022.04.30</li>
							<li>답변대기중</li>
						</ul>
					</li>
					<li>
						<ul class="qna">	
							<li><input type="checkbox"/></li>
							<li>뮤지컬</li>
							<li><a href="#">최재림 연기 겁나 잘함요ㅇㅇ</a></li>
							<li>2022.03.31</li>
							<li>답변완료</li>
						</ul>
					</li>
					<li>
						<ul class="qna">	
							<li><input type="checkbox"/></li>
							<li>오페라</li>
							<li><a href="#">투란도트 완전 추천해요!</a></li>
							<li>2022.02.04</li>
							<li>답변완료</li>
						</ul>
					</li>
					<li>
						<ul class="qna">	
							<li><input type="checkbox"/></li>
							<li>기타</li>
							<li><a href="#">제가 가는 곳 의자는 불편하더라구요ㅠ</a></li>
							<li>2022.01.22</li>
							<li>답변완료</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
		<input type="button" value="삭제" id="DeleteBtn"/>	
	</form>
</div>