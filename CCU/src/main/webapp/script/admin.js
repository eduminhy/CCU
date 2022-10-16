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



//  게시글 관련---------------------------------------------------------------------------------------------
$(function() {
	$(".searchFrm").submit(function() {
		if ($(".searchWord").val() == "") {
			alert("검색어를 입력하세요.");
			return false;
		}
		;

		return true;
	});
	$(".searchFrm2").submit(function() {
		if ($(".searchWord2").val() == "") {
			alert("검색어를 입력하세요.");
			return false;
		}
		;

		return true;
	});
	//리스트 전체 선택
	$(".allChk").click(
		function() {
			$(".UserDiv2 input[type=checkbox]").prop(
				"checked",
				$(".allChk").prop("checked"));
		});
	$(".allChk2").click(
		function() {
			$(".UserDiv5 input[type=checkbox]").prop(
				"checked",
				$(".allChk2").prop("checked"));
		});

	//선택된 갯수를 구하여 여러개를 삭제하도록 한다.
	$(".multiDel2").click(

		function() {
			console.log(112);
			//체크갯수 확인
			var countChk = 0;
			$(".UserDiv5 input[name=noList]").each(
				function(idx, obj) {
					if (obj.checked) { //input테그가 체크상태일 경우 true 아니면 false
						countChk++;
					}
				});
			console.log(countChk);
			if (countChk <= 0) {
				alert("삭제할 레코드를 선택후 삭제해주세요");
				return false;
			}
			;
			var con_test = confirm("정말로 게시글을 삭제하시겠습니까?.");
			if (con_test == true) {
				alert("삭제합니다.");
				$("#listFrm2").submit();
			}
			else if (con_test == false) {
				alert.write("취소합니다.");
			}
			$("#listFrm2").submit();
		});
	$(".multiDel").click(

		function() {
			console.log(112);
			//체크갯수 확인
			var countChk = 0;
			$(".UserDiv2 input[name=noList]").each(
				function(idx, obj) {
					if (obj.checked) { //input테그가 체크상태일 경우 true 아니면 false
						countChk++;
					}
				});
			console.log(countChk);
			if (countChk <= 0) {
				alert("삭제할 레코드를 선택후 삭제해주세요");
				return false;
			}
			;
			var con_test = confirm("정말로 해당유저 기록을 삭제하시겠습니까?.");
			if (con_test == true) {
				alert("삭제합니다.");
				$("#listFrm").submit();
			}
			else if (con_test == false) {
				alert.write("취소합니다.");
			}
			$("#listFrm").submit();
		});
});
//---------------------------------------------------------------------------------------------
$(document).ready(function() {
	//var testName = $('#rating_1_star5').attr("name");
	//var rating = $("input[name='"+testName+"']:checked").val();
	//var aaa = "1.0";
	$(".UserDiv3").hide();
	//	$(".UserDiv3[name='"+aaa+"']").hide();
	var aaa = "1.0"
	//	console.log($(".UserDiv2 [name='1']").show());
	$(".UserDiv3[name='" + aaa + "']").show();
	$(".divdivdiv").click(function() {
		$(".UserDiv3").hide();
		var aaa = $(this).attr('name');
		console.log(aaa)
		aaa += ".0"
		console.log(aaa)
		$(".UserDiv3[name='" + aaa + "']").show();
	});
	if ($(".h4").attr('name') != "") {
		var firstDiv2 = 4;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv2).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv2)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv2).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv2).children().first().css("background", "#666666").css("color", "#ffffff");
		//		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv2).css("background", "#666666").css("color", "#ffffff");
		//		console.log($(".adminSubmenu").eq(2))

	}
		if ($(".h3").attr('name') != "") {
		var firstDiv2 = 2;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv2).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv2)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv2).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv2).children().first().css("background", "#666666").css("color", "#ffffff");
		//		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv2).css("background", "#666666").css("color", "#ffffff");
		//		console.log($(".adminSubmenu").eq(2))

	}

//	$(".UserDiv6").hide();
//		$(".UserDiv3[name='"+aaa+"']").hide();
	var aaa = "1.0"
//		console.log($(".UserDiv2 [name='1']").show());
	$(".UserDiv6[name='" + aaa + "']").show();
	$(".divdivdiv2").click(function() {
		$(".UserDiv6").hide();
		var aaa = $(this).attr('name');
		console.log(aaa)
		aaa += ".0"
		console.log(aaa)
		$(".UserDiv6[name='" + aaa + "']").show();
	});
	//	if ($(".h3").attr('name') == ""&& &&) {
	//		firstDiv = ($(this).index());
	//		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");
	//	
	//		$(".adminSubmenuContent>div").hide();
	//		$(".adminSubmenuContent>div").eq($(this).index()).show().css("background", "#ffffff");
	//		$(".adminContent>div").show();
	//		$(".adminContent>div>div").show();
	//		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv)).hide();
	//		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv).children().first()).hide();
	//		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
	//		$(".adminSubmenuContent>div").eq(firstDiv).children().first().css("background", "#666666").css("color", "#ffffff");
	//		//		$(".adminContent>div>div").eq(0).children().first().show();
	//		$(".adminSubmenu>div").eq(2).css("background", "#666666").css("color", "#ffffff");
	//		console.log($(".adminSubmenu").eq(2))
	//
	//	}
	//	$(this).attr('name');
	//	$(".divdivdiv11").click(function() { console.log(11) });
	if ($(".adminBody").attr('name') == "board") {
		var firstDiv2 = 2;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv2).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv2)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv2).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv2).children().first().css("background", "#666666").css("color", "#ffffff");
		//		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv2).css("background", "#666666").css("color", "#ffffff");
		//		console.log($(".adminSubmenu").eq(2))
	}
	if ($(".adminBody").attr('name') == "user") {
		var firstDiv2 = 4;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv2).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv2)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv2).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv2).children().first().css("background", "#666666").css("color", "#ffffff");
		//		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv2).css("background", "#666666").css("color", "#ffffff");
		//		console.log($(".adminSubmenu").eq(2))
	}
});