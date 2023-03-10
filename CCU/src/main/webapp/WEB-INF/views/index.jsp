<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- jQ -->
<!-- <script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
<!-- JS -->
<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<!-- indexPage style -->
<link rel="stylesheet" href="/style/indexStyle.css">
<!-- indexPage script -->
<script src="/script/indexScript.js" type="text/javascript">
	
</script>
<%-- ${poplW[0].name } --%>
<%-- ${poplM[0].name } --%>
<!-- <br /> -->
<div id="wrap">
	<div id="container">
		<div id="quick_bg">
			<div id="quick">
				<a href="/show/showDetail?show_id=PF121682"><img src="img/mainposter/1.jpg"></a>
				<a href="/show/showDetail?show_id=PF185284"><img src="img/mainposter/2.jpg"></a>
				<a href="/show/showDetail?show_id=PF130891"><img src="img/mainposter/3.jpg"></a>
				<a href="/show/showDetail?show_id=PF179222"><img src="img/mainposter/4.jpg"></a>
			</div>
		</div>
	</div>
</div>
<div class="main-item">
	<div class="single-item">
		<div>
			<a href="/show/showDetail?show_id=PF193042"><img src="img/mainposter/main1.jpg" /></a>
		</div>
		<div>
			<a href="/show/showDetail?show_id=PF194642"><img src="img/mainposter/main2.png" /></a>
		</div>
		<div>
			<a href="/show/showDetail?show_id=PF195029"><img src="img/mainposter/main3.jpg" /></a>
		</div>
		<div>
			<a href="/show/showDetail?show_id=PF195242"><img src="img/mainposter/main4.jpg" /></a>
		</div>
<!-- 		<div> -->
<%-- 			<a href="/show/showDetail?show_id=${R.id}"><img src="img/mainposter/main5.jpg" /></a> --%>
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<a href="/show/showDetail?show_id=${R.id}"><img src="img/mainposter/main6.jpg" /></a> --%>
<!-- 		</div> -->
	</div>
</div>

<script>
	$('.single-item').slick({
		arrows : false,
		pauseOnHover : true,
		autoplay : true,
		autoplaySpeed : 8000,
		dots : true,

	});

	// 	$(document).ready(function(){
	// 	$(".slider-back").css("background-image","url("+$('.slider-nav').children('div').children('div').children('.slick-current').children('img').attr("src")+")");
	// 	//console.log($(this)); imgUrl = $(this).attr("src");
	// 	$('.slider-nav').on('afterChange', function(event, slick, currentSlide, nextSlide){
	// 		$(".slider-back").css("background-image","url("+$('.slider-nav').children('div').children('div').children('.slick-current').children('img').attr("src")+")");
	// 		}); 
	// 	});
	// 	 <span class="festname">
	// 						${R.name }<span><br /> <span>${R.startdate }<span><span>${R.genre }<span>
</script>
<br />
<br />
<div class="indexFav">
	<div>
		<h1 class="indexFav_title">- ??????????????? -</h1>
	</div>
	<div class="indexFav_post">
		<c:forEach var="R" items="${popl}">
			<div>
				<div class="indexFav_img2">
					<div class="indexFav_img">

						<img src="${R.mainposter }" /> <a href="/show/showDetail?show_id=${R.id}"> <span
							class="indexFav_circle">&nbsp;</span> <span
							class="indexFav_count">${R.showRank }</span> <span
							class="indexFav_text"> <span class="textcon"> <span
									class="spantxt1">${R.genre }</span> <span class="spantxt2">${R.name }</span>
									<span class="spantxt3">${R.startdate }~${R.enddate }</span> <br />
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<%-- ${c:length(list) } --%>
<script>
	$('.indexFav_post').slick({
		slidesToShow : 7,
		slidesToScroll : 7,
		arrows : false,
		pauseOnHover : true,
		autoplay : true,
		autoplaySpeed : 8000,

	});
</script>
<br />
<br />
<div class="indexBody">
	<br /> <br /> <br />
	<div class="indexRank">
		<div class="index_title">
			<div>- Monthly Ranking -</div>
			<div>- Weekly Ranking -</div>
			<div>- Daily Ranking -</div>
		</div>
		<script>
	$('.index_title').slick({
		arrows : false,
		dots : true,
	});
</script>
		<div class="indexRank_menu">
			<div>#??????&nbsp;&nbsp;</div>
			<div>#?????????&nbsp;&nbsp;</div>
			<div>#?????????/?????????&nbsp;&nbsp;</div>
			<div>#??????&nbsp;&nbsp;</div>
			<!-- 			<div>#???????????????</div> -->
		</div>
		<br />
		<div class="indexRank_post"></div>
		<br />
	</div>
	<br /> <br />

	<%-- 	${fest[0].name} --%>
	<div class="indexFes">
		<span class="index_title">- Festival -</span>
		<div class="indexRank_menu">2022?????? ?????????, ????????? ?????????!</div>
		<br />
		<div class="indexFes_post">
			<c:forEach var="fest" items="${fest}">
				<div>
					<img src="${fest.mainposter }" /> <span class="festname">
						${fest.name }<span><br /> <span>${fest.startdate }~${fest.enddate }<span>
						
				</div>
			</c:forEach>

		</div>
		<br />

	</div>
	<br />
			<br />
		<br />
		<br />
		<br />
		<br />
		<br />