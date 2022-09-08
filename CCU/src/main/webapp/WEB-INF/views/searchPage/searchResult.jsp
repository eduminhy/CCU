<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	.searchContainer{
		width:70%;
		height:160px;
		background-color:#F2F2F2;
		margin:1% auto;
		
	}
	.searchTxt{
		padding-top:30px;
		color:#440099;
		font-weight:normal;
		text-align:center;
	}
	input{
		vertical-align: middle;
	}
	
	.searchListTxt{
		margin-left:500px;
		background-color:#F2F2F2;
		border: 1px solid #bcbcbc;
		font-size:16px;
		width:300px;
        padding:10px 10px;
        border:0px;
        border-bottom:2px solid #000;
		outline:none;
		float:left;	
	}
	.searchListBtn{
		background:url("../image/search_black.png");
		background-repeat: no-repeat;
        border: none;
        width: 32px;
        height: 32px;
        cursor: pointer;
		
	}
	
	.searchResultContainer{
		width:70%;
		height:500px;
		margin:0 auto;
		background-color:#ddd;
		border-top:red;
		
	}
	.searchResultDetail{
		display:table;
		width:100%;
		table-layout:fixed;
		padding:20px 10px;
		box-sizing:border-box;
	}
	.searchTable{
		border-top:3px solid #B3B3B3;
		border-bottom:3px solid #B3B3B3;
		margin:0 auto;
		width:70%;
		height:180px;
		background:#eee;
		
	}

	.searchResultTxt{
		padding:40px;
		background-color:#fff;
		border:none;
	}
	tr{
		height:75px;
	}
	
	
	.searchContainer img{
		margin:0px 0px 0px 10px;
	}
	/*
	.searchtxt a{
		display:inline-block;
		width:190px;
		margin:0px 0px 0px 20px;
	}
	*/
	



	
	
	
	
</style>
<script>
</script>
</head>
<body>
	<div class="searchContainer">
		<h2 class="searchTxt"><span style="color:#FF5161"><b>'엘'</b></span>에 대한 검색 결과</h2>
			<input type="text" name="searchListTxt" class="searchListTxt" placeholder=""/>
			<input type="submit" value="" class="searchListBtn"/>	
	</div>
	
	<div>
		<table class="searchTable">
			<colgroup>
				<col width="100">
				<col width="">
			</colgroup>
			<tbody>
				<tr class="searchResultContainer">
					<td class="searchResultTxt"><img src="../img/검색포스터1.png" alt="박스"></td>
					<td class="searchResultTxt">엘 콘서트 시리즈 〈아무르 무지크〉 II. 로미오와 줄리엣</td>
					<td class="searchResultTxt">2022.12.04 - 2022.12.04</td>
					<td class="searchResultTxt">롯데콘서트홀</td>
				</tr>
				<tr class="searchResultContainer">
					<td class="searchResultTxt"><img src="../img/검색포스터1.png" alt="박스"></td>
					<td class="searchResultTxt">엘 콘서트 시리즈 〈아무르 무지크〉 I. 음악과 미술</td>
					<td class="searchResultTxt">2022.05.17 - 2022.05.17</td>
					<td class="searchResultTxt">롯데콘서트홀</td>
				</tr>
			</tbody>
		</table>	
	</div>
</html>
</html>