<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/signupStyle.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/addressapi.js"></script>
<script>
	$(function(){
		$("#idChk").click(function(){
			
			
			
			window.open("/user/idCheck?id="+$("#id").val(),"idChk","width=400, height=300px",  style="display:none;");
		});
		
		$("#id").change(function(){
			$("#idCheckStatus").val("N");
		});
		
		
		$("#uFrm").submit(function(){
			console.log(22223)
			// id
			if($("#id").val()==""){
				alert("아이디를 입력하세요");
				return false;
			}
			
			console.log("eeeeee00", $("#idCheckStatus").val());
			
			// id 중복 검사 여부
			if($("#idCheckStatus").val()!="Y"){
				alert("아이디 중복검사를 진행하세요");
				return false;
			}
			
			// 비밀번호
			if($("#password").val()==""){
				alert("비밀번호를 입력하십시오");
				return false;
			}
			if($("#password").val() != $("#password2").val()){
				alert("비밀번호가 틀렸습니다.");
				return false;
			}
			
			// 이름
			if($("#username").val()==""){
				alert("이름을 입력하세요");
				return false;
			}
			
			// 연락처
			if($("#tel1").val() == "" || $("#tel2").val() == "" || $("#tel3").val() == ""){
				alert("연락처를 올바르게 기재하세요");
				return false;
			}

		});
	});
		
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
	           
	           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	       }
	    }).open();
	}

</script>
</head>
<body>
	
	<!-- 아이디,비밀번호,닉네임,이름,연락처,주소, 우편번호, 생년월일, 성별, 가입경로, 이메일수신동의여부, 메시지 수신동의 여부 -->
<div class="signupcontainer">
<span class="signuptitle">-회원가입-</span>
<form method="post" action="/user/signupWrite" id="uFrm">
	<ul>	
		<li><input type="text" name="id" id="id" placeholder="아이디를 입력해주세요"></li>
		<li><input type="button" value="아이디중복검사" id="idChk"/></li>
		<br/>
		<li><input type="hidden" id="idCheckStatus" value="N"/></li>  
		<li><input type="password" name="password" id="password" placeholder="비밀번호를 입력해주세요"></li>
		<li><input type="password" name="password2" id="password2" placeholder="비밀번호를 확인해주세요"></li>
		<li><input type="text" name="email" id="email" placeholder="이메일을 입력해주세요"></li>
		<li><input type="text" name="nickname" id="nickname" placeholder="닉네임을 입력해주세요"></li>
		<li><input type="text" name="username" id="username" placeholder="이름을 입력해주세요"></li>
		<li><input type="text" name="birth" id="birth" placeholder="생년월일을 입력해주세요 (8자리) EX:19990101"></li>
		<li><input type="radio" name="gender" value="M" checked>남성
		<input type="radio" name="gender" value="F" checked>여성</li>
		<li><input type="text" name="tel1" id="tel1" class="tel" placeholder="연락처"> -
			<input type="text" name="tel2" id="tel2" class="tel" placeholder="연락처"> -
			<input type="text" name="tel3" id="tel3" class="tel" placeholder="연락처"></li> 
		<br/>
		<br/>
		<li><button type="button" onclick="execPostCode();" class="zipcodebtn">우편번호 찾기</button></li>
		<br/>
		<li><input type="text" name="zipcode" id="addr1" readonly="readonly"  placeholder="우편번호"></li>
		<li><input type="text" name="road_name" id="addr2"  readonly="readonly" placeholder="도로명 주소"  /> </li>
		<li><input type="text" name="addr" id="addr3" placeholder="상세주소를 입력해주세요"></li>
		<span><b>광고 및 이벤트성 '이메일' 수신동의 여부</b></span>
		<li><input type="radio" name="agree_to_receive_email" value="0" checked>동의함
		<input type="radio" name="agree_to_receive_email" value="1" checked>동의하지않음</li>
		<br/>
		<span><b>광고 및 이벤트성 '문자' 수신동의 여부</b></span>
		<li><input type="radio" name="agree_to_receive_msg" value="0" checked>동의함
		<input type="radio" name="agree_to_receive_msg" value="1" checked>동의하지않음</li>
		<br/>
		<span><b>CCU 가입경로를 선택해주세요</b></span>
		<br/>
		<li><input type="radio" name="route" value="광고" checked> 광고
		<input type="radio" name="route" value="검색" checked> 검색
		<input type="radio" name="route" value="추천" checked> 추천
		<input type="radio" name="route" value="기타" checked> 기타</li>
<!-- 		<li><input type="text" name="route" id="route" placeholder= "가입경로를 입력해주세요"></li> -->
		</br>
		<li><input type="submit" value="회원가입" class="signupbtn"></li>
	
<!-- 		<li><img src="../img/navericon.png" width=80px; height=80px; id="navericon"> -->
<!-- 		<li><img src="../img/kakaoicon.png" width=80px; height=80px; id="kakaoicon"></li> -->
<!-- 		<a href="/oauth2/authorization/google"><li><img src="../img/googleicon.png" width=80px; height=80px; id="googleicon"></li></a> -->
	</ul>
</form>

</div>
</body>
</html>