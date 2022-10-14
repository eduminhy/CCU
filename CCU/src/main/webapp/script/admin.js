//--bxSlider가 웹 사이트 로딩시 실행되도록-----------------------------------------------------------------
$(function() {
	var firstDiv = 0;
	//	var secondDiv = 0;
	//    $("div").click(function(){$(this).css("background","coral")})
	$(".adminSubmenuContent>div").not($(".adminSubmenuContent>div").eq(0)).hide();
	$(".adminSubmenuContent>div").eq(0).show();
	//	$(".adminContent>div").hide();
	$(".adminContent>div").not($(".adminContent>div").eq(0)).hide();
	//	$(".adminContent>div>div").hide();
	$(".adminContent>div>div").not($(".adminContent>div>div").eq(0)).hide();
	$(".adminSubmenuContent>div>div").eq(0).css("background", "#666666").css("color", "#ffffff");
	$(".adminSubmenu>div").click(function() {
		firstDiv = ($(this).index());
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");
		$(this).css("background", "#666666").css("color", "#ffffff");
		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq($(this).index()).show().css("background", "#ffffff");
		//
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv).children().first()).hide();


		//
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv).children().first().css("background", "#666666").css("color", "#ffffff");
		//		$(".adminContent>div>div").eq(0).children().first().show();

	});
	$(".adminSubmenuContent>div>div").click(function() {
		//		$(".adminContent>div").eq(0).hide();
		//		$(this).hide();

		//		$(".adminContent>div").show();
		console.log(firstDiv);
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(this).css("background", "#666666").css("color", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv)).hide();
		$(".adminContent>div>div").show();
		$(".adminContent>div").eq(firstDiv).children().not($(".adminContent>div").eq(firstDiv).children().eq($(this).index())).hide();
		//		$(".adminContent>div>div").not($(".adminContent>div>div").eq($(this).index())).hide();
		//		//		$(".adminContent>div>div").not($(".adminContent>div>div").eq($(this).index())).hide();
		//		.eq($(this).index()).show();




	});
})
$(function() {
	google.charts.load('current', { 'packages': ['corechart'] });
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {

		var data = google.visualization.arrayToDataTable([
			['Task', 'Hours per Day'],
			['Work', 11],
			['Eat', 2],
			['Commute', 2],
			['Watch TV', 2],
			['Sleep', 7]
		]);

		var options = {
			title: '회원들의 방문현황'
		};

		var chart = new google.visualization.PieChart(document.getElementById('piechart'));

		chart.draw(data, options);
	}
})
//--------------------------------------------------------------------------------------------

function checkAll(checkAll) {
	let checkboxes = document.getElementsByName("checkbox");
	console.log(checkboxes);
	checkboxes.forEach((checkbox) => {
		console.log(checkbox);
		checkbox.checked = checkAll.checked;
	})
}
//---------------------------------------------------------------------------------------------

$(function() {
	//후기작성 or 예약취소 버튼 생성
	var statusArray = [];
	var arrlength = $(".book>li:nth-of-type(6)").text().length;
	var showStatus = $(".book>li:nth-of-type(6)").text();
	var state = $(".book>li:nth-of-type(6)").text().replace(/^\s+|\s+$/gm, '');//공백제거한 상태
	var stateStr = state.replaceAll("\n", "");//엔터 제거한 상태
	var statelength = stateStr.length;
	//console.log(stateStr.length);
	//console.log(stateStr);
	//console.log($.trim(showStatus));
	//console.log("showstatus=>"+showStatus);
	//console.log("arrlength=>"+arrlength);
	//console.log(statelength);
	for (var i = 0; i < statelength / 4; i++) {
		statusArray[i] = stateStr.substring(4 * i, 4 * (i + 1));
		console.log($(".showid").eq(i).val());
		console.log($(".no").eq(i - 1).val())
		//console.log(${bvo.no}.eq(i).val());
		if (statusArray[i] == '관람완료') {
			$(".book>li:nth-of-type(7):eq(" + i + ")").append("<input type='button' value='후기작성하기' class='reviewBtn' onclick='location.href=\"/show/showDetail?show_id=" + $(".showid").eq(i - 1).val() + "&no=" + $(".no").eq(i - 1).val() + "&stD=" + $(".stD").eq(i - 1).val() + "\"'/>");
		} else if (statusArray[i] == '예약완료') {
			//console.log("orderno=>");
			$(".book>li:nth-of-type(7):eq(" + i + ")").append("<input type='button' value='티켓확인하기' class='checkBtn' onclick='location.href=\"/book/bookCheck?no=" + $(".no").eq(i - 1).val() + "\"'/>");
		}
	}

	//날짜 기간 검색
	$('#date').daterangepicker({
		linkedCalendars: false,
		//autoUpdateInput: false,
		"locale": {
			"format": "YYYY.MM.DD",
			"separator": " ~ ",
			"applyLabel": "적용",
			"cancelLabel": "취소",
			"fromLabel": "From",
			"toLabel": "To",
			"customRangeLabel": "Custom",
			"daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
			"monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
		},
	}, function(start, end, label) {
		console.log('선택된 날짜: ' + start.format('YYYY.MM.DD') + ' to ' + end.format('YYYY.MM.DD'));
		$("#date").val(start.format('YYYY.MM.DD') + " ~ " + end.format('YYYY.MM.DD'));
		$("#startdate").val(start.format('YYYY.MM.DD'));
		$("#enddate").val(end.format('YYYY.MM.DD'));
	});

	$(".searchBtn").click(function() {
		$("#searchFrm").submit();
	});


});


//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------

