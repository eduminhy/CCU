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

	function checkAll(checkAll){
		let checkboxes=document.getElementsByName("checkbox");
		console.log(checkboxes);
		checkboxes.forEach((checkbox)=>{
			console.log(checkbox);
			checkbox.checked=checkAll.checked;
		})
	}
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
