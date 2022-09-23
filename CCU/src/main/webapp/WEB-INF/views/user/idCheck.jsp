<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<script>
	$(function(){
		// 조회한 id를 opener에 셋팅하고 현재 window는 닫아야 함.
		
		$("#setId").click(function(){
			opener.$('#id').val('${id}');
			opener.$('#idCheckStatus').val('Y');
			window.close();
		});
	});
</script>

<div>
	<c:if test = "${idCnt==0 }">
		<b>${id }</b> : 사용 가능한 아이디입니다.
		<input type = "button" value = "사용" id = "setId">
	</c:if>
	<c:if test = "${idCnt>0 }">
		<b>${id }</b> : 중복되어 사용 불가한 아이디입니다.
	</c:if>
	<hr/>
	<form method = "get" action = "/user/idCheck">
		아이디 : <input type = "text" name = "id" id = "id">
		<input type = "submit" value = "중복검사">
	</form>
</div>