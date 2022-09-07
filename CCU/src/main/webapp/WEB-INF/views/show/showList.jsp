<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/showListStyle.css">
<script>
	$(function(){
		$(document).attr("title","연극목록");//title 이름 변경 
		for(var i=0;i<5;i++){
			if($(".subject").children("a:eq("+i+")").text().length>=30){
				$(".more").children("a:eq("+i+")").show();
			}else{
				$(".more").children("a:eq("+i+")").hide();
			}
		}
	});
</script>
<div class="container">
	<div id="hot">
		<h2>What's HOT? [연극]</h2>
		<ul>
			<li><a href="#"><img src="../img/show/01.gif"/></a></li>
			<li>장수사회</li>
			<li>2022.09.17 ~ 2022.09.18</li>
			<li>용산아트홀 대극장 미르</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/02.gif"/></a></li>
			<li>러브레터</li>
			<li>2022.09.23 ~ 2022.10.23</li>
			<li>JTN 아트홀 1관</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/03.gif"/></a></li>
			<li>가장 보통의 연애</li>
			<li>2022.08.13 ~ 오픈런</li>
			<li>대학로 연극플레이스 혜화</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/04.gif"/></a></li>
			<li>오만과편견</li>
			<li>2022.08.30 ~ 2022.11.20</li>
			<li>예스24스테이지 3관</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/05.gif"/></a></li>
			<li>조각</li>
			<li>2022.07.01 ~ 2022.09.30</li>
			<li>댕로홀</li>
		</ul>
		
		<ul>
			<li><a href="#"><img src="../img/show/01.gif"/></a></li>
			<li>장수사회</li>
			<li>2022.09.17 ~ 2022.09.18</li>
			<li>용산아트홀 대극장 미르</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/02.gif"/></a></li>
			<li>러브레터</li>
			<li>2022.09.23 ~ 2022.10.23</li>
			<li>JTN 아트홀 1관</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/03.gif"/></a></li>
			<li>가장 보통의 연애</li>
			<li>2022.08.13 ~ 오픈런</li>
			<li>대학로 연극플레이스 혜화</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/04.gif"/></a></li>
			<li>오만과편견</li>
			<li>2022.08.30 ~ 2022.11.20</li>
			<li>예스24스테이지 3관</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/05.gif"/></a></li>
			<li>조각</li>
			<li>2022.07.01 ~ 2022.09.30</li>
			<li>댕로홀</li>
		</ul>
	</div>
	&nbsp;
	<div id="letter">
		<div id="rank">
			<h2>Weekly Ranking</h2>
			<ul>
				<li>1위&nbsp;</li>
				<li><a href="#">살아있는 자를 수선하기</a></li>
				
				<li>2위&nbsp;</li>
				<li><a href="#">두 교황</a></li>
				
				<li>3위&nbsp;</li>
				<li><a href="#">러브레터</a></li>
				
				<li>4위&nbsp;</li>
				<li><a href="#">뷰티풀라이프</a></li>
				
				<li>5위&nbsp;</li>
				<li><a href="#">오만과 편견</a></li>
			</ul>
		</div>
		<div id="playBoard">
			<h2><a href="#">연극 Meeting 게시판</a></h2>
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
		<ul>
			<li><a href="#"><img src="../img/show/01.gif"/></a></li>
			<li>장수사회</li>
			<li>2022.09.17 ~ 2022.09.18</li>
			<li>용산아트홀 대극장 미르</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/02.gif"/></a></li>
			<li>러브레터</li>
			<li>2022.09.23 ~ 2022.10.23</li>
			<li>JTN 아트홀 1관</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/03.gif"/></a></li>
			<li>가장 보통의 연애</li>
			<li>2022.08.13 ~ 오픈런</li>
			<li>대학로 연극플레이스 혜화</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/04.gif"/></a></li>
			<li>오만과편견</li>
			<li>2022.08.30 ~ 2022.11.20</li>
			<li>예스24스테이지 3관</li>
		</ul>
		<ul>	
			<li><a href="#"><img src="../img/show/05.gif"/></a></li>
			<li>조각</li>
			<li>2022.07.01 ~ 2022.09.30</li>
			<li>댕로홀</li>
		</ul>
	</div>
</div>