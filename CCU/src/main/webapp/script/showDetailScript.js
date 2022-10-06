
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
if(Math.round(rate)<1){
	starString = "☆☆☆☆☆";
}else if(Math.round(rate)<2){
	starString = "★☆☆☆☆";
}else if(Math.round(rate)<3){
	starString = "★★☆☆☆";
}else if(Math.round(rate)<4){
	starString = "★★★☆☆";
}else if(Math.round(rate)<5){
	starString = "★★★★☆";
}else {
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
$(document).ready(function() {
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
});
