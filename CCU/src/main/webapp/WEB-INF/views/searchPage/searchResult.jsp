<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/searchResultStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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