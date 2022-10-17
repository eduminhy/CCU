<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<style>
</style>
<script>
	$(function() {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp76154120'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		
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
		  
		  
		  
// 		jQuery.ajax({
// 				url : "{서버의 인증 정보를 받는 endpoint}", // 예: https://www.myservice.com/certifications
// 				method : "POST",
// 				headers : {
// 					"Content-Type" : "application/json"
// 				},
// 				data : {
// 					imp_uid : rsp.imp_uid
// 				}
// 			});
// 		var IMP = window.IMP; // 생략 가능
// 		IMP.init("imp76154120");

// 		// IMP.certification(param, callback) 호출
// 		IMP.certification({ // param
// 			merchant_uid : "ORD20180131-0000011", // 주문 번호
// 			m_redirect_url : "/login", // 모바일환경에서 popup:false(기본값) 인 경우 필수, 예: https://www.myservice.com/payments/complete/mobile
// 			popup : false
// 		// PC환경에서는 popup 파라메터가 무시되고 항상 true 로 적용됨
// 		}, function(rsp) { // callback
// 			if (rsp.success) { // 인증 성공 시
// 				// jQuery로 HTTP 요청
// 				jQuery.ajax({
// 					url : "{서버의 인증 정보를 받는 endpoint}", // 예: https://www.myservice.com/certifications
// 					method : "POST",
// 					headers : {
// 						"Content-Type" : "application/json"
// 					},
// 					data : {
// 						imp_uid : rsp.imp_uid
// 					}
// 				});
// 			} else {
// 				alert("인증에 실패하였습니다. 에러 내용: " + rsp.error_msg);
// 			}
// 		});
	});
</script>
</head>
<body>aaaa
</body>
</html>