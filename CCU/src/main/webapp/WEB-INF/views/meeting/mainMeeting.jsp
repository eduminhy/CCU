<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/mainMeetingStyle.css">
<script>
	$(document).ready(function(){
		  var currentPosition = parseInt($(".quick_wrap").css("top"));
		  $(window).scroll(function() {
		    var position = $(window).scrollTop(); 
		    $(".quick_wrap").stop().animate({"top":position+currentPosition+"px"},1000);
		  });
		});
</script>



	<div class="meetingMainTopContainer">
		<h1 class="meetingMainTopText">같이 갈래요?</h1>
	</div>
	
	<div class="searchTopContainer">
		<input type="text" name="searchTopWriteTxt" class="searchTopWriteTxt" placeholder="검색어를 입력하세요."/>
		<input type="submit" value="" class="searchTopBtn"/>	
	</div>
	
	<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>

	<div class="quick_wrap">
		<div id="quick_menu" class="quick_menu" style="top: 245px;">
			<p class="goBoard">게시판 바로가기</p>
			<a href="/meeting/playMeetingList">▶ 연극 게시판</a>
			<a href="#">▶ 뮤지컬 게시판</a>
			<a href="#">▶ 클래식/오페라 게시판</a>
			<a href="#">▶ 아동 게시판</a>
		</div> 
		

	</div>


