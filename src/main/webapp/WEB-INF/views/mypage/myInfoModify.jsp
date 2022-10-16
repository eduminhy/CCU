<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/mypage/myInfoModifyStyle.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
	//우편번호찾기
	function execPostCode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	           var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	
	           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	               extraRoadAddr += data.bname;
	           }
	           // 건물명이 있고, 공동주택일 경우 추가한다.
	           if(data.buildingName !== '' && data.apartment === 'Y'){
	              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	           }
	           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	           if(extraRoadAddr !== ''){
	               extraRoadAddr = ' (' + extraRoadAddr + ')';
	           }
	           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	           if(fullRoadAddr !== ''){
	               fullRoadAddr += extraRoadAddr;
	           }
	
	           // 우편번호와 주소 정보를 해당 필드에 넣는다.
	           console.log(data.zonecode);
	           console.log(fullRoadAddr);
	           
	           $("[name=zipcode]").val(data.zonecode);
	           $("[name=road_name]").val(fullRoadAddr);
	           $("[name=addr]").val("");
	           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	       }
	    }).open();
	}
	
	//본인인증
	$(function(){
		/*
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
		*/
		
		$("#myinfoFrm").submit(function(){
			if($("#password").val()==""){
				alert("비밀번호를 입력하세요.");
				return false;
			}
			return true;
		});
	});
</script>
<div class="container">
	<h1>- 나의 정보 수정하기 -</h1>
	<form method="post" action="/mypage/myInfoModifyOk" id="myinfoFrm" enctype="multipart/form-data">
	<table id="content">
		<tr class="rows">
			<th>아이디</th>
			<td><input type="text" name="id" value="${vo.id}" readonly/></td>
		</tr>
		<tr class="rows">
			<th>비밀번호*</th>
			<td><input type="password" name="password" id="password" value="" placeholder="비밀번호를 입력하세요."/></td>
		</tr>
		<tr class="rows">
			<th>프로필*</th>
			<td>
				<c:if test="${empty vo.img}">
						<div id="profile"><img src="../profileImg/profile.jpg" id="pre"/></div>
				</c:if>	
				<c:if test="${vo.img  ne null}">
					<div id="profile"><img src="../profileImg/${vo.img}" id="pre"/></div>
				</c:if>
			
				<input type="file" name="fname" id="filename" accept="image/*" onchange="readURL(this);"/>
			</td>
		</tr>
		<tr class="rows">
			<th>닉네임*</th>
			<td><input type="text" name="nickname" value="${vo.nickname }"/></td>
		</tr>
		<tr class="rows">
			<th>이름</th>
			<td><input type="text" name="username" value="${vo.username }" readonly/></td>
		</tr>
		<tr class="rows">
			<th>연락처</th>
			<td><input type="text" name="tel" value="${vo.tel }" readonly/></td>
		</tr>
		<tr class="rows">
			<th rowspan='3'>주소*</th>
			<td>
				<input type="text" name="zipcode" value="${vo.zipcode }" size=5/>&nbsp;<input type="button" value="우편번호찾기" id="addBtn" onclick="execPostCode();"/>		
			</td>
		</tr>
		<tr class="rows">
			<td>
				<input type="text" name="road_name" value="${vo.road_name}" size=100/>
			</td>
		</tr>
		<tr class="rows">
			<td>
				<input type="text" name="addr" value="${vo.addr }" placeholder="상세주소를 입력하세요." size=100/>	
			</td>
		</tr>
	</table>
	<input type="submit" value="저장" id="save"/>
	</form>
</div>