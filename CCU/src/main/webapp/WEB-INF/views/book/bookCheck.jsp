<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/bookCheckStyle.css">
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script>
	
	$(function(){
		//인쇄기능
		$('#print').on('click', function(){
			 window.print();  // 클릭액션 : 버튼클릭시 인쇄창팝업
		  });
		//이미지 저장
		$("#imgdown").on("click", function(){
			html2canvas(document.querySelector("#content")).then(canvas=>{
			saveAs(canvas.toDataURL("img/jpg"), "ticket.jpg");//다운로드 이미지 파일
			});	
		});
		function saveAs(uri, filename){
			var img = document.createElement('a');
			if(typeof img.download === 'string'){
				img.href=uri;
				img.download=filename;
				document.body.appendChild(img);
				img.click();
				document.body.removeChild(img);
			}else{
				window.open(uri);
			}
		}			
	});

	
</script>
<div class="container">
	<input type="text" id="scheduleDate_id" name="scheduleDate_id" value="${sdvo.id}"/>
	<table id="content">
		<caption><h1>예매내역 확인</h1></caption>
		<tr class="rows" id="name">
			<th>공연이름</th>
			<td>헤르츠클란</td>
		</tr>
		<tr class="rows" id="poster">
			<th>공연포스터</th>
			<td><img src="../img/06.gif"/></td>
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
	
	<input type="button" value="인쇄하기" class="btn" id="print"/>
	<input type="button" value="예매내역 이미지로 저장" class="btn" id="imgdown"/><br/>
	<input type="button" value="확인" class="btn" id="check" onclick="location.href='/'"/>
</div>