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
	$(".searchFrm4").submit(function() {
		if ($(".searchWord4").val() == "") {
			alert("검색어를 입력하세요.");
			return false;
		}
		;

		return true;
	});
	$(".searchFrm5").submit(function() {
		if ($(".searchWord5").val() == "") {
			alert("검색어를 입력하세요.");
			return false;
		}
		;

		return true;
	});
	$(".searchFrm3").submit(function() {
		if ($(".searchWord3").val() == "") {
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
	$(".allChk3").click(
		function() {
			$(".UserDiv11 input[type=checkbox]").prop(
				"checked",
				$(".allChk3").prop("checked"));
		});
	$(".allChk4").click(
		function() {
			$(".UserDiv14 input[type=checkbox]").prop(
				"checked",
				$(".allChk4").prop("checked"));
		});
	$(".allChk5").click(
		function() {
			$(".UserDiv34 input[type=checkbox]").prop(
				"checked",
				$(".allChk5").prop("checked"));
		});
	$(".allChk51").click(
		function() {
			$(".UserDiv52 input[type=checkbox]").prop(
				"checked",
				$(".allChk51").prop("checked"));
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
	$(".multiDel3").click(

		function() {
			console.log(112);
			//체크갯수 확인
			var countChk = 0;
			$(".UserDiv11 input[name=noList]").each(
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
				$("#listFrm3").submit();
			}
			else if (con_test == false) {
				alert.write("취소합니다.");
			}
			$("#listFrm3").submit();
		});
	$(".multiDel4").click(

		function() {
			console.log(112);
			//체크갯수 확인
			var countChk = 0;
			$(".UserDiv14 input[name=noList]").each(
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
				$("#listFrm4").submit();
			}
			else if (con_test == false) {
				alert.write("취소합니다.");
			}
			$("#listFrm4").submit();
		});
	$(".multiDel5").click(

		function() {
			console.log(112);
			//체크갯수 확인
			var countChk = 0;
			$(".UserDiv34 input[name=noList]").each(
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
				$("#listFrm5").submit();
			}
			else if (con_test == false) {
				alert.write("취소합니다.");
			}
			$("#listFrm5").submit();
		});
	$(".multiDel51").click(

		function() {
			console.log(112);
			//체크갯수 확인
			var countChk = 0;
			$(".UserDiv52 input[name=noList]").each(
				function(idx, obj) {
					if (obj.checked) { //input테그가 체크상태일 경우 true 아니면 false
						countChk++;
					}
				});
			console.log(countChk);
			if (countChk <= 0) {
				alert("삭제할 채팅방를 선택후 삭제해주세요");
				return false;
			}
			;
			var con_test = confirm("정말로 채팅방을 삭제하시겠습니까?.");
			if (con_test == true) {
				alert("삭제합니다.");
				$("#listFrm51").submit();
			}
			else if (con_test == false) {
				alert.write("취소합니다.");
			}
			$("#listFrm51").submit();
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

	$("#DeleteBtn").click(

		function() {
			console.log(112);
			//체크갯수 확인
			var countChk = 0;
			$(".book input[name=noList]").each(
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
				$(".playMeetingTable").submit();
			}
			else if (con_test == false) {
				alert.write("취소합니다.");
			}
			$(".playMeetingTable").submit();
		});
});
//---------------------------------------------------------------------------------------------
$(document).ready(function() {
	//var testName = $('#rating_1_star5').attr("name");
	//var rating = $("input[name='"+testName+"']:checked").val();
	//var aaa = "1.0";

	if ($(".h4").attr('name') != "") {
		var firstDiv4 = 4;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv4).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv4)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv4).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv4).children().first().css("background", "#666666").css("color", "#ffffff");
		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv4).css("background", "#666666").css("color", "#ffffff");


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

	if ($(".h2").attr('name') != "") {
		var firstDiv5 = 5;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv5).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv5)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv5).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv5).children().first().css("background", "#666666").css("color", "#ffffff");
		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv5).css("background", "#666666").css("color", "#ffffff");
		//		console.log($(".adminSubmenu").eq(2))

	}
	if ($(".h5").attr('name') != "") {
		var firstDiv7 = 5;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv7).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv7)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv7).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv7).children().first().css("background", "#666666").css("color", "#ffffff");
		//		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv7).css("background", "#666666").css("color", "#ffffff");
		//		console.log($(".adminSubmenu").eq(2))

	}

	if ($(".h1").attr('name') != "") {
		var firstDiv6 = 6;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv6).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv6)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv6).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv6).children().first().css("background", "#666666").css("color", "#ffffff");
		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv6).css("background", "#666666").css("color", "#ffffff");


	}
	if ($(".h8").attr('name') != "") {
		var firstDiv8 = 1;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv8).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv8)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv8).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv8).children().first().css("background", "#666666").css("color", "#ffffff");
		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv8).css("background", "#666666").css("color", "#ffffff");


	}
	if ($(".h11").attr('name') != "") {
		var firstDiv11 = 3;
		$(".adminSubmenu>div").css("background", "#ffffff").css("color", "#666666");

		$(".adminSubmenuContent>div").hide();
		$(".adminSubmenuContent>div").eq(firstDiv11).show().css("background", "#ffffff");
		$(".adminContent>div").show();
		$(".adminContent>div>div").show();
		$(".adminContent>div").not($(".adminContent>div").eq(firstDiv11)).hide();
		$(".adminContent>div>div").not($(".adminContent>div").eq(firstDiv11).children().first()).hide();
		$(".adminSubmenuContent>div>div").css("background", "#ffffff").css("color", "#666666");
		$(".adminSubmenuContent>div").eq(firstDiv11).children().first().css("background", "#666666").css("color", "#ffffff");
		$(".adminContent>div>div").eq(0).children().first().show();
		$(".adminSubmenu>div").eq(firstDiv11).css("background", "#666666").css("color", "#ffffff");


	}
	//	$(".UserDiv6").hide();
	//		$(".UserDiv3[name='"+aaa+"']").hide();

	//		console.log($(".UserDiv2 [name='1']").show());
	//	$(".UserDiv3").hide();
	$(".UserDiv3").hide();
	$(".UserDiv6").hide();
	$(".UserDiv8").hide();
	$(".UserDiv12").hide();
	$(".UserDiv15").hide();
	$(".UserDiv35").hide();
	//	$(".UserDiv3").hide();
	var aaa = "1.0"
	$(".UserDiv6[name='" + aaa + "']").show();
	$(".divdivdiv2").click(function() {
		$(".UserDiv6").hide();
		var aaa = $(this).attr('name');
		console.log(aaa)
		aaa += ".0"
		console.log(aaa)
		$(".UserDiv6[name='" + aaa + "']").show();
	});

	var bbb = "1.0"
	//		console.log($(".UserDiv2 [name='1']").show());
	$(".UserDiv8[name='" + bbb + "']").show();
	$(".divdivdiv3").click(function() {
		$(".UserDiv8").hide();
		var bbb = $(this).attr('name');
		console.log(bbb)
		bbb += ".0"
		console.log(bbb)
		$(".UserDiv8[name='" + bbb + "']").show();
	});

	var ccc = "1.0"
	//		console.log($(".UserDiv2 [name='1']").show());
	$(".UserDiv12[name='" + ccc + "']").show();
	$(".divdivdiv4").click(function() {
		$(".UserDiv12").hide();
		var ccc = $(this).attr('name');

		ccc += ".0"

		$(".UserDiv12[name='" + ccc + "']").show();
	});
	$(".UserDiv15[name='" + ccc + "']").show();
	$(".divdivdiv5").click(function() {
		$(".UserDiv15").hide();
		var ddd = $(this).attr('name');

		ddd += ".0"

		$(".UserDiv15[name='" + ddd + "']").show();
	});
	var eee = "1.0"
	//		console.log($(".UserDiv2 [name='1']").show());
	$(".UserDiv35[name='" + eee + "']").show();
	$(".divdivdiv6").click(function() {
		$(".UserDiv35").hide();
		var eee = $(this).attr('name');

		eee += ".0"

		$(".UserDiv35[name='" + eee + "']").show();
	});

	var aaa = "1.0"
	$(".UserDiv3[name='" + aaa + "']").show();
	$(".divdivdiv").click(function() {
		$(".UserDiv3").hide();
		var aaa = $(this).attr('name');
		console.log(aaa)
		aaa += ".0"
		console.log(aaa)
		$(".UserDiv3[name='" + aaa + "']").show();
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

	if ($(".adminBody").attr('name') == "reportReview") {
		var firstDiv2 = 5;
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
	if ($(".adminBody").attr('name') == "reportMeet") {
		var firstDiv2 = 5;
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
	if ($(".adminBody").attr('name') == "review") {
		var firstDiv2 = 6;
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
	if ($(".adminBody").attr('name') == "chat") {
		var firstDiv2 = 3;
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
	$(".page>div").click(function() {
		$(".page>div").css("background", "white");
		$(this).css("background", "#cccccc");
	});

	$(".asdfqwer1").click(function() {
		console.log($(this).attr('name'));
		var chatlist = "chatList?id=";
		chatlist += $(this).attr('name');
		console.log(chatlist)
		window.open(chatlist, '네이버팝업',
			'width=660, height=870, scrollbars=yes, resizable=no');
	});

	//	function registChat() {
	//
	//		window.open('chatList', '네이버팝업',
	//			'width=640, height=640, scrollbars=yes, resizable=no');
	//	}
	$(".newdata").click(function() {
		console.log(11)
		$.ajax({
			type: "get",
			url: "/dbData/festivalInputMain",
			async: false,
			success: function(data) {

				console.log(data);

			},
			error: function(error) {

				console.log("error", error);
			}
		});
	});


//	var testInterval = setInterval(function() {
//		console.log("2초 시간마다 계속 실행됩니다.");
//	}, 2000);
//	setTimeout(function() {
//		clearTimeout(testInterval);
//	}, 7000);
//
});


