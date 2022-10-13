<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="/style/mypage/myReservationStyle.css">

<script>
	$(function() {
		//후기작성 or 예약취소 버튼 생성
		var statusArray=[];
		var arrlength = $(".book>li:nth-of-type(6)").text().length;
		var showStatus = $(".book>li:nth-of-type(6)").text();
		var state = $(".book>li:nth-of-type(6)").text().replace(/^\s+|\s+$/gm,'');//공백제거한 상태
		var stateStr = state.replaceAll("\n", "");//엔터 제거한 상태
		var statelength = stateStr.length;
		//console.log(stateStr.length);
		//console.log(stateStr);
		//console.log($.trim(showStatus));
		//console.log("showstatus=>"+showStatus);
		//console.log("arrlength=>"+arrlength);
		//console.log(statelength);
		for(var i=0;i<statelength/4;i++){
			statusArray[i]=stateStr.substring(4*i,4*(i+1));
			console.log($(".showid").eq(i).val());
			//console.log(${bvo.no}.eq(i).val());
			if(statusArray[i]=='관람완료'){
				$(".book>li:nth-of-type(7):eq("+i+")").append("<input type='button' value='후기작성하기' class='reviewBtn' onclick='location.href=\"/show/showDetail?show_id="+$(".showid").eq(i-1).val()+"\"'/>");
			}else if(statusArray[i]=='예약완료'){
				//console.log("orderno=>");
				$(".book>li:nth-of-type(7):eq("+i+")").append("<input type='button' value='티켓확인하기' class='checkBtn' onclick='location.href=\"/book/bookCheck?no="+$(".no").eq(i-1).val()+"\"'/>");
			}
		}
		
		//날짜 기간 검색
		$('#date').daterangepicker({
			linkedCalendars: false,
			//autoUpdateInput: false,
			"locale":{
			"format": "YYYY.MM.DD",
			"separator": " ~ ",
			"applyLabel": "적용",
			"cancelLabel": "취소",
			"fromLabel": "From",
			"toLabel": "To",
			"customRangeLabel": "Custom",
			"daysOfWeek": ["일","월", "화", "수", "목", "금", "토"],
			"monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"] },
			}, function (start, end, label) {
			console.log('선택된 날짜: ' + start.format('YYYY.MM.DD') + ' to ' + end.format('YYYY.MM.DD'));
			$("#date").val(start.format('YYYY.MM.DD')+" ~ "+end.format('YYYY.MM.DD'));
			$("#startdate").val(start.format('YYYY.MM.DD'));
			$("#enddate").val(end.format('YYYY.MM.DD'));
		});
		
		$(".searchBtn").click(function(){
			$("#searchFrm").submit();
		});
		
		
	});		
		
</script>

<div class="container">
	<h1>- 마이페이지 -</h1>
	<div id="myTapmenu">
		<ul>
			<li><a href="myInfo">나의 정보</a></li>
			<li><a href="myReservation">나의 예매내역</a></li>
			<li><a href="myHeartList">나의 찜목록</a></li>
			<li><a href="myBoard">나의 게시글</a></li>
			<li><a href="myComment">나의 댓글</a></li>
			<li><a href="myQna">나의 문의내역</a></li>
		</ul>
	</div>
	<div id="searchDiv">
		<form method="get" action="/mypage/myReservation" id="searchFrm">
			<span>검색어</span>
			<input type="text" name="searchWord" id="searchWord"/>
			<span>기간조회하기</span>
			<input type="text" name="daterange" id="date"/>
			<input type="hidden" name="startdate" id="startdate"/>
			<input type="hidden" name="enddate" id="enddate"/>
			<input type="submit" value="검색" class="searchBtn"/>
		</form>	
	</div>
		<ul>
			<li>
				<ul id="bookList">
					<li>
						<ul class="book">
							<li>공연종류</li>
							<li>공연명</li>
							<li>공연날짜</li>
							<li>예약날짜</li>
							<li>예약매수</li>
							<li>현재상태</li>
							<li></li>
						</ul>
					</li>
					<c:forEach var="bvo" items="${booklist }">
					<li>
						<ul class="book">
							<li>${bvo.genre }<input type="hidden" name="no" class="no" value="${bvo.no}"/></li>
							<li><a href="/show/showDetail?show_id=${bvo.id}">${bvo.name }</a><input type="hidden" class="showid" value="${bvo.id}"/></li>
							<li>${bvo.showDate }</li>
							<li>${bvo.writedate }</li>
							<li>${bvo.seatcnt}매</li>
							<li>
								<c:set var="now" value="<%=new java.util.Date()%>"/>
								<c:set var="nowDate"><fmt:formatDate value="${now}" pattern="yyyy.MM.dd" /></c:set>
								<c:if test="${nowDate > bvo.showDate}"><c:out value="관람완료"></c:out></c:if>
								<c:if test="${bvo.showDate > bvo.writedate}"><c:out value="예약완료"></c:out></c:if>
							</li>
							<li></li>
							
						</ul>
					</li>
					</c:forEach>
				</ul>
			</li>
		</ul>
</div>