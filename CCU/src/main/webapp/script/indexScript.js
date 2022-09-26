//--bxSlider가 웹 사이트 로딩시 실행되도록-----------------------------------------------------------------
//$(document).ready(function() {
//	$('.slider').bxSlider();
//});

$(document).ready(function() {
	//--MontlyRanking 색변경-------------------------------------------------------------------------------------------
	$(".indexRank_menu>div").click(function() {
		$(".indexRank_menu>div").css("color", "rgba(59, 0,148)");
		$(this).css("color", "rgba(255, 81,87)");
	});
});

 //var colorThief = new ColorThief();
 //var color = colorThief.getColor($('.slider-div2 img')[0]);
 //document.querySelector('.slider-div').style.backgroundColor='rgb('+color+')';
 //var colors = colorThief.getPalette($('.slider-div2 img')[0], 10);
 //for(var i=0; i<colors.length; i++) {
   //$(".slider-div").after($('<div style="display:inline-block; width:100px; height:100px; border-radius:50%;">').css("background-color", "rgb("+colors[i]+")"));
 //}