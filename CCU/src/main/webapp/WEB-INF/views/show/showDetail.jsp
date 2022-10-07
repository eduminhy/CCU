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
	</script>
	 <br />
	<div class="showDetailTitle">
	<div>♥</div>
		<div>${show.genre}:${show.name}&nbsp;</div>
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
				<hr />
				<span>선택일자&nbsp;&nbsp;<input type="text" id="period_1"></span>
				<hr />
				<div class="calanderSelect">
					회차선택
					<div class="calanderSelectDiv"></div>
				</div>
				<hr />

				<form class="form" action="/book/bookSeat" method="post">
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
	<div class="scroll">
		<div>후기보기</div>
		<div>분석표</div>
	</div>
	<br />
	<div class="detailImg">
		<img src="${show.introduction_image1}" /> <img
			src="${show.introduction_image2}" /> <img
			src="${show.introduction_image3}" /> <img
			src="${show.introduction_image4}" />
	</div>
		<br />
			<br />
	<div class="detailTag">
<!-- 		<div>#드라마</div> -->
<!-- 		<div>#성장</div> -->
<!-- 		<div>#철학</div> -->
	</div>
	<div class="detailChart"></div>
	<br />
	<div class="setreview">
		<br />
		<form class="setreviewForm">
			<div class="star-rating space-x-4 mx-auto">
				<input type="radio" id="5-stars" name="rating" value="5"
					v-model="ratings" /> <label for="5-stars" class="star pr-4">★</label>
				<input type="radio" id="4-stars" name="rating" value="4"
					v-model="ratings" /> <label for="4-stars" class="star">★</label> <input
					type="radio" id="3-stars" name="rating" value="3" v-model="ratings" />
				<label for="3-stars" class="star">★</label> <input type="radio"
					id="2-stars" name="rating" value="2" v-model="ratings" /> <label
					for="2-stars" class="star">★</label> <input type="radio"
					id="1-star" name="rating" value="1" v-model="ratings" /> <label
					for="1-star" class="star">★</label>
			</div>


			<input type="text" value="${show.id}" name="show_id" /> <input
				type="text" name="content" value="공연이 재미있고 맛있서요" /> <input
				type="text" id="reviewRateForm" name="reviewRateForm" value="0" />
			<br />
			<script type="text/javascript">											
	         document.write(getstar($('#reviewRateForm').val()));
	         $('#reviewRateForm').keyup( function() {
	        	 getstar($('#reviewRateForm').val());
	       	 });							
         	</script>
			<button>후기 등록하기</button>

		</form>
		<br />
	</div>
	<br />
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
					${R.id}
					<div>
						<div>${R.user_id}</div>
						<div>${R.content}</div>
					</div>
					<div name="${R.id}">신고</div>
				</div>
				<br />
			</c:forEach>
			<c:forEach var="R" items="${r6VO}">
				<div class="hiddenDiv">
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
</div>
<br />
<br />
</div>