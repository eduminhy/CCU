<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.6.1.js"
	integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
	crossorigin="anonymous"></script>
<style>
</style>
<script>
	$(function() {
		$("#searchbtn").click(function() {
			// 			if($("#name").val()==""){
			// 				alert("검색하실 공연을 입력해주세요");
			// 				return false;
			// 			}
			// 			console.log(111);

			// 			var formData = 	$("#showFrm").serialize() ;
			//  			console.log($("#name").val());
			$.ajax({
				url : '/meeting/showSearch',
				type : 'post',
				data : {
					name : $("#name").val()
				},
				//  				contentType : 'application/json; charset=UTF-8',
				success : function(data) {
					console.log(JSON.parse(data));
					var showdata = JSON.parse(data);
					console.log(showdata[0].id);
					$.each(showdata, function(key, value) {
						console.log('키 : ' + key + ', 값 :' + value.id);
						$("#showList15").append("<h1>" + value.id + "</h1>");
						$("#showList15").append("<h1>" + value.name + "</h1>");
					});

				},
				error : function(error) {
					// 					console.log(error);
				}
			});
		});

		// 		$(".name").click(function(){
		// 			opener.$("#name").val($(this).prev().text()); 
		// 			opener.$("#name").val($(this).text()); 
		// 			window.close();
		// 		});

	});
</script>
<div class="">
	<p>공연을 검색 후 선택해주세요!
	<div id="showList15">
		aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaa</div>
	</p>
	<form id="showFrm">
		공연명 : <input type="text" name="name" id="name" value="사람"> <input
			type="button" value="공연 검색" id="searchbtn">
	</form>
	<!-- 	<div id = "showList"> -->
	<%-- 		<c:forEach var = "showVO" items = "${showList}"> --%>
	<%-- 			<li>${showVO.name }</li> --%>
	<%-- 			<li class = "name">${showVO.showdb_id }&nbsp;${showVO.name }</li> --%>
	<%-- 		</c:forEach> --%>
	<!-- 	</div> -->
</div>
