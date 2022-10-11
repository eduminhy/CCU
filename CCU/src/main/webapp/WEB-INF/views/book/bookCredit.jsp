<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/bookCreditStyle.css">
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	$(function() {
		//ticket 가격변동부분
		var ticket = $("#ticket").val();
		var ticketStr = ticket.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		$("#total").val(ticket);//초기 결제가격
		$("#selectbox").on('change', function() {
			var state = $('#selectbox option:selected').val();
			if (state == 'op1') {
				var deliver = 0;
			} else {
				deliver = 3000;
			}
			$("#deliver").val(deliver);
			ticket = parseInt(ticket);
			var total = ticket + deliver;
			$("#total").val(total);
		});
		
		

		var sn = [];
		for(var i=0;i<$("#seatCnt").val();i++){
			//console.log($("input[name=seatNum]").eq(i).val());
			var seatnum = $("input[name=seatNum]").eq(i).val();
			sn.push(seatnum);
		}
		console.log(sn);//['A-7', 'A-8', 'A-9']
		
		//=========================================================

		$("#pay").on('click', function() {
			//수령자확인=====================================
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

			var IMP = window.IMP; // 생략 가능
			IMP.init("imp52376674");

			//결제 요청하기
			IMP.request_pay({
	      		pg : 'html5_inicis',//kg이니시스
			    pay_method : 'card',
			    merchant_uid: "order_"+new Date().getTime(), // 상점에서 관리하는 주문 번호 --> 공연번호
			    name : $("#showname").val()+'_'+$("#scheduleDate_id").val(),
			    amount : 10,
			    buyer_email : $("#email").val(),
			    buyer_name : $("#buyer").val(),
			    buyer_tel : $("#tel1").val()+'-'+ $("#tel2").val()+'-'+ $("#tel3").val(),
			    buyer_addr : $("#addr").val(),
			    buyer_postcode : $("#postcode").val()

			}, function(rsp) {
				var result = '';
				if (rsp.success) {
					//console.log(rsp);
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					result = '0';
					
				}else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					result = '1';
					alert(msg);
				}
				if (result == '0') {
					//alert(msg);
					
					var params = {
							imp_uid:rsp.imp_uid,
							orderno:rsp.merchant_uid,
							applynum:rsp.apply_num,
							price:rsp.paid_amount,
							addr:$("#addr").val(),
							email:$("#email").val(),//
							seatNum:sn,
							seatCnt:$("#seatCnt").val(),
							scheduleDate_id:$("#scheduleDate_id").val()//
							};
					console.log(params);
					$.ajax({
						url:"/book/bookCreditOk",
						type:"post",
						data:params,
						//dataType:"json",
						//contentType:"application/json; charset=utf-8",
						success:function(data){
							// 티켓 페이지로 이동
							location.href='/book/bookCheck?no='+rsp.merchant_uid;
						},error:function(error){
							console.log(error);
						}
					});
					//$("#creditFrm").submit();
				}
			});
			
		});//결제하기 click 닫는부분
	});//jqeury 닫는 부분
</script>
<div class="container">
	<form method="post" id="creditFrm">
	<input type="hidden" id="scheduleDate_id" name="scheduleDate_id" value="${sdvo.id}"/>
	<div class="context">
	<div id="infoReceive">
		<div><h1>STEP02 티켓수령정보</h1></div>
		<ul>
			<li class="title">01. 수령방법</li>
			<li>
				<select id="selectbox">
				<option value="op1">현장수령</option>
				<option value="op2">택배배송(배송비 +3,000원)</option>
				</select>
			</li>
			<hr/>
			<li class="title">02. 수령자 확인</li>
			<li><span class="detail">이름</span>&nbsp;<input type="text" name="buyer" id="buyer" value="${vo.username }"/></li>
			<li><span class="detail">긴급연락처</span>
				<input type="text" name="tel1" id="tel1" size="3" maxlength="3" value="${vo.tel1 }"/> - 
				<input type="text" name="tel2" id="tel2" size="4" maxlength="4" value="${vo.tel2 }"/> - 
				<input type="text" name="tel3" id="tel3" size="4" maxlength="4" value="${vo.tel3 }"/>
			</li>	
			<li><span class="detail">E-mail</span>&nbsp;<input type="text" name="email" id="email" value="eduminhy@gmail.com"/></li>
			<li><input type="hidden" id="postcode" value="${vo.zipcode}"/><input type="hidden" id="addr" name="addr" value="${vo.road_name }&nbsp;${vo.addr }"/></li>
			<hr/>
			
			<li id="warn"><span id="warnTitle">※주의사항※</span><br/><br/>
			* 부정확한 정보입력으로 인한 문제 발생 시 CCU는 책임을 지지 않습니다.<br/>
			1) 배송 선택 시 티켓 수령자의 배송지 정보를 정확히 입력해주시기 바랍니다.<br/>
			2) 티켓은 유가증권으로 본인에게 직접 전달해야하며, 분실된 티켓은 재발권 되지 않습니다.<br/>
			3) 일괄배송의 경우 정해진 날짜에 티켓 배송이 시작되며, 주소 수정은 일괄배송일 2일 전까지 가능합니다.<br/>
			4) 예매 티켓 배송은 예매완료일, 혹은 일괄배송일로부터 4~5일(영업일 기준) 이내 수령 가능합니다.<br/>
			5) 긴급연락처는 공연 취소와 같은 유사 시 안내 받으실 연락처이므로 정확히 입력해주시기 바랍니다.<br/>
			6) 이메일 정보 미 입력 시 예매 관련 안내 메일을 받을 수 없으니 이메일 받기를 원하시는 경우 마이페이지에서 회원정보를 수정해주시기 바랍니다.</li>
			<li><input type="checkbox" name="caution"/> 주의사항을 확인하였으며, 동의합니다.</li>
			<li><input type="checkbox" name="three"/> 제3자 정보제공 내용에 동의합니다.</li>
		</ul>			
	</div>
	<div id="infoBuy">
		<ul id="info">
			<li class="title">선택내역</li>
			<hr/>
			<li><span class="showinfo">공연명</span>&nbsp;<input type="text" id="showname" name="" value="${sdvo.name }" readonly></li>
			<li><span class="showinfo">공연장소</span>&nbsp;<input type="text" id="showplace" value="${sdvo.place_name }" readonly></li>
			<li><span class="showinfo">공연날짜</span>&nbsp;<input type="text" name="showWatchDate" value="${sdvo.showDate}" readonly/></li>
			<li><span class="showinfo">공연시간</span>&nbsp;<input type="text" name="showWatchTime" value="${sdvo.showTime }" readonly/></li>
			<li><span class="showinfo">좌석선택</span></li>
			<li><input type="hidden" name="seatCnt" id="seatCnt" value="${seatCnt }"/></li>
			<li id="seatBox"></li>
			<li>
			<c:forEach var="no" items="${seatNum}">
			<input type="text" name="seatNum" class="seatNum" value="${no }" readonly/>
			</c:forEach>
			</li>
		</ul>	
		<ul id="price">
			<span class="title">결제내역</span>
			<hr/>
			<li>티켓금액</li>
			<li><input type="text" name="ticket" id="ticket" value="${ticketPrice}" size="6"/></li>
			<li>배송비</li>
			<li><input type="text" name="deliver" id="deliver" value="0" size="6"/></li>
			<hr/>
			<li class="total">최종결제금액</li>
			<li class="total"><input type="text" name="total" id="total" value="" size="6"/></li>
		</ul>
		<input type="button" id="pay" value="결제하기"/>
	</div>
	</div>
	</form>
</div>