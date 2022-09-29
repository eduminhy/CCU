//--좌측 따라다니는 배너-------------------------------------------------------------------------------------------

$(function() {
	var quick_menu = $('#quick');
	var quick_top = 470;
	$(function() {
		console.log(11)
		quick_menu.css('top', $(window).height());
		$(document).ready(function() {
			quick_menu.animate({ "top": $(document).scrollTop() + quick_top + "px" }, 200);
			$(window).scroll(function() {
				quick_menu.stop();
				quick_menu.animate({ "top": $(document).scrollTop() + quick_top + "px" }, 500);
			});
		});
	});

});

$(function() {
	var date = 30;
	var genre = "연극";
	monthlyRankingDE();
	//--인기상활판 마우스 오버시 정보 보이고 어둡게-------------------------------------------------------------------------------------------
	$('.indexFav_text').hide();
	$('.indexFav_img').hover(function() {
		$(this).find(".indexFav_text").show();
		$(this).find('img').css("filter", "brightness(0.3)");
		//			$('.indexFav_text').show();
		//			.css("z-index"," 3")
	}, function() {
		$('.indexFav_text').hide();
		$('.indexFav_img').find('img').css("filter", "brightness(1)");
	});

	$('.index_title').on('afterChange ', function(event, slick, currentSlide, nextSlide) {
		$(".indexRank_post").empty();
		//		console.log($(this).slick('slickCurrentSlide'));
		if ($(this).slick('slickCurrentSlide') == 0) {
			date = 30;
		} else if ($(this).slick('slickCurrentSlide') == 1) {
			date = 7;
		} else if ($(this).slick('slickCurrentSlide') == 2) {
			date = 1;
		}
		monthlyRankingDE();

	})
	//--MontlyRanking 색변경-------------------------------------------------------------------------------------------
	$(".indexRank_menu>div:first-child").css("color", "rgba(255, 81,87)");
	$(".indexRank_menu>div").click(function() {
		$(".indexRank_menu>div").css("color", "rgba(59, 0,148)");
		$(this).css("color", "rgba(255, 81,87)");
		$(".indexRank_post").empty();
		//			console.log($(this).index());
		if ($(this).index() == 0) {
			genre = "연극";
		} else if ($(this).index() == 1) {
			genre = "뮤지컬";
		} else if ($(this).index() == 2) {
			genre = "클래식";
		} else if ($(this).index() == 3) {
			genre = "아동";
		}

		monthlyRankingDE();
	});


	function monthlyRankingDE() {
		$.ajax({
			type: "get",
			url: "/popl",
			dataType: "json",
			data: { a: date, b: genre },
			success: function(data) {
				console.log(data);
				var msg = "";

				$.each(data, function(index, i) { // 데이터 =item
					msg += "<div class='indexRank_img'>";
					msg += "<img src=" + i.mainposter + " />";
					msg += "<a href='" + "/" + "'>";
					msg += "<span class='indexRank_text'>";
					msg += "<span class='textconRank'>";
					msg += "<span class='spanRanktxt1'>" + i.genre + "</span>";
					msg += "<span class='spanRanktxt2'>" + i.name + "</span>";
					msg += "<span class='spanRanktxt3'>" + i.startdate + "~" + i.enddate + "</span>";
					msg += "<br />";
					msg += "</span>";
					msg += "</span>";
					msg += "</a>";
					msg += "</div>";
				});
				$(".indexRank_post").append(msg);

				//

				//--인기상활판 마우스 오버시 정보 보이고 어둡게-------------------------------------------------------------------------------------------
				$('.indexRank_text').hide();
				$('.indexRank_img').hover(function() {
					$(this).find(".indexRank_text").show();
					$(this).find('img').css("filter", "brightness(0.3)");
					//			$('.indexFav_text').show();
					//			.css("z-index"," 3")
				}, function() {
					$('.indexRank_text').hide();
					$('.indexRank_img').find('img').css("filter", "brightness(1)");
				});


				//				$(".indexRank_post").append(msg);
			},
			error: function() {
				console.log("error");
			}



		})
	}
});