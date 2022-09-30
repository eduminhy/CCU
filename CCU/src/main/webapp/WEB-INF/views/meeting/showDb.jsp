<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<style>
	#topMenu, #logo, #mainMenu, .footer{
		display : none;
	}
	#zipList li{
		float : left;
		border-bottom : 1px solid #ddd;
		padding : 10px 0px;
	}
	#zipList li:nth-child(2n){
		width : 90%;
	}
	#zipList li:nth-child(2n+1){
		width : 10%;
	}
</style>
<script>
	$(function(){
		$("#").submit(function(){
			if($("#name").val()==""){
				alert("검색하실 공연을 입력해주세요");
				return false;
			}
			return true;
		});
		
		
		$(".name").click(function(){
			opener.$("#name").val($(this).prev().text()); // zipcode
			opener.$("#showdb_id").val($(this).text()); // 주소
			window.close();
		});
		
	});
</script>

