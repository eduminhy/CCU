<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="/style/mypage/myReservationStyle.css">

<script>
	$(function() {
		//후기작성 or 예약취소 버튼 생성
		var statusArray=[];
		var arrlength = $(".book>li:nth-of-type(6)").text().length;
		var showStatus = $(".book>li:nth-of-type(6)").text();
		/* console.log(showStatus, arrlength); */
		
		for(var i=0;i<arrlength/4;i++){
			statusArray[i]=showStatus.substring(4*i,4*(i+1));
			if(statusArray[i]=='관람완료'){
				/* console.log(i); */
				$(".book>li:nth-of-type(7):eq("+i+")").append("<input type='button' value='후기작성하기' class='reviewBtn'/>");
			}else if(statusArray[i]=='예약완료'){
				$(".book>li:nth-of-type(7):eq("+i+")").append("<input type='button' value='예약취소하기' class='cancleBtn'/>");
			}
		}
		
		//날짜 기간 검색
		$('#date').daterangepicker({
			linkedCalendars: false,
			"locale":{
			"format": "YYYY.MM.DD",
			"separator": " ~ ",
			"applyLabel": "적용",
			"cancelLabel": "취소",
			"fromLabel": "From",
			"toLabel": "To",
			"customRangeLabel": "Custom",
			"daysOfWeek": ["일","월", "화", "수", "목", "금", "토"],
			"monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"] },
			}, function (start, end, label) {
			console.log('선택된 날짜: ' + start.format('YYYY.MM.DD') + ' to ' + end.format('YYYY.MM.DD'));
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
	<div id="searchDiv">
		<form method="get" action="/mypage/myReservation" id="searchFrm">
			<span>검색어</span>
			<input type="text" name="searchWord" id="searchWord"/>
			<span>기간조회하기</span>
			<input type="text" name="daterange" id="date"/>
			<input type="button" value="검색" class="searchBtn"/>
		</form>	
	</div>
	<form method="post" action="#" id="bookFrm">
		<ul>
			<li>
				<ul id="bookList">
					<li>
						<ul class="book">
							<li>공연종류</li>
							<li>공연명</li>
							<li>공연날짜</li>
							<li>예매일</li>
							<li>예약매수</li>
							<li>현재상태</li>
							<li></li>
						</ul>
					</li>
					<li>
						<ul class="book" id="book">
							<li>연극</li>
							<li><a href="#">오만과편견</a></li>
							<li>2022.08.30</li>
							<li>2022.05.29</li>
							<li>3매</li>
							<li>관람완료</li>
							<li></li>
						</ul>
					</li>
					<li>
						<ul class="book">
							<li>뮤지컬</li>
							<li><a href="#">엘리자벳</a></li>
							<li>2022.10.30</li>
							<li>2022.06.15</li>
							<li>1매</li>
							<li>예약완료</li>
							<li></li>
						</ul>
					</li>
					<li>
						<ul class="book">
							<li>클래식/오페라</li>
							<li><a href="#">안드로메다</a></li>
							<li>2022.11.05</li>
							<li>2022.07.02</li>
							<li>2매</li>
							<li>예약취소</li>
							<li></li>
						</ul>
					</li>
					<li>
						<ul class="book">
							<li>아동</li>
							<li><a href="#">뽀로로와 함께해요</a></li>
							<li>2022.12.30</li>
							<li>2022.10.25</li>
							<li>1매</li>
							<li>예약완료</li>
							<li></li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</form>
</div>