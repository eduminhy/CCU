
var CDate = new Date();
var today = new Date();
var selectCk = 0;
var showdata = "";
var M = "";
var T = "";
var W = "";
var T2 = "";
var F = "";
var S = "";
var S2 = "";
var H = "";
var Sdate = "";
var Sdate2 = "";
var userD = "";
var showname = "";
var myheart = "";
var logStatus = "";
var no = "";
var WTD = "";
var order_no = "";
var onoc = "";
var buildcalendar = function() {
	var htmlDates = '';
	var prevLast = new Date(CDate.getFullYear(), CDate.getMonth(), 0); //지난 달의 마지막 날 
	var thisFirst = new Date(CDate.getFullYear(), CDate.getMonth(), 1); //이번 달의 첫쨰 날
	var thisLast = new Date(CDate.getFullYear(), CDate.getMonth() + 1, 0); //이번 달의 마지막 날
	document.querySelector(".year").innerHTML = CDate.getFullYear() + "년";  // year에 년도 출력
	document.querySelector(".month").innerHTML = (CDate.getMonth() + 1) + "월";  //month에 월 출력
	const dates = [];
	if (thisFirst.getDay() != 0) {
		for (var i = 0; i < thisFirst.getDay(); i++) {
			dates.unshift(prevLast.getDate() - i); // 지난 달 날짜 채우기
		}
	}
	for (var i = 1; i <= thisLast.getDate(); i++) {
		dates.push(i); // 이번 달 날짜 채우기 
	}
	for (var i = 1; i <= 13 - thisLast.getDay(); i++) {
		dates.push(i); // 다음 달 날짜 채우기 (나머지 다 채운 다음 출력할 때 42개만 출력함)
	}

	for (var i = 0; i < 42; i++) {
		if (i < thisFirst.getDay()) {
			htmlDates += '<div class="date last">' + dates[i] + '</div>';
		} else if (today.getDate() == dates[i] && today.getMonth() == CDate.getMonth() && today.getFullYear() == CDate.getFullYear()) {
			htmlDates += '<div id="date_' + dates[i] + '" class="date today" onclick="fn_selectDate(' + dates[i] + ');">' + dates[i] + '</div>';
		} else if (i >= thisFirst.getDay() + thisLast.getDate()) {
			htmlDates += '<div class="date next">' + dates[i] + '</div>';
		} else {
			htmlDates += '<div id="date_' + dates[i] + '" class="date" onclick="fn_selectDate(' + dates[i] + ');">' + dates[i] + '</div>';
		}
	}
	document.querySelector(".dates").innerHTML = htmlDates;
}

function prevCal() {
	CDate.setMonth(CDate.getMonth() - 1);
	buildcalendar();
}
function nextCal() {
	CDate.setMonth(CDate.getMonth() + 1);
	buildcalendar();
}

function fn_selectDate(date) {
	userD = "";
	var year = CDate.getFullYear();
	var month = CDate.getMonth() + 1;
	var date_txt = "";
	if (CDate.getMonth + 1 < 10) {
		month = "0" + (CDate.getMonth() + 1);
	}
	if (date < 10) {
		date_txt = "0" + date;
	}

	if (selectCk == 0) {
		$(".date").css("background-color", "");
		$(".date").css("color", "");
		$("#date_" + date).css("background-color", "red");
		$("#date_" + date).css("color", "white");

		//		$("#period_1").val(year + "-" + month + "-" + date);
		var alta = year + "-" + month + "-" + date;
		var data1 = getDayOfWeek2(alta);
		//		$("#aaa").val(getDayOfWeek(alta));
		selectCk = date;
		selectCk = 0;

	}
	$(".calanderSelectDiv").empty();
	if (Sdate == "월") {
		for (let i = 0; i < M.split(",").length && M != 0; i++) {
			//			console.log(M.split(",")[i]);
			$(".calanderSelectDiv").append('<div>' + M.split(",")[i] + '</div>');
		}
	} else if (Sdate == "화") {
		console.log(T.split(","));
		for (let i = 0; i < T.split(",").length && T != 0; i++) {
			//			console.log(T.split(",")[i]);
			$(".calanderSelectDiv").append('<div>' + T.split(",")[i] + '</div>');
		}
	} else if (Sdate == "수") {
		for (let i = 0; i < W.split(",").length && W != 0; i++) {
			//			console.log(W.split(",")[i]);
			$(".calanderSelectDiv").append('<div>' + W.split(",")[i] + '</div>');
		}
	} else if (Sdate == "목") {
		for (let i = 0; i < T2.split(",").length && T2 != 0; i++) {
			//			console.log(T2.split(",")[i]);
			$(".calanderSelectDiv").append('<div>' + T2.split(",")[i] + '</div>');
		}
	} else if (Sdate == "금") {
		console.log(F.split(","));
		for (let i = 0; i < F.split(",").length && F != 0; i++) {
			//			console.log(F.split(",")[i]);
			$(".calanderSelectDiv").append('<div>' + F.split(",")[i] + '</div>');
		}
	} else if (Sdate == "토") {
		for (let i = 0; i < S.split(",").length && S != 0; i++) {
			//			console.log(S.split(",")[i]);
			$(".calanderSelectDiv").append('<div>' + S.split(",")[i] + '</div>');
		}
	} else if (Sdate == "일") {

		//		console.log(S2.split(","));
		for (let i = 0; i < S2.split(",").length && S2 != 0; i++) {
			//			console.log(S2.split(",")[i]);
			$(".calanderSelectDiv").append('<div>' + S2.split(",")[i] + '</div>');
		}
	}

	//	console.log(Sdate)
	//	console.log(S2)
	//	console.log(F)
	//	console.log(getDayOfWeek(alta));
	//	var  dddd = showdata.slice(8,-1);
	//	var arr = dddd.split(" ");
	//		console.log(dddd);
	//		console.log(arr[0]);
	////	var aaaa = JSON.parse(dddd)
	//	console.log(dddd);
	//	console.log(aaaa);
	//	else {
	//		$("#date_" + date).css("background-color", "red");
	//		$("#date_" + date).css("color", "white");
	//		for (var i = selectCk + 1; i < date; i++) {
	//			$("#date_" + i).css("background-color", "#FFDDDD");
	//		}

	//		$("#period_2").val(year + "-" + month + "-" + date);
	//		selectCk = 0;
	//	}
	$('.calanderSelectDiv>div').click(function() {
		$('.calanderSelectDiv>div').css('background-color', ' rgba(247, 247, 247)');
		$(this).css('background-color', ' #f05650');
		userD = $(this).text();
		console.log(userD);
	});

}

