////-------------------------------------------------------------------

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

$(document).ready(
	function() {
		//--MontlyRanking 색변경-------------------------------------------------------------------------------------------
		$(".indexRank_menu>div").click(function() {
			$(".indexRank_menu>div").css("color", "rgba(59, 0,148)");
			$(this).css("color", "rgba(255, 81,87)");
		});
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

	});
var date = 1;
var genre = "연극";
$(document).ready(
	function getJSON() {
		$.ajax({
			type: "get",
			url: "/popl",
			dataType: "json",
			data: { a: date, b: genre },
			success: function(data) {
				console.log(data);
				$.each(data, function(index, i) { // 데이터 =item
					
					var msg = "";
					msg += "<div><img src='"+i.mainposter+"' /></div>";
					$(".indexRank_post").append(msg);
				});
			},
			error: function() {
				console.log("통신에러");
			}
		})
	}

);

