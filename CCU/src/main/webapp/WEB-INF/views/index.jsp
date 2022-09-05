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
		arrows : true,
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
<div class=".indexbody"></div>