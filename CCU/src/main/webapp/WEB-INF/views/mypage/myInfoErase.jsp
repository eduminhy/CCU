<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/mypage/myInfoEraseStyle.css">

<script>
	$(function(){
		$("#password").focus();
		$("#eraseFrm").submit(function(){
			if($("#password").val()==""){
				alert("비밀번호를 입력하세요.");
				return false;
			}
			return true;
		});
	});
</script>
<div class="container">
	<form method="post"	action="/mypage/myInfoEraseOk" id="eraseFrm">
		<span id="eraseTitle">-회원탈퇴-</span><br/><br/><br/>
		<span id="warn">※회원탈퇴를 위해서 비밀번호를 입력해주세요.※</span><br/><br/>
		<input type="password" name="password" id="password"/>
		<input type="submit" id="eraseBtn" value="탈퇴하기"/>
	</form>
</div>