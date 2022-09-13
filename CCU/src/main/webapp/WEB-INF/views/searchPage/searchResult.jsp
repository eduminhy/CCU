<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	.searchTopContainer{
		width:70%;
		height:160px;
		background-color:#F2F2F2;
		margin:1% auto;
	}
	.searchTopTxt{
		padding-top:30px;
		color:#440099;
		font-weight:normal;
		text-align:center;
	}
	.searchTopWriteTxt{
		/*margin-left:500px;*/
		margin-left:37%;
		background-color:#F2F2F2;
		border: 1px solid #bcbcbc;
		font-size:16px;
		/*width:300px;*/
		width:25%;
        padding:10px 10px;
        border:0px;
        border-bottom:2px solid #000;
		outline:none;
		float:left;	
	}
	.searchTopBtn{
		background:url("../img/search_black.png");
		background-repeat: no-repeat;
        border: none;
        width: 32px;
        height: 32px;
        cursor: pointer;
	}
	
	.itemList{
		margin-top:3%;
		margin-left:15%;
		margin-right:15%;
		/*background:red;*/
		list-style: none;
		border-top:2px solid #7F7F7F;
		border-bottom:2px solid #7F7F7F;
	}
	.itemList li{
		/*background:yellow;*/
		display: table;
		margin-left:-3.1%;
	    width: 103.1%;
	    table-layout: fixed;
	    padding: 20px 70px;
	    box-sizing: border-box;
	    border-bottom: 1px solid #CCCCCC;
	}
	
	.colPhoto{
	
		width: 125px;
		display: table-cell;
    	vertical-align: top;
	}
	.searchPanel a{
		margin: 0;
	    padding: 0;
	    font-size: 100%;
	    vertical-align: baseline;
	    background: transparent;
	    text-decoration: none;
	}
	.itemImage{
		position: relative;
		display: block;
	    /* width: 100%; */
	    /* height: 160px; */
	    /* overflow: hidden;*/
	}
	
	
	.colData{
		position: relative;
		padding: 30px 100px;
    vertical-align: top;
    display: table-cell;
    
	}
	.itemName{
		overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    font-size: 17px;
    color: #000;
    font-weight: bold;
	}
	.itemInfo{
		position: absolute;
    bottom: 30px;
    left: 30px;
    width: 520px;
	}
	.ticketInfo{
		margin-bottom: 5px;
	}
	.ticketInfo span{
		position: relative;
		margin-left: 70px;
		font-size: 14px;
	}
	

	
	.colInfo{
		/*padding-left: 0;*/
		box-sizing: border-box;
    	text-align: left;
    	width: 187px;
    	vertical-align: bottom;
    	display: table-cell;
    
	}
	.concertHall{
		display: block;
		color: #333;
		font-size: 14px;
    
	}
	.period{
		display: block;
		margin-bottom: 20px;
	    color: #333;
	    font-size: 14px;
	}
	
</style>
<script>
</script>
</head>
<body>
	<div class="searchTopContainer">
		<h2 class="searchTopTxt"><span style="color:#FF5161"><b>'엘'</b></span>에 대한 검색 결과</h2>
			<input type="text" name="searchTopWriteTxt" class="searchTopWriteTxt" placeholder=""/>
			<input type="submit" value="" class="searchTopBtn"/>	
	</div>
	
	<div class="searchPanel">
		<ul class="itemList">
			<li data-sale="1" data-srch-list-order="1">
				<div class="colPhoto">
					<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
						<span class="itemImage">
							<img src="../img/검색포스터1.png" alt="엘 콘서트 시리즈 〈아무르 무지크〉 II. 로미오와 줄리엣" style="visibility: visible;">
						</span>
					</a>
				</div>
				<div class="colData">
					<div class="itemName">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="엘 콘서트 시리즈 〈아무르 무지크〉 II. 로미오와 줄리엣"><span style="color:#FF5161"><b>엘</b></span> 콘서트 시리즈 〈아무르 무지크〉 II. 로미오와 줄리엣</a>
					</div>
					<div class="itemInfo">
						<div class="ticketInfo">
							<span class="type">클래식/오페라</span>
						</div>
					</div>
				</div>
				<div class="colInfo">
					<span class="concertHall">롯데콘서트홀</span>
					<span class="period">2022.12.04 - 2022.12.04</span>
				</div>
			</li>
			
			
			<li data-sale="1" data-srch-list-order="2">
				<div class="colPhoto">
					<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
						<span class="itemImage">
							<img src="../img/검색포스터1.png" alt="엘 콘서트 시리즈 〈아무르 무지크〉 I. 음악과 미술" style="visibility: visible;">
						</span>
					</a>
				</div>
				<div class="colData">
					<div class="itemName">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="엘 콘서트 시리즈 〈아무르 무지크〉 I. 음악과 미술"><span style="color:#FF5161"><b>엘</b></span> 콘서트 시리즈 〈아무르 무지크〉 I. 음악과 미술</a>
					</div>
					<div class="itemInfo">
						<div class="ticketInfo">
							<span class="type">클래식/오페라</span>
						</div>
					</div>
				</div>
				<div class="colInfo">
					<span class="concertHall">롯데콘서트홀</span>
					<span class="period">2022.05.17 - 2022.05.17</span>
				</div>
			</li>			
		
		</ul>
	</div>
</html>
</html>