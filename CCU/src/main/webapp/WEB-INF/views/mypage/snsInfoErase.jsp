<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
	body{margin:0; padding:0;}
	.container{width:1200px; overflow:auto; margin:0 auto; text-align:center;}
	#eraseFrm{padding:60px;}
	#eraseTitle{
		color:#440099; font-size:40px; font-weight:bold;
	}
	#warn{color:red; font-weight:bold;}
	#userid{
		height:40px; line-height:40px; width:300px;
		border:none; background-color:lavender; font-size:17px;
	}
	#userid:focus{outline:none;}
	#eraseBtn{
		height:40px; width:90px; margin:10px 5px 80px 15px;
		border:none; background-color:#440099; color:#fff;
		font-weight:bold; font-size:17px; 
		cursor:pointer;
	}
</style>
<div class="container">
	<form method="post" action="/mypage/snsInfoEraseOk" id="eraseFrm">
		<span id="eraseTitle">-회원탈퇴-</span><br/><br/><br/>
		<span id="warn">※신중히 고민하시고 회원탈퇴를 눌러주세요.※</span><br/><br/>
		<input type="text" name="userid" id="userid" value="${logId }" readonly/>
		<input type="submit" id="eraseBtn" value="탈퇴하기"/>
	</form>		
</div>