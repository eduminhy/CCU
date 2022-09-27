<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<li><a href="myQna">나의 문의내역</a></li>
		</ul>
	</div>
	<table id="content">
		<tr class="rows">
			<th>아이디</th>
			<td>${vo.id}</td>
		</tr>
		<tr class="rows">
			<th>프로필</th>
			<td><div id="profile"><img src="${vo.img}" id="pre"/></div></td>
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
	
	<input type="button" value="회원탈퇴" class="btn" id="leave"/>
	<input type="button" value="수정" class="btn" id="modify" onclick="location.href='myInfoModify'"/>
</div>