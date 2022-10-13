<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/style/mypage/myCommentStyle.css">
<script>
	$(function(){
		//리스트 전체선택
		$("#allChk").click(function(){
			$(".comment input[type=checkbox]").prop("checked", $("#allChk").prop("checked"));
		});
		
		$("#DeleteBtn").click(function(){
			var countChk = 0;
			$(".comment input[name=noList]").each(function(idx, obj){
				if(obj.checked){
					countChk++;
				}
			});
			if(countChk<=0){
				alert("삭제할 글을 선택해주세요.");
				return false;
			}
			$("#commentFrm").submit();
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
			<li><a href="myQna">나의 문의내역</a></li>
		</ul>
	</div>
		
	<form method="post" action="/mypage/myCommentDel" id="commentFrm">
		<ul>
			<li>
				<ul id="commentList">
					<li>
						<ul class="comment">
							<li><input type="checkbox" id="allChk"/></li>
							<li>글번호</li>
							<li>게시판분류</li>
							<li>댓글</li>
							<li>작성날짜</li>
						</ul>
					</li>
					<c:forEach var="rvo" items="${rvo }">
					<li>
						<ul class="comment">	
							<li><input type="checkbox" name="noList" value="${rvo.id }"/></li>
							<li>${rvo.board_id }</li>
							<li>${rvo.genre }</li>
							<li><a href="/meeting/view/${rvo.board_id }">${rvo.content }</a></li>
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