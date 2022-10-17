<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<link rel="stylesheet" href="/style/mypage/myInfoStyle.css">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
	
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
	<table id="content">
		<tr class="rows">
			<th>아이디</th>
			<td>${vo.id}<input type="hidden" name="userid" id="userid" value="${vo.id }"/></td>
		</tr>
		<tr class="rows">
			<th>프로필</th>
			<td>
				<c:if test="${empty vo.img}">
					<div id="profile"><img src="../profileImg/profile.jpg" id="pre"/></div>
				</c:if>	
				<c:if test="${vo.img  ne null}">
					<div id="profile"><img src="../profileImg/${vo.img}" id="pre"/></div>
				</c:if>
			</td>
					
		</tr>
		<tr class="rows">
			<th>본인인증</th>
			<td>
				<c:if test="${vo.self_certification eq 0}"><c:out value="N"/></c:if>
				<c:if test="${vo.self_certification eq 1}"><c:out value="Y"/></c:if>
			</td>
		</tr>
		<tr class="rows">
			<th>닉네임</th>
			<td>${vo.nickname}</td>
		</tr>
		<tr class="rows">
			<th>이름</th>
			<td>${vo.username }</td>
		</tr>
		<tr class="rows">
			<th>연락처</th>
			<td>${vo.tel }</td>
		</tr>
		<tr class="rows">
			<th>주소</th>
			<td>${vo.road_name}&nbsp;${vo.addr }</td>
		</tr>
	</table>
	<c:set var="snscheck" value="${vo.id }"/>
	<c:set var="length" value="${fn:length(snscheck)}"/>
	<c:set var="snscheck2" value="${fn:substring(snscheck, length -4, length)}"/>
	
	<c:if test="${snscheck2 eq '.com'}">
		<input type="button" value="회원탈퇴" class="btn" class="snsbtn" id="leave"  onclick="location.href='/mypage/snsInfoErase'"/>
	</c:if>
	<c:if test="${snscheck2 ne '.com'}">
		<input type="button" value="회원탈퇴" class="btn" id="leave" onclick="location.href='/mypage/myInfoErase'"/>
	</c:if>
	<input type="button" value="수정" class="btn" id="modify" onclick="location.href='myInfoModify'"/>
</div>