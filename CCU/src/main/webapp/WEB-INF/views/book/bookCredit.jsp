<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/bookCreditStyle.css">
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	$(function() {
		var ticket = $("#ticket").text();
		var ticketStr = ticket.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		$("#total").text(ticketStr + "원");//초기 결제가격
		$("#selectbox").on('change', function() {
			var state = $('#selectbox option:selected').val();
			if (state == 'op1') {
				var deliver = 0;
				console.log(deliver);
			} else {
				deliver = 3000;
			}
			$("#deliver").text(deliver);
			ticket = parseInt(ticket);
			var total = ticket + deliver;//정수형
			var totalStr = String(total);//문자형으로 변환
			var totalPrice = totalStr.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			$("#total").text(totalPrice + "원");
		});

		$("#pay").on('click', function() {
			//수령자확인
			if ($("#buyer").val() == "") {
				alert("이름을 입력해주세요.");
				return false;
			}
			if ($("#tel1").val() == "") {
				alert("연락처를 입력해주세요.");
				return false;
			}
			if ($("#tel2").val() == "") {
				alert("연락처를 입력해주세요.");
				return false;
			}
			if ($("#tel3").val() == "") {
				alert("연락처를 입력해주세요.");
				return false;
			}
			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요.");
				return false;
			}
			//체크박스 체크확인
			if ($("input:checkbox[name='caution']").is(":checked") == false) {
				alert("주의사항을 읽은 후 동의하기를 체크해주세요.");
				return false;
			}
			if ($("input:checkbox[name='three']").is(":checked") == false) {
				alert("제 3자 정보 제공에 동의해 주시기 바랍니다.");
				return false;
			}

			//결제하기
			var IMP = window.IMP; // 생략 가능
			IMP.init("imp76154120");

			//결제 요청하기
			IMP.request_pay({
				pg : 'html5_inicis',//kg이니시스
				pay_method : 'card',
				merchant_uid : "order_no_0000", // 상점에서 관리하는 주문 번호
				name : '주문명:결제테스트',
				amount : 100,
				buyer_email : '@gmail.com',
				buyer_name : 'CCU_홍길동',
				buyer_tel : '010-1234-5678',
				buyer_addr : '서울특별시 강남구 삼성동',
				buyer_postcode : '123-456'
			}, function(rsp) {
				// 			    if ( rsp.success ) {
				// 			    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
				// 			    	jQuery.ajax({
				// 			    		url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
				// 			    		type: 'POST',
				// 			    		dataType: 'json',
				// 			    		data: {
				// 				    		imp_uid : rsp.imp_uid
				// 				    		//기타 필요한 데이터가 있으면 추가 전달
				// 			    		}
				// 			    	}).done(function(data) {
				// 			    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
				// 			    		if ( everythings_fine ) {
				// 			    			console.log(1123);
				// 			    			var msg = '결제가 완료되었습니다.';
				// 			    			msg += '\n고유ID : ' + rsp.imp_uid;
				// 			    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
				// 			    			msg += '\결제 금액 : ' + rsp.paid_amount;
				// 			    			msg += '카드 승인번호 : ' + rsp.apply_num;
				// 			    			alert(msg);
				// 			    		} else {
				// 			    			//[3] 아직 제대로 결제가 되지 않았습니다.
				// 			    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
				// 			    		}
				// 			    	});
				// 			    	location.href="bookCheck";
				// 			    } else {
				// 			        var msg = '결제에 실패하였습니다.';
				// 			        msg += '에러내용 : ' + rsp.error_msg;
				// 			        alert(msg);
				// 			    }
				// 			}
				// https://docs.iamport.kr/tech/access-token?lang=ko
				// 결제 검증 시도..
				// console에 찍힌 값 : {success: true, imp_uid: 'imp_962452551026', pay_method: 'card', merchant_uid: 'order_no_0013', name: '주문명:결제테스트', …}
				// msg내용 : 결제가 완료되었습니다.고유ID : imp_962452551026상점 거래ID : order_no_0013결제 금액 : 100카드 승인번호 : 53769428
				var result = '';
				if (rsp.success) {
				//	console.log(rsp);
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					result = '0';
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					result = '1';
				}
				if (result == '0') {
					location.href = "bookCheck";
				}
				alert(msg);
			});
		});
	});
</script>
<div class="container">
	<div id="infoReceive">
		<div>
			<h1>STEP02 티켓수령정보</h1>
		</div>
		<ul>
			<li class="title">01. 수령방법</li>
			<li><select id="selectbox">
					<option value="op1">현장수령</option>
					<option value="op2">택배배송(배송비 +3,000원)</option>
			</select></li>
			<hr />
			<li class="title">02. 수령자 확인</li>
			<li><span class="detail">이름</span>&nbsp;<input type="text"
				name="buyer" id="buyer" /></li>
			<li><span class="detail">긴급연락처</span> <input type="text"
				name="tel1" id="tel1" size="3" maxlength="3" /> - <input type="text"
				name="tel2" id="tel2" size="4" maxlength="4" /> - <input type="text"
				name="tel3" id="tel3" size="4" maxlength="4" /></li>
			<li><span class="detail">E-mail</span>&nbsp;<input type="text"
				name="email" id="email" /></li>
			<hr />

			<li id="warn">주의사항<br /> * 부정확한 정보입력으로 인한 문제 발생 시 CCU는 책임을 지지
				않습니다.<br /> 1) 배송 선택 시 티켓 수령자의 배송지 정보를 정확히 입력해주시기 바랍니다.<br /> 2) 티켓은
				유가증권으로 본인에게 직접 전달해야하며, 분실된 티켓은 재발권 되지 않습니다.<br /> 3) 일괄배송의 경우 정해진
				날짜에 티켓 배송이 시작되며, 주소 수정은 일괄배송일 2일 전까지 가능합니다.<br /> 4) 예매 티켓 배송은
				예매완료일, 혹은 일괄배송일로부터 4~5일(영업일 기준) 이내 수령 가능합니다.<br /> 5) 긴급연락처는 공연 취소와
				같은 유사 시 안내 받으실 연락처이므로 정확히 입력해주시기 바랍니다.<br /> 6) 이메일 정보 미 입력 시 예매 관련
				안내 메일을 받을 수 없으니 이메일 받기를 원하시는 경우 마이페이지에서 회원정보를 수정해주시기 바랍니다.
			</li>
			<li><input type="checkbox" name="caution" /> 주의사항을 확인하였으며,
				동의합니다.</li>
			<li><input type="checkbox" name="three" /> 제3자 정보제공 내용에 동의합니다.</li>
		</ul>
	</div>
	<div id="infoBuy">
		<ul id="info">
			<li class="title">선택내역</li>
			<hr />
			<li><span class="showinfo">공연명</span>&nbsp;헤르츠클란</li>
			<li><span class="showinfo">공연장소</span>&nbsp;브릭씨어터</li>
			<li><span class="showinfo">공연날짜</span>&nbsp;2022.09.07(수)</li>
			<li><span class="showinfo">공연시간</span>&nbsp;20시 00분</li>
			<li><span class="showinfo">좌석선택</span></li>
			<li>B구역 10열 8번, B구역 10열 9번, B구역 10열 10번</li>
		</ul>
		<ul id="price">
			<span class="title">결제내역</span>
			<hr />
			<li>티켓금액</li>
			<li id="ticket">165500</li>
			<li>배송비</li>
			<li id="deliver">0</li>
			<hr />
			<li class="total">최종결제금액</li>
			<li class="total" id="total"></li>
		</ul>
		<input type="button" id="pay" value="결제하기" />
	</div>
</div>