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
<link rel="stylesheet" href="/style/indexStyle.css">
<!-- indexPage script -->
<script src="/script/indexScript.js" type="text/javascript"></script>
<script>
</script>
<br/>
<div class="slider-back">
	<br/>
	<div class="slider-for">
		<div class="slider-div2">
			<div>
				<a href=""><img src="img/poster/1.jpg"/></a>
				<div class="slider-div">
					1 asasad
				</div>
			</div>
		</div>
		
		<div class="slider-div2">
			<div>
				<a href=""><img src="img/poster/2.jpg"/></a>
				<div class="slider-div">
					2 asasad
				</div>
			</div>
		</div>
		
		<div class="slider-div2">
			<div>
				<a href=""><img src="img/poster/3.jpg"/></a>
				<div class="slider-div">
					3 asasad
				</div>
			</div>
		</div>
				
		<div class="slider-div2">
			<div>
				<a href=""><img src="img/poster/4.jpg"/></a>
				<div class="slider-div">
					4 asasad
				</div>
			</div>
		</div>
				
		<div class="slider-div2">
			<div>
				<a href=""><img src="img/poster/5.jpg"/></a>
				<div class="slider-div">
					5 asasad
				</div>
			</div>
		</div>
				
		<div class="slider-div2">
			<div>
				<a href=""><img src="img/poster/6.jpg"/></a>
				<div class="slider-div">
					6 asasad
				</div>
			</div>
		</div>
	</div>
	<br/>
	<div class="slider-nav">
		<div><img src="img/poster/1.jpg" /></div>
		<div><img src="img/poster/2.jpg" /></div>
		<div><img src="img/poster/3.jpg" /></div>
		<div><img src="img/poster/4.jpg" /></div>
		<div><img src="img/poster/5.jpg" /></div>
		<div><img src="img/poster/6.jpg" /></div>
		<div><img src="img/poster/1.jpg" /></div>
		<div><img src="img/poster/2.jpg" /></div>
		<div><img src="img/poster/3.jpg" /></div>
		<div><img src="img/poster/4.jpg" /></div>
		<div><img src="img/poster/5.jpg" /></div>
		<div><img src="img/poster/6.jpg" /></div>
	</div>
	
</div>
<script>
	$('.slider-for').slick({
		slidesToShow : 1,
		slidesToScroll : 1,
		arrows : false,
		//fade: true,
		asNavFor : '.slider-nav',
		//centerMode : true,
		//centerPadding: '400px',
		autoplay : true,
		autoplaySpeed : 300000,
		pauseOnHover : true,
		swipe : true,
		draggable : true
	});
	$('.slider-nav').slick({
		slidesToShow : 10,
		slidesToScroll : 10,
		asNavFor : '.slider-for',
		dots : false,
		arrows : false,
		centerMode : true,
		focusOnSelect : true,
		pauseOnHover : true,
		swipe : false
	});
	
	$(document).ready(function(){
	$(".slider-back").css("background-image","url("+$('.slider-nav').children('div').children('div').children('.slick-current').children('img').attr("src")+")");
	//console.log($(this)); imgUrl = $(this).attr("src");
	$('.slider-nav').on('afterChange', function(event, slick, currentSlide, nextSlide){
		$(".slider-back").css("background-image","url("+$('.slider-nav').children('div').children('div').children('.slick-current').children('img').attr("src")+")");
		}); 
	});
</script>
<div class="emptyDiv"></div>
<div class="indexFav">
	<h1 class="indexFav_title">- 인기상황판 -</h1>
	<div class="indexFav_post">
		<div>
			<img src="img/poster/1.jpg" />
		</div>
		<div>
			<img src="img/poster/2.jpg" />
		</div>
		<div>
			<img src="img/poster/3.jpg" />
		</div>
		<div>
			<img src="img/poster/4.jpg" />
		</div>
		<div>
			<img src="img/poster/5.jpg" />
		</div>
				<div>
			<img src="img/poster/1.jpg" />
		</div>
		<div>
			<img src="img/poster/2.jpg" />
		</div>
		<div>
			<img src="img/poster/3.jpg" />
		</div>
		<div>
			<img src="img/poster/4.jpg" />
		</div>
		<div>
			<img src="img/poster/5.jpg" />
		</div>
	</div>
</div>
<script>
	$('.indexFav_post').slick({
		slidesToShow : 5,
		slidesToScroll : 5,
 		dots : true,
		arrows : false,
		//centerMode : true,
		focusOnSelect : true,
		pauseOnHover : true,
		//swipe : true,
		autoplay : true,
		autoplaySpeed : 3000,
		//draggable : true
	});
</script>
<div class="indexBody">
	<br/>
	<br/>
	<br/>
	<div class="indexRank">
		<h1 class="indexRank_title" >- Monthly Ranking -</h1>
		<div class="indexRank_menu">
			<div>#연극&nbsp;&nbsp;</div>
			<div>#뮤지컬&nbsp;&nbsp;</div>
			<div>#클래식/오페라</div>
			<div>#무용&nbsp;&nbsp;</div>
			<div>#국악&nbsp;&nbsp;</div>
			<div>#아동&nbsp;&nbsp;</div>
			<div>#관람객참여</div>
		</div>
		<br/>
		<div class="indexRank_post">
		<div><img src="img/poster/1.jpg" /></div>
		<div><img src="img/poster/2.jpg" /></div>
		<div><img src="img/poster/3.jpg" /></div>
		<div><img src="img/poster/4.jpg" /></div>
		<div><img src="img/poster/5.jpg" /></div>
		</div>
		<br/>
	</div>
	<br/>
	<br/>
	<div class="indexFes">
		<h1>- Festival -</h1>
		<div>2022축제 라인업, 놓치지 마세요!</div>
		<br/>
		<div class="indexFes_post">
		<div><img src="img/poster/1.jpg" />< 축제명 ><br/>2022.05.28~2022.12.31</div>
		<div><img src="img/poster/2.jpg" />< 축제명 ><br/>2022.05.28~2022.12.31</div>
		<div><img src="img/poster/3.jpg" />< 축제명 ><br/>2022.05.28~2022.12.31</div>
		<div><img src="img/poster/4.jpg" />< 축제명 ><br/>2022.05.28~2022.12.31</div>
		<div><img src="img/poster/5.jpg" />< 축제명 ><br/>2022.05.28~2022.12.31</div>
		</div>
		<br/>
	</div>
</div>
