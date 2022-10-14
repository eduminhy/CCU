<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/mypage/myHeartListStyle.css">
<script>
	$(function(){
		for(var i=0;i<${cnt};i++){
			if($(".showname").eq(i).text().length>13){
				var showN = $(".showname").eq(i).text().substr(0,13)+"...";
				$(".showname").eq(i).text(showN);				
			}
		}
		
		$(".delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				$.ajax({
					type:"get",
					url:"/mypage/myHeartListDel",
					data:{
						showdb_id : $(".showdb_id").val()
					},success:function(){
						location.href="/mypage/myHeartList"
					},error:function(){
						console.log(e.responseText);
					}
				});
			}
		});
	});
</script>
<div class="container">
	<h1>- 마이페이지 -</h1>
	<div id="myTapmenu">
		<ul>
			<li><a href="myInfo">나의 정보</a></li>
			<li><a href="myReservation">나의 예매내역</a></li>
			<li><a href="myHeartList">나의 찜목록</a></li>
			<li><a href="myBoard">나의 게시글</a></li>
			<li><a href="myComment">나의 댓글</a></li>
			<li><a href="myReview">나의 후기</a></li>
		</ul>
	</div>
	
	<div id="heartList">
		<c:forEach var="vo" items="${myfavlist}">
		<ul>
			<li><input type="hidden" class="showdb_id" name="showdb_id" value="${vo.id }"/></li>
			<li><a href="/show/showDetail?show_id=${vo.id}"><img src="${vo.mainposter}"/></a></li>
			<li class="showname">${vo.name }</li>
			<li>${vo.startdate } ~ ${vo.enddate }</li>
			<li><input type="button" value="X 삭제" class="delBtn"/></li>
		</ul>
		</c:forEach>
	</div>
		
</div>