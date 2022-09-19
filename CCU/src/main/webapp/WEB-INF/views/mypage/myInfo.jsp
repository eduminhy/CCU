<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/style/myInfoStyle.css">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
$(function(){
	$("#leave").click(function(){
		
		var IMP = window.IMP; // 생략가능
		IMP.init('imp52376674'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		
		 IMP.certification({ // param
			    merchant_uid: "ORD20180131-0000011", // 주문 번호
			    m_redirect_url : "{리디렉션 될 URL}", // 모바일환경에서 popup:false(기본값) 인 경우 필수, 예: https://www.myservice.com/payments/complete/mobile
			    popup : false // PC환경에서는 popup 파라메터가 무시되고 항상 true 로 적용됨
		  }, function (rsp) { // callback
		    if (rsp.success) { // 인증 성공 시
		        // jQuery로 HTTP 요청
		        jQuery.ajax({
		          url: "{서버의 인증 정보를 받는 endpoint}", // 예: https://www.myservice.com/certifications
		          method: "POST",
		          headers: { "Content-Type": "application/json" },
		          data: { imp_uid: rsp.imp_uid }
		        });
		      } else {
		        alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
		      }
		 });
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
	
	<table id="content">
		<tr class="rows">
			<th>아이디</th>
			<td>hymin</td>
		</tr>
		<tr class="rows">
			<th>비밀번호</th>
			<td><input type="password" value="●●●●●●●●" readonly/></td>
		</tr>
		<tr class="rows">
			<th>프로필</th>
			<td><div id="profile"><img src="../img/minion03.gif" id="pre"/></div></td>
		</tr>
		<tr class="rows">
			<th>닉네임</th>
			<td>토끼</td>
		</tr>
		<tr class="rows">
			<th>이름</th>
			<td>민하영</td>
		</tr>
		<tr class="rows">
			<th>연락처</th>
			<td>010-6380-7619</td>
		</tr>
		<tr class="rows">
			<th>주소</th>
			<td>인천광역시 연수구 하모니로177번길 17(송도동) 403동 806호</td>
		</tr>
	</table>
	
	<input type="button" value="회원탈퇴" class="btn" id="leave"/>
	<input type="button" value="수정" class="btn" id="modify" onclick="location.href='myInfoModify'"/>
</div>