function getDayOfWeek(날짜문자열) {
	//								console.log(날짜문자열);
	const week = ['일', '월', '화', '수', '목', '금',
		'토'];

	const dayOfWeek = week[new Date(날짜문자열).getDay()];
	//								console.log(dayOfWeek);
	return document.write(dayOfWeek);

}
function getDayOfWeek2(날짜문자열) {
	//								console.log(날짜문자열);
	const week = ['일', '월', '화', '수', '목', '금',
		'토'];

	const dayOfWeek = week[new Date(날짜문자열).getDay()];
	//								console.log(dayOfWeek);

	Sdate = dayOfWeek;
	Sdate2 = 날짜문자열;
	var txt = 날짜문자열 + "(" + dayOfWeek + ")";
	$("#period_1").val(txt);
	//	document.getElementById("#period_1").innerHTML =txt;

}
function getshow(MM, TT, WW, TT2, FF, SS, SS2, HH) {
	M = MM;
	T = TT;
	W = WW;
	T2 = TT2;
	F = FF;
	S = SS;
	S2 = SS2;
	H = HH;
	//console.log(12123)
	//console.log(S2)
}
function getstar(rate) {
	console.log(rate);
	console.log(Math.round(rate));
	var starString = "";
	if (Math.round(rate) < 1) {
		starString = "☆☆☆☆☆";
	} else if (Math.round(rate) < 2) {
		starString = "★☆☆☆☆";
	} else if (Math.round(rate) < 3) {
		starString = "★★☆☆☆";
	} else if (Math.round(rate) < 4) {
		starString = "★★★☆☆";
	} else if (Math.round(rate) < 5) {
		starString = "★★★★☆";
	} else {
		starString = "★★★★★";
	}

	return starString;
	//console.log(12123)
	//console.log(S2)
}
//		function getshow2(abc) {
//		
//		console.log(abc)
//	}
function getname(aaa, bbb, ccc, ddd, eee, fff, ggg) {

	//		console.log(12123)
	//		console.log(aaa)
	showname = aaa;
	myheart = bbb;
	logStatus = ccc;
	no = ddd;
	WTD = eee;
	order_no = fff;
	onoc = ggg;
}
$(document).ready(function() {
	$(".setreview").hide();
	console.log(onoc)
	if (logStatus == 'Y' && order_no != "") {
		if (onoc == 0) {
			$(".setreview").show();
			$('html,body').animate({
				scrollTop: $(".setreview").offset().top
			},
				'fast');
		}


	}
	buildcalendar();
	$('.calanderButten').click(function() {
		console.log(Sdate); //날자
		console.log(Sdate2); //일자
		console.log(userD); // 시간
		$('.Sdate').val(Sdate);
		$('.Sdate2').val(Sdate2);
		$('.userD').val(userD);
		$('.form').submit();


		//공연명
		//공연일
		//시간
		//전석만 가격

		//			$.ajax({
		//				url: '/book/bookSeat', //request 보낼 서버의 경로
		//				type: 'post', // 메소드(get, post, put 등)
		//				 async: false,
		//				data: { 'date': Sdate,
		//				'date2': Sdate2,
		//				'time':userD }, //보낼 데이터
		//				success: function(data) {        //서버로부터 정상적으로 응답이 왔을 때 실행
		//				}, error: function(err) {		//서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
		//				}
		//			});
	});
	$('.hiddenDiv').hide()
	$('.detailRatingLink').click(function() {
		$('.hiddenDiv').show();
	});
	let myWindow;
	$('.detailRatingContentInnerDiv>div:nth-child(3)').click(function() {
		var rcontent = prompt("신고하시는 이유를 적어주세요", "여기에!!");
		//		 console.log(userName  );
		//		myWindow = window.open('/show/report', '네이버팝업',
		//			'width=500, height=400, scrollbars=yes, resizable=no')
		//		$('.reportSM').click(function() {
		//			myWindow.close();
		//		});

		//				console.log($(this).attr('name'));
		//				console.log($(this).parent().children().eq(1).children().eq(0).text());
		//				console.log($(this).parent().children().eq(1).children().eq(1).text());
		//		.html() .text()
		var rname = $(this).parent().children().eq(1).children().eq(0).text();
		var rid = $(this).attr('name');
		var content = $(this).parent().children().eq(1).children().eq(1).text();
		$.ajax({
			url: '/show/report', //request 보낼 서버의 경로
			type: 'post', // 메소드(get, post, put 등)
			async: false,
			data: JSON.stringify({
				'name': rname,
				'id': rid,
				'content': content,
				'rcontent': rcontent
			}), //보낼 데이터
			'Content-Type': 'application/json',
			success: function(data) {        //서버로부터 정상적으로 응답이 왔을 때 실행
			}, error: function(err) {		//서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
			}
		});
	});
	//	$('.setReviewBtn').click(function() {
	//		event.preventDefault()
	//		var formValues = $(".setreviewForm").serialize();
	//		console.log(1111);
	//		$.ajax({
	//			type: 'post',
	//			url: '/show/setReview',
	//			data: formValues,
	//			dataType: 'json',
	//			async: true,
	//			error: function(err) {
	//				//                alert(error);
	//			},
	//			success: function(json) {
	//				//                alert(json)
	//			}
	//		});
	//	});
	$('.setReviewBtn').click(function() {
		event.preventDefault()
		var formValues = $(".setreviewForm").serialize();
		console.log(1111);
		if (logStatus == 'Y') {

			$.ajax({
				type: 'post',
				url: '/show/setReview',
				data: formValues,
				//				dataType: 'String',
				async: true,
				error: function(err) {
					console.log(err);
				},
				success: function(a) {
					console.log(12345);
					if (a == "a") {
						alert("후기등록이 완료되었습니다, 감사합니다.")
					} else if (a == "b") {
						alert("이미 등록된 후기입니다.");
					}
					window.location.reload()
//					$(".setreview").show();

				}
				
			});
								$('html,body').animate({
						scrollTop: $(".detailRating").offset().top
					},
						'fast');
		} else {
			alert('로그인 후 이용해주세요!')
		}
	});
	if (myheart == 0) {
		$(".fullheart").hide();
		$(".emptyheart").show();
	} else {
		$(".fullheart").show();
		$(".emptyheart").hide();
	}
	$('.emptyheart').click(function() {
		////		event.preventDefault()
		//		var formValues = $(".setreviewForm").serialize();
		console.log(1234556);
		console.log(logStatus);
		if (logStatus == 'Y') {
			$.ajax({
				type: 'get',
				url: '/show/setMyFav',
				data: { a: showname },
				dataType: 'json',
				async: true,
				error: function(err) {
					//                alert(error);
				},
				success: function(json) {

				}
			});
			$(".fullheart").show();
			$(".emptyheart").hide();
		} else {
			alert('로그인 후 이용해주세요!')
		}
	});

	$('.fullheart').click(function() {
		////		event.preventDefault()
		//		var formValues = $(".setreviewForm").serialize();
		console.log(1234556);
		console.log(logStatus);
		if (logStatus == 'Y') {
			$.ajax({
				type: 'get',
				url: '/show/delMyFav',
				data: { a: showname },
				dataType: 'json',
				async: true,
				error: function(err) {
					//                alert(error);
				},
				success: function(json) {

				}

			});
			$(".fullheart").hide();
			$(".emptyheart").show();
		} else {
			alert('로그인 후 이용해주세요!')
		}
	});


	//	$(".scroll_move>div").click(function(event) {
	//
	//		event.preventDefault();
	//
	//		$('html,body').animate({ scrollTop: $(this.hash).offset().top }, 500);
	//
	//	});
	$(".scroll1").click(function() {
		event.preventDefault();
		$('html,body').animate({
			scrollTop: $(".detailRating").offset().top
		},
			'fast');
	});
	$(".scroll2").click(function() {
		event.preventDefault();
		$('html,body').animate({
			scrollTop: $(".detailChart").offset().top
		},
			'fast');
	});
	$(function() {
		var quick_menu = $('#quick');
		var quick_top = 470;
		$(function() {
			//		console.log(11)
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
	$(".scrolltop").click(function() {
		event.preventDefault();
		$('html,body').animate({
			scrollTop: $("body").offset().top
		},
			'fast');
	});
	$(".scrolldown").click(function() {
		event.preventDefault();
		$('html,body').animate({
			scrollTop: $("#coinfo").offset().top
		},
			'fast');
	});

});

