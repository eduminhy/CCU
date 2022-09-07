<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/bookSeatStyle.css">
<div class="container">
	<div><h1>STEP01 좌석예약</h1></div>
	<div id="content">
		<div id="selectSeat"><img src="../img/seat.jpg"/></div>
		<div id="detail">
		<h3>선택확인</h3>
		<ul>
			<li>관람일 : 2022.09.07(수)</li> 
			<li>관람시간 : 20시 00분</li>
			<li>좌석수 : 3매</li>
			<li>좌석번호 : B구역 10열 8, B구역 10열 9, B구역 10열 10</li>
			<li>가격 : 165,000원</li>
		</ul>
		<input type="button" value="좌석선택완료" id="completeSeat" onclick="location.href='bookCredit'"/>
		</div>
	</div>
</div>