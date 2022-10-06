<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/showListStyle.css">
<script>
	$(function(){
		$(document).attr("title","공연/${genre}");//title 이름 변경 
		for(var i=0;i<5;i++){
			if($(".subject").children("a:eq("+i+")").text().length>=30){
				$(".more").children("a:eq("+i+")").show();
			}else{
				$(".more").children("a:eq("+i+")").hide();
			}
		}
		
		for(var i=0;i<10;i++){
			if($(".showname").eq(i).text().length>13){
				var showN = $(".showname").eq(i).text().substr(0,13)+"...";
				$(".showname").eq(i).text(showN);				
			}
			if($(".placename").eq(i).text().length>13){
				var placeN = $(".placename").eq(i).text().substr(0,13)+"...";
				$(".placename").eq(i).text(placeN);				
			}
		}
		
		for(var i=0;i<5;i++){
			if($(".nshowname").eq(i).text().length>13){
				var showN = $(".nshowname").eq(i).text().substr(0,13)+"...";
				$(".nshowname").eq(i).text(showN);				
			}
			if($(".nplacename").eq(i).text().length>13){
				var placeN = $(".nplacename").eq(i).text().substr(0,13)+"...";
				$(".nplacename").eq(i).text(placeN);				
			}
		}
	});
</script>
<div class="container">
	<div id="hot">
		<h2>What's HOT? [${genre}]</h2>
		<c:forEach var="svo" items="${showlist }">
			<ul>
				<li><a href="#"><img src="${svo.mainposter }"/></a></li>
				<li class="showname">${svo.name }</li>
				<li>${svo.startdate } ~ ${svo.enddate }</li>
				<li class="placename">${svo.place_name}</li>
			</ul>
		</c:forEach>
	</div>
	&nbsp;
	<div id="letter">
		<div id="rank">
			<h2>Weekly Ranking</h2>
			<ul>
				<c:forEach var="wvo" items="${weeklylist }" varStatus="status">
				<li>${status.count }위&nbsp;</li>
				<li><a href="#">${wvo.name }</a></li>
				</c:forEach>
			</ul>
		</div>
		<div id="playBoard">
			<h2><a href="#">${genre} Meeting 게시판</a></h2>
			<ul>
				<li>1198.&nbsp;</li>
				<li class="subject"><a href="#">대학로에서 만나실 분 계시면 댓글주세요</a></li>
				<li class="more"><a href="#">더보기</a></li>
				
				<li>1197.&nbsp;</li>
				<li class="subject"><a href="#">지금 급하게 사람 구합니다! 연극 경험 있으신분</a></li>
				<li class="more"><a href="#">더보기</a></li>
				
				<li>1196.&nbsp;</li>
				<li class="subject"><a href="#">참여형 연극 좋아하시는 분 계세요?</a></li>
				<li class="more"><a href="#">더보기</a></li>
				
				<li>1195.&nbsp;</li>
				<li class="subject"><a href="#">홍대 근처에서 밥 먹고 오만과 편견보려는데</a></li>
				<li class="more"><a href="#">더보기</a></li>
				
				<li>1194.&nbsp;</li>
				<li class="subject"><a href="#">스릴러 장르인데 같이 보실 분!!! 한명 구해요 스릴러 처음이신 분 원합니다.</a></li>
				<li class="more"><a href="#">더보기</a></li>
			</ul>
		</div>
	</div>
	&nbsp;
	<div id="new">
		<h2>신작 살펴보기</h2>
		<c:forEach var="nvo" items="${newlist }">
			<ul>
				<li><a href="#"><img src="${nvo.mainposter }"/></a></li>
				<li class="nshowname">${nvo.name }</li>
				<li>${nvo.startdate } ~ ${nvo.enddate }</li>
				<li class="nplacename">${nvo.place_name}</li>
			</ul>
		</c:forEach>
	</div>
</div>