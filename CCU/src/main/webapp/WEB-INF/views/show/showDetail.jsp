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
<!-- <div id="asdf1111"> -->
<div id="wrap">
	<div id="container12">
		<div id="quick_bg">
			<div id="quick">
				<div class="scrolltop">△</div>
				<!-- 							<hr/> -->
				<div class="scrolldown">▽</div>
				<!-- 				<a href="#form"><img src="img/poster/1.jpg"></a> -->
			</div>
		</div>
	</div>
</div>
<!-- </div> -->

<div class="showDetail">

	<script type="text/javascript">
		getshow('${dvo.monday}', '${dvo.tuesday}', '${dvo.wednesday}',
				'${dvo.thursday}', '${dvo.friday}', '${dvo.saturday}',
				'${dvo.sunday}', '${dvo.holiday}');
		// 		getshow2('${dvo.tuesday}');
		// 		getshow2('${dvo.wednesday}');
		// 		getshow2('${dvo.thursday}');
		// 		getshow2('${dvo.friday}');
		// 		getshow2('${dvo.saturday}');
		// 		getshow2('${dvo.sunday}');
		// 		getshow2('${dvo.holiday}');
		getname('${show.id}','${myheart}','${logStatus}','${param.no}', '${param.stD}','${param.no}','${onoc}');
	</script>
	<br />
	<div class="showDetailTitle">

		<div>${show.genre}:${show.name}</div>

		<div class="fullheart">찜목록에서 제거 ♥</div>
		<div class="emptyheart">찜하기 ♡</div>

	</div>

	<br />
	<div class="showBody">
		<div class="showDetailImgDiv">
			<img src="${show.mainposter}" />
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
				<br /> <span>선택일자&nbsp;&nbsp;<input type="text"
					id="period_1"></span>
				<hr class="hr1" />
				<div class="calanderSelect">
					회차선택
					<div class="calanderSelectDiv"></div>
				</div>
				<br />

				<form class="form" action="/book/scheduleOk" method="post">
					<input class="Sdate" name="Sdate" type="text"> <input
						class="Sdate2" name="Sdate2" type="text"> <input
						class="userD" name="userD" type="text"> <input
						class="price" name="price" type="text" value="${show.price}">
					<input class="id" name="id" type="text" value="${show.id}">
					<!-- 							<div class="calanderButten"> -->
					<!-- 					<button>예매하기</button> -->
					<!-- 				</div> -->
				</form>
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
						<td>${show.startdate}<script type="text/javascript">
							getDayOfWeek('${show.startdate}');
						</script>&nbsp;~&nbsp;${show.enddate} <script type="text/javascript">
							getDayOfWeek('${show.enddate}');
						</script></td>
					</tr>
					<tr>
						<th scope="row"><label for="">공연장소</label></th>
						<td>${show.place_name}</td>
					</tr>
					<tr>
						<th scope="row"><label for="">공연시간</label></th>
						<td>${show.open_time}</td>
					</tr>
					<tr>
						<th scope="row"><label for="">런타임</label></th>
						<td>${show.runtime}</td>
					</tr>
					<tr>
						<th scope="row"><label for="">관람연령</label></th>
						<td>${show.minimum_age}</td>
					</tr>

					<tr class="">
						<th scope="row"><label for="">티켓가격</label></th>
						<td>${show.price}</td>
					</tr>
					<tr class="">
						<th scope="row"><label for="">출연진</label></th>
						<td>${show.performer}</td>
					</tr>
					<!-- 					<tr class=""> -->
					<!-- 						<th scope="row"><label for="">원작자</label></th> -->
					<%-- 						<td>${show.producer}</td> --%>
					<!-- 					</tr> -->
					<tr class="">
						<th scope="row"><label for="">제작진</label></th>
						<td>${show.producer}</td>
					</tr>
					<tr class="">
						<th scope="row"><label for="">공연상태</label></th>
						<td>${show.state}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br />
	<div class="scroll">
		<div class="scroll2">
			<div>공연통계 바로가기</div>
		</div>
		<div class="scroll1">
			<div>후기보기 바로가기</div>
		</div>

		<!-- 		<div><a href=".detailChart" id="scroll_move">분석보기</a></div> -->
	</div>

	<br />
	<div class="setreview">
		<br />
		<form class="setreviewForm">
			<br />
			<div class="detailRatingTitle">나의 공연관람 후기 등록</div>
			<div class="raterate">
				<div class="star-rating space-x-4 mx-auto">
					<input type="radio" id="5-stars" name="rate" value="5"
						v-model="ratings" /> <label for="5-stars" class="star pr-4">★</label>
					<input type="radio" id="4-stars" name="rate" value="4"
						v-model="ratings" /> <label for="4-stars" class="star">★</label>
					<input type="radio" id="3-stars" name="rate" value="3"
						v-model="ratings" /> <label for="3-stars" class="star">★</label>
					<input type="radio" id="2-stars" name="rate" value="2"
						v-model="ratings" /> <label for="2-stars" class="star">★</label>
					<input type="radio" id="1-star" name="rate" value="1"
						v-model="ratings" /> <label for="1-star" class="star">★</label>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="araterate">공연관람일자 : ${param.stD}</div>
			</div>
			<br /> <input type="hidden" name="viewdate" value="${param.stD}" />
			<input type="hidden" value="${show.id}" name="showdb_id" /> <input
				type="hidden" value="${param.no}" name="order_no" />
			<div class="setReviewdiv1">
				<div>
					<textarea name="content" value="" rows="4" cols="100"></textarea>
				</div>
				<!-- 			<script type="text/javascript">											 -->
				<!-- // 	         document.write(getstar($('#reviewRateForm').val())); -->
				<!-- // 	         $('#reviewRateForm').keyup( function() { -->
				<!-- // 	        	 getstar($('#reviewRateForm').val()); -->
				<!-- // 	       	 });							 -->
				<!--          	</script> -->
				<div>
					<button class="setReviewBtn">등록</button>
				</div>
			</div>
		</form>
		<br />
	</div>
	<br />
	<div class="detailImg">
		<img src="${show.introduction_image1}" /> <img
			src="${show.introduction_image2}" /> <img
			src="${show.introduction_image3}" /> <img
			src="${show.introduction_image4}" />
	</div>
	<br /> <br />
	<div class="detailTag">
		<!-- 		<div>#드라마</div> -->
		<!-- 		<div>#성장</div> -->
		<!-- 		<div>#철학</div> -->
	</div>
	<div class="detailChart"></div>
	<br /> <br />
	<div class="detailRating">
		<br />
		<div class="detailRatingTitle">관람 평점</div>
		<div class="detailRatingStar">
			<script type="text/javascript">
         document.write(getstar(${starResult}));
    </script>
			&nbsp;&nbsp;${starResult}
		</div>
		<br />
		<div class="detailRatingContent">
			<c:forEach var="R" items="${rVO}">
				<div class="detailRatingContentInnerDiv">
					<div>${R.rate }<br />
						<script type="text/javascript">
         document.write(getstar(${R.rate }));
    </script>
					</div>
					<%-- 					${R.id} --%>
					<div>
						<div>${R.user_id}</div>
						<div>${R.content}</div>
					</div>
					<div name="${R.id}">신고</div>
				</div>
				<br />
			</c:forEach>

			<div class="hiddenDiv">
				<c:forEach var="R" items="${r6VO}">
					<div class="detailRatingContentInnerDiv">
						<div>${R.rate }<br />



							<script type="text/javascript">
         document.write(getstar(${R.rate }));
    </script>
						</div>
						<div>
							<div>${R.user_id}</div>
							<div>${R.content}</div>
						</div>
						<div name="${R.id}">신고</div>
					</div>
					<br />
				</c:forEach>
			</div>
			<div class="detailRatingLink">후기 더보기</div>
			<br />
		</div>
		<!-- 	<div class="detailRatingLink">후기 더보기</div> -->
	</div>
</div>
<br />
<br />
