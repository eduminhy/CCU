<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<style>

</style>
<script>
	$(function(){
		$("#showFrm").submit(function(){
			if($("#name").val()==""){
				alert("검색하실 공연을 입력해주세요");
				return false;
			}
			return true;
		});
		
		
		$(".name").click(function(){
			opener.$("#name").val($(this).prev().text()); 
			opener.$("#name").val($(this).text()); 
			window.close();
		});
		
	});
</script>
<div class = "">
	<p>
		공연을 검색 후 선택해주세요!
	</p>
	<form method = "get" action = "/meeting/showSearch" id = "showFrm">
		공연명 : <input type = "text" name = "name" id = "name">
		<input type = "submit" value = "공연 검색">
	</form>
	<ul id = "showList">
		<c:forEach var = "showVO" items = "${showList}">
			<li>${showVO.name }</li>
			<li class = "name">${showVO.showdb_id }&nbsp;${showVO.name }</li>
		</c:forEach>
	</ul>
</div>