<div class="listBody">

	<div>
	    <ul class="accList">
	        <li >장르</li>
	        <li >글번호</li>
	        <li >내용</li>
	        <li >작성자</li>
	        <li >작성일</li>
	    </ul>
	</div>









	<div class="board-content">
		<button class="item" id="sub-0" onclick="location.href='mainMeetingNotice'">
			<div>
				<ul class="accItem">
					<li><b>공지</b></li>
					<li><b>공통</b></li>
					<li><span style="color:red;"><b>*** 범죄 및 사기 주의 ***</b></span></li>
					<li><b>관리자</b></li>
					<li><b>2022.01.01</b></li>
				</ul>
			</div>
		</button>
	</div>


    

	<div class="board-content">
		<button class="item" id="sub-1">
			<div>
				<ul class="accItem">
					<li>연극</li>
					<li>1198</li>
					<li>러브레터 3명 구합니다.</li>
					<li>김철수</li>
					<li>2022.09.15</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-1">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="/show/showDetail" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/연극포스터3.jpg" alt="러브레터" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="러브레터">러브레터</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 90분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 예술의전당 자유소극장</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 박정자, 배종옥, 오영수, 장현성 등</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : R석 66,000원 | S석 44,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="/meeting/playMeetingComment">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	
	<div class="board-content">
		<button class="item" id="sub-2">
			<div>
				<ul class="accItem">
					<li>뮤지컬</li>
					<li>1197</li>
					<li>마틸다 같이 보실 1분 구해요.</li>
					<li>김영희</li>
					<li>2022.09.13</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-2">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터1.jpg" alt="마틸다" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="마틸다">마틸다</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 160분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 대성 디큐브아트센터</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 임하윤, 진연우, 최은영, 하신비, 최재림, 등</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 150,000원 | OP석 140,000원 | R석 130,000원 | S석 100,000원 | A석 70,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	
	
	
	<div class="board-content">
		<button class="item" id="sub-3">
			<div>
				<ul class="accItem">
					<li>클래식/오페라</li>
					<li>1196</li>
					<li>로미오와 줄리엣 보고 싶으신 분 계세요?</li>
					<li>김민호</li>
					<li>2022.09.10</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-3">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터2.jpg" alt="로미오와 줄리엣" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="로미오와 줄리엣">로미오와 줄리엣</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 80분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 세종문화회관 대극장</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 최원휘, 이승묵, 박소영, 김유미 등</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 120,000원 | R석 100,000원 | S석 80,000원 | A석 50,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	
	
	
	<div class="board-content">
		<button class="item" id="sub-4">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1195</li>
					<li>아이들과 '알사탕'연극 보러 가실 분 계신가요?</li>
					<li>박수진</li>
					<li>2022.09.06</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-4">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터3.jpg" alt="알사탕" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="알사탕">알사탕</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 60분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 서울숲 씨어터 1관</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 문용현, 임재현, 김대운, 안진영, 이유영, 홍유정 등</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : 동동이석 60,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	
	
	
	<div class="board-content">
		<button class="item" id="sub-5">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1194</li>
					<li>'드래콘하이' 좋아하는 아이 있나요~</li>
					<li>최영주</li>
					<li>2022.09.01</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-5">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터4.jpg" alt="드래곤 하이" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="드래곤 하이">드래곤 하이</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 70분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 국립중앙박물관 극장 용</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 해당정보 없음</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 77,000원 | R석 66,000원 | S석 44,000원 | A석 33,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
		
	</div>
	
	
	
	<div class="board-content">
		<button class="item" id="sub-6">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1194</li>
					<li>'드래콘하이' 좋아하는 아이 있나요~</li>
					<li>최영주</li>
					<li>2022.09.01</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-6">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터4.jpg" alt="드래곤 하이" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="드래곤 하이">드래곤 하이</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 70분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 국립중앙박물관 극장 용</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 해당정보 없음</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 77,000원 | R석 66,000원 | S석 44,000원 | A석 33,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
		
	</div>	
	
	
	
	<div class="board-content">
		<button class="item" id="sub-7">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1194</li>
					<li>'드래콘하이' 좋아하는 아이 있나요~</li>
					<li>최영주</li>
					<li>2022.09.01</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-7">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터4.jpg" alt="드래곤 하이" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="드래곤 하이">드래곤 하이</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 70분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 국립중앙박물관 극장 용</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 해당정보 없음</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 77,000원 | R석 66,000원 | S석 44,000원 | A석 33,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
		
	</div>
	
	
	
	
	
	
	
	<div class="board-content">
		<button class="item" id="sub-8">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1194</li>
					<li>'드래콘하이' 좋아하는 아이 있나요~</li>
					<li>최영주</li>
					<li>2022.09.01</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-8">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터4.jpg" alt="드래곤 하이" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="드래곤 하이">드래곤 하이</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 70분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 국립중앙박물관 극장 용</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 해당정보 없음</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 77,000원 | R석 66,000원 | S석 44,000원 | A석 33,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
		
	</div>	
	
	
	
	
	
	
	<div class="board-content">
		<button class="item" id="sub-9">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1194</li>
					<li>'드래콘하이' 좋아하는 아이 있나요~</li>
					<li>최영주</li>
					<li>2022.09.01</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-9">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터4.jpg" alt="드래곤 하이" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="드래곤 하이">드래곤 하이</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 70분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 국립중앙박물관 극장 용</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 해당정보 없음</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 77,000원 | R석 66,000원 | S석 44,000원 | A석 33,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
		
	</div>	
	
	





	<div class="board-content">
		<button class="item" id="sub-10">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1194</li>
					<li>'드래콘하이' 좋아하는 아이 있나요~</li>
					<li>최영주</li>
					<li>2022.09.01</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-10">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터4.jpg" alt="드래곤 하이" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="드래곤 하이">드래곤 하이</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 70분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 국립중앙박물관 극장 용</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 해당정보 없음</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 77,000원 | R석 66,000원 | S석 44,000원 | A석 33,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
		
	</div>	
		
	



	<div class="board-content">
		<button class="item" id="sub-11">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1194</li>
					<li>'드래콘하이' 좋아하는 아이 있나요~</li>
					<li>최영주</li>
					<li>2022.09.01</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-11">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터4.jpg" alt="드래곤 하이" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="드래곤 하이">드래곤 하이</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 70분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 국립중앙박물관 극장 용</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 해당정보 없음</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 77,000원 | R석 66,000원 | S석 44,000원 | A석 33,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
		
	</div>	





	<div class="board-content">
		<button class="item" id="sub-12">
			<div>
				<ul class="accItem">
					<li>아동</li>
					<li>1194</li>
					<li>'드래콘하이' 좋아하는 아이 있나요~</li>
					<li>최영주</li>
					<li>2022.09.01</li>
				</ul>
			</div>
		</button>
		<div class="itemDetail" id="detail-12">
			<ul class="itemList">
				<li data-sale="1" data-srch-list-order="1">
					<div class="colPhoto">
						<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
							<span class="itemImage">
								<img src="../img/미팅포스터4.jpg" alt="드래곤 하이" class="poster">
							</span>
						</a>
					</div>
					
					<div class="colData">
						<div class="itemName">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="드래곤 하이">드래곤 하이</a>
						</div>
						<div class="itemDate">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">시간 : 70분</a>
						</div>
						<div class="itemPlace">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">장소 : 국립중앙박물관 극장 용</a>
						</div>						
						<div class="itemActor">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">캐스팅 : 해당정보 없음</a>
						</div>						
						<div class="itemPrice">
							<a href="#" title="상세페이지로 이동" target="_blank" gtm-label="">가격 : VIP석 77,000원 | R석 66,000원 | S석 44,000원 | A석 33,000원</a>
						</div>						

					</div>
					
					<div class="colInfo">
						<span class="detailMove"><a href="#">게시글로 이동</a></span>
					</div>
				</li>
			</ul>
		</div>
		
	</div>	



























	
</div>	
	
	
	
	
	


<script>
	const items = document.querySelectorAll('.item');

	function openCloseitemDetail() {
		const itemDetailId = this.id.replace('sub', 'detail');

		if(document.getElementById(itemDetailId).style.display === 'block') {
			document.getElementById(itemDetailId).style.display = 'none';
		}else {
			document.getElementById(itemDetailId).style.display = 'block';
		}
	}

	items.forEach(item => item.addEventListener('click', openCloseitemDetail));
</script>



