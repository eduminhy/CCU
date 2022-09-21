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
           
           
           $("[name=addr1]").val(data.zonecode);
           $("[name=addr2]").val(fullRoadAddr);
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}

</script>
</head>
<body>
	<div class="cculogo">
	<img src="../img/logo01.PNG" width=100px; height=100px;>
	</div>
	<br />
	<br />
	<!-- 아이디,비밀번호,닉네임,이름,연락처,주소 -->
<div class="signupcontainer">
	
		
		<input type="text" name="userid" id="userid" placeholder="아이디를 입력해주세요"><br /> 
		<input type="text" name="userpwd" id="userpwd" placeholder="비밀번호를 입력해주세요"><br />
		<input type="text" name="nickname" id="nickname" placeholder="닉네임을 입력해주세요"><br /> 
		<input type="text" name="username" id="username" placeholder="이름을 입력해주세요"><br />
		<input type="text" name="userbirth" id="userbirth" placeholder="생년월일을 입력해주세요 (8자리) EX:19990101"><br/>
		<label><input name="sex" type="radio" checked value="male">남</label>
		<input id="female" name="sex" type="radio" value="female"><label for="female">여</label><br/><br/>
		<input type="text" name="usertel1" id="usertel1" class="usertel" placeholder="연락처"> -
		<input type="text" name="usertel2" id="usertel2" class="usertel" placeholder="연락처"> -
		<input type="text" name="usertel3" id="usertel3" class="usertel" placeholder="연락처"> <br/>
		<button type="button" onclick="execPostCode();" class="zipcodebtn">우편번호 찾기</button><br/>
		<input type="text" name="addr1" readonly="readonly" id="addr1" placeholder="우편번호"><br/>
		<input type="text" name="addr2" id="addr2"  readonly="readonly" placeholder="도로명 주소"  /> <br/>
		<input type="text" name="addr3" id="addr3" placeholder="상세주소를 입력해주세요"><br />
		
		<button type="submit" value="회원가입" class="signupbtn">회원가입</button>
		<br /> 
		<br /> 
		<br />
		<img src="../img/navericon.png" width=80px; height=80px; id="navericon"> 
		<img src="../img/kakaoicon.png" width=80px; height=80px; id="kakaoicon">
		<img src="../img/googleicon.png" width=80px; height=80px; id="googleicon">
	</form>
</div>
</body>
</html>