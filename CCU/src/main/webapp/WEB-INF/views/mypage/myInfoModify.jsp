<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/style/mypage/myInfoModifyStyle.css">
<script>
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