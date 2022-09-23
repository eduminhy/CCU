<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/style/mypage/myInfoModifyStyle.css">
<script>
	//파일첨부
	function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('pre').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('pre').src = "";
	  }
	}
	
	$(function(){
		$("#certification").click(function(){
			
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
		          url: "/sms2", // 예: https://www.myservice.com/certifications
		          method: "POST",
		          dataType: "json",
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
	<h1>- 나의 정보 수정하기 -</h1>
	
	<table id="content">
		<tr class="rows">
			<th>아이디</th>
			<td>hymin</td>
		</tr>
		<tr class="rows">
			<th>비밀번호</th>
			<td><input type="password" value="●●●●●●●●"/></td>
		</tr>
		<tr class="rows">
			<th>프로필</th>
			<td><div id="profile"><img src="../img/minion03.gif" id="pre"></div><input type="file" name="fname" id="filename" accept="image/*" onchange="readURL(this);"/></td>
		</tr>
		<tr class="rows">
			<th>본인인증</th>
			<td><span>N</span><input type="button" value="본인인증하기" id="certification"/></td>
		</tr>
		<tr class="rows">
			<th>닉네임</th>
			<td><input type="text" value="토끼"/></td>
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
			<td>
				<input type="text" value="인천광역시 연수구 하모니로177번길 17(송도동) 403동 806호" size=50/>
				&nbsp;<input type="button" value="우편번호찾기" id="addBtn"/>
			</td>
		</tr>
	</table>
	
	<input type="button" value="저장" id="save" onclick="location.href='myInfo'"/>
</div>