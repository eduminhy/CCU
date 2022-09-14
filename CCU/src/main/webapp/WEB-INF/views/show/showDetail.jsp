<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- jQ -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- JS -->
<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<!-- indexPage style -->
<link rel="stylesheet" href="/style/showDetail.css">
<!-- indexPage script -->
<script src="/script/showDetailScript.js" type="text/javascript"></script>
<div class="showDetail">
	<div class="showDetailTitle">
		<div>분류:제목&nbsp;</div>
		<div>♥</div>
	</div>
	<div class="showBody">
		<div class="showDetailImgDiv">
			<img src="../img/poster/1.jpg" />
			<div>
				<br /> <br />
			</div>
			<div class="calendar">
				<h3>예매하기</h3>
				<div class="header">
					<button class="calendar_btn" onclick="prevCal();">&lt;</button>
					<div class="title">
						<span class="year"></span><span class="month"></span>
					</div>
					<button class="calendar_btn" onclick="nextCal();">&gt;</button>
				</div>
				<div class="day">
					<div>S</div>
					<div>M</div>
					<div>T</div>
					<div>W</div>
					<div>T</div>
					<div>F</div>
					<div>S</div>
				</div>
				<div class="dates"></div>
				<hr />
				<span>선택일자&nbsp;&nbsp;<input type="text" id="period_1"></span>
				<hr />
				<div class="calanderSelect">
					회차선택
					<div class="calanderSelectDiv">
						<div>1회차 20:00</div>
						<div>2회차 22:00</div>
						<div>3회차 24:00</div>
					</div>
				</div>
				<hr />
				<div class="calanderButten">
					<div>예매하기</div>
				</div>
			</div>
			<!-- 			~ <input type="text" id="period_2"> -->
		</div>
		<div class="showDetailDiv">
			<table class="showDetailTable" summary="공연명 에 대한 상세 설명 테이블">
				<tbody>
					<tr>
						<th scope="row"><label for="">공연기간</label></th>
						<td>2022.09.05(월)~2022.11.13(일)</td>
					</tr>
					<tr>
						<th scope="row"><label for="">공연장소</label></th>
						<td>브릭스 씨어터</td>
					</tr>
					<tr>
						<th scope="row"><label for="">공연시간</label></th>
						<td>월요일 ~ 화요일(20:00)<br /> 수요일(16:00,20:00)<br /> 목요일 ~
							금요일(20:00)<br /> 토요일(15:00,19:00)<br /> 일요일(14:00,18:00)<br />
							공휴일(14:00,18:00)<br /> *9/6(화) 오후8시 공연 *9/10토 공연없음
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="">관람연령</label></th>
						<td>만 13세 이상</td>
					</tr>
					<tr>
						<th scope="row"><label for="">줄거리</label></th>
						<td>줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리
							줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리
							줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리
							줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리줄거리</td>
					</tr>
					<tr class="">
						<th scope="row"><label for="">티켓가격</label></th>
						<td>전석 55,000</td>
					</tr>
					<tr class="">
						<th scope="row"><label for="">출연진</label></th>
						<td>김도빈, 조풍래, 성연, 최호승, 순유동, 강은빈, 허영손 등</td>
					</tr>
					<tr class="">
						<th scope="row"><label for="">원작자</label></th>
						<td>안리준</td>
					</tr>
					<tr class="">
						<th scope="row"><label for="">제작진</label></th>
						<td>고강민, 박인선, 서정완 등</td>
					</tr>
					<tr class="">
						<th scope="row"><label for="">주최기간</label></th>
						<td>해당정보 없음</td>
					</tr>
					<tr class="">
						<th scope="row"><label for="">기획 제작</label></th>
						<td>(주)엠비제트컴퍼니(제작)</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br />
	<div class="detailTag">
		<div>#드라마</div>
		<div>#성장</div>
		<div>#철학</div>
	</div>
	<div class="detailChart">차트가 들어갈 곳.. 어떤 차트를 보여주어야 할까? 아니면 모든 차트를
		슬라이드형태로 만들어서 보여주는것은 어떨까?</div>
	<hr />
	<hr />
	<div class="detailRating">
		<hr />
		<div class="detailRatingTitle">관람 평점</div>
		<div class="detailRatingStar">★★★★☆ 4.6</div>
		<div class="detailRatingLink">후기 더보기</div>
		<div class="detailRatingContent">
			<div class="detailRatingContentInnerDiv">
				<div>
					3.5<br />★★★☆
				</div>
				<div>
					닉네임<br />~~배우님 목소리 너무 좋아요
				</div>
			</div>
			<br />
			<div class="detailRatingContentInnerDiv">
				<div>
					1.0<br />★
				</div>
				<div>
					닉네임<br />~~배우님 목소리 너무 좋아요 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				</div>
			</div>
		</div>



	</div>
</div>