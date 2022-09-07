<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/bookCheckStyle.css">
<div class="container">
	<table id="content">
		<caption><h1>예매내역 확인</h1></caption>
		<tr class="rows" id="top">
			<th>공연이름</th>
			<td>헤르츠클란</td>
		</tr>
		<tr class="rows">
			<th>공연장소</th>
			<td>브릭스씨어터</td>
		</tr>
		<tr class="rows">
			<th>공연날짜</th>
			<td>2022.09.07(수)</td>
		</tr>
		<tr class="rows">
			<th>공연시간</th>
			<td>20시 00분</td>
		</tr>
		<tr class="rows">
			<th>수량</th>
			<td>3매</td>
		</tr>
		<tr class="rows">
			<th>예약자</th>
			<td>박동빈</td>
		</tr>
		<tr class="rows">
			<th>좌석번호</th>
			<td>B구역 10열 8번, B구역 10열 9번, B구역 10열 10번</td>
		</tr>
		<tr class="rows" id="bottom">
			<th>금액</th>
			<td>165,500원</td>
		</tr>
	</table>
	
	<input type="button" value="주의사항" class="btn" id="warn"/><br/>
	<input type="button" value="확인" class="btn" id="check"/>
</div>