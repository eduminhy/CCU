<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/mypage/myReviewStyle.css">
<script>
	$(function(){
		//리스트 전체선택
		$("#allChk").click(function(){
			$(".review input[type=checkbox]").prop("checked", $("#allChk").prop("checked"));
		});
		
		$("#DeleteBtn").click(function(){
			var countChk = 0;
			$(".review input[name=noList]").each(function(idx, obj){
				if(obj.checked){
					countChk++;
				}
			});
			if(countChk<=0){
				alert("삭제할 글을 선택해주세요.");
				return false;
			}
			alert("후기를 삭제하시겠습니까?");
			$("#reviewFrm").submit();
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
	
	<form method="post" action="/mypage/myReviewDel" id="reviewFrm">
		<ul>
			<li>
				<ul id="reviewList">
					<li>
						<ul class="review">
							<li><input type="checkbox" id="allChk"/></li>
							<li>번호</li>
							<li>공연명</li>
							<li>공연포스터</li>
							<li>후기내용</li>
							<li>별점</li>
							<li>작성일</li>
						</ul>
					</li>
					<c:forEach var="rvo" items="${relist }">
					<li>
						<ul class="review">
							<li><input type="checkbox" name="noList" value="${rvo.id }"/></li>
							<li>${rvo.id }</li>
							<li><a href="/show/showDetail?show_id=${rvo.show_id }">${rvo.name }</a></li>
							<li><img src="${rvo.mainposter }"/></li>
							<li><a href="/show/showDetail?show_id=${rvo.show_id }">${rvo.content }</a></li>
							<li>★ ${rvo.rate }</li>
							<li>${rvo.writedate }</li>
						</ul>
					</li>
					</c:forEach>
				</ul>
			</li>
		</ul>
		<input type="button" value="삭제" id="DeleteBtn"/>	
	</form>
</div>