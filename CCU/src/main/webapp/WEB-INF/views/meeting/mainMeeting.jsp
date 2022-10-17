<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/mainMeetingStyle.css">


<script>
    $(document).ready(function () {
        var currentPosition = parseInt($(".quick_wrap").css("top"));
        $(window).scroll(function () {
            var position = $(window).scrollTop();
            $(".quick_wrap").stop().animate({"top": position + currentPosition + "px"}, 1000);
        });
    });

    const items = document.querySelectorAll('.item');

    function openCloseitemDetail() {
        const itemDetailId = this.id.replace('sub', 'detail');

        if (document.getElementById(itemDetailId).style.display === 'block') {
            document.getElementById(itemDetailId).style.display = 'none';
        } else {
            document.getElementById(itemDetailId).style.display = 'block';
        }
    }

    items.forEach(item => item.addEventListener('click', openCloseitemDetail));

    function search() {
        let title = document.getElementById('meetingkeyword').value;
        let form = document.forms["searchForm"];
//         console.log(window.location.pathname);
        form.action = window.location.pathname+"?title=" + title;
        form.submit();
    }
//     window.location.pathname  //JavaScript에서 윈도우 uri주소호출
                                 //js 에서 주소 호출
    /*
    $(document).ready(function() {
        
    	   // div hide
    	   $("#div아이디").hide();
    	   // 접기 버튼 hide
    	   $("span[id=sp_off]").hide();
    	        
    	    //펼치기 span 클릭 시 
    		$("span[id=sp_on]").click(function() {
    			var idx = $("span[id=sp_on]").index(this);
    			$(this).hide();
    			$("span[id=sp_off]:eq("+idx+")").show();
    			$("#div아이디").show();
    		});

    		//접기 span 클릭 시 
    		$("span[id=sp_off]").click(function() {
    			var idx = $("span[id=sp_off]").index(this);
    			$("span[id=sp_on]:eq("+idx+")").show();
    			$("#div아이디").hide();
    			$("span[id=sp_off]:eq("+idx+")").hide();
    		});
    			  
    	 });
*/
</script>


<div class="meetingMainTopContainer">
	<h1 class="meetingMainTopText">같이 갈래요?</h1>
</div>
<!-- 돋보기모양 클래스명 : class="searchTopBtn" -->
<div class="searchTopContainer">
	<form name="searchForm" id="searchForm">
		<input type="text" name="title" id="meetingkeyword"
			placeholder="검색어를 입력하세요." /> <input type="button"
			name="meetingSearch" onclick="search()" class="meetingkeywordBtn" />
	</form>
</div>
<div class="playMeetingWarning">
	<p>

		<b>해당 게시판의 유의사항에 대하여 안내 말씀 드립니다.</b><br /> <br /> 1. 게시판 이용 시 발생하는
		금전 및 물질적 피해와 개인 정보 유출 등 이용자에게 생기는 어떠한 피해와 불이익에도 CCU 측에서 책임을 지지 않습니다.<br />

		2. 게시판 이용 후 타인과 공동구매에 관한 것은 필히 현장 결제 방식을 이용하시기 바랍니다.<br /> 3. 이미 소지하신
		티켓을 불법적인 경로를 통해 양도, 판매하는 것은 불법이며 엄격히 금지하고 있습니다.<br /> <br /> 범죄 및 사기
		행위에 관한 연락은 해당 게시글의 <b style="color: red;">'신고하기'</b>를 이용 부탁드립니다.<br />


		감사합니다.
	</p>
</div>
<div id="meetingWrite">
	<c:if test="${logStatus!='Y' }">
		<a href="#"
			style="font-size: 20px; font-weight: bold; color: #440099;"><p
				onclick="alert('로그인해주세요')">글쓰기</p></a>
	</c:if>
	<c:if test="${logStatus=='Y' }">
		<a href="/meeting/playMeetingForm" id="writeboard">글쓰기</a>

	</c:if>
</div>

<div class="quick_wrap">
	<div id="quick_menu" class="quick_menu" style="top: 245px;">
		<p class="goBoard">게시판 바로가기</p>
		<a href="/meeting/mainMeeting">▶ 전체 게시판</a> <a
			href="/meeting/mainMeeting/연극">▶ 연극 게시판</a> <a
			href="/meeting/mainMeeting/뮤지컬">▶ 뮤지컬 게시판</a> <a
			href="/meeting/mainMeeting2/클래식&오페라">▶ 클래식/오페라 게시판</a> <a
			href="/meeting/mainMeeting/아동">▶ 아동 게시판</a>

	</div>


</div>




<div class="listBody">


	<div>
		<ul id="accList">
			<li style="background-color: #ddd; font-size: 1.2em;">장르</li>
			<li style="background-color: #ddd; font-size: 1.2em;">글번호</li>
			<li style="background-color: #ddd; font-size: 1.2em;">마감여부</li>
			<li style="background-color: #ddd; font-size: 1.2em;">제목</li>
			<li style="background-color: #ddd; font-size: 1.2em;">작성자</li>
			<li style="background-color: #ddd; font-size: 1.2em;">작성일</li>
			<li style="background-color: #ddd; font-size: 1.2em;">미리보기</li>



			<c:forEach var="vo" items="${list }">
				<li>${vo.genre }</li>
				<li>${vo.id }</li>
				<li>${vo.status }</li>
				<li title=${vo.content }><a href="/meeting/view/${vo.id}">${vo.title }</a></li>
				<li>${vo.user_id }</li>
				<li>${vo.writedate }</li>
				<li style="cursor: pointer"
					title="
                공연 : ${vo.name}
                장르 : ${vo.genre }
                내용 : ${vo.content}
                
                

                "

                id="tooltip">미리보기</li>
<!--              	<details><summary><li style="cursor:pointer">미리보기</li></summary> -->
<!--                 <p>XHTML(Extensible HyperText Markup Language)은 확장성이 있는 하이퍼텍스트 마크업 언어이다.</p> -->
<!--                 </details> -->
                
           
            </c:forEach>
        </ul>
    </div>
    <div id="pageDiv">
		<ul id="page">
			<c:if test="${pvo.nowPage<=1 }">
				<li>◀</li>
			</c:if>
			<c:if test="${pvo.nowPage>1 }">
				<li><a href="/meeting/mainMeeting?nowPage=${pvo.nowPage-1 }">◀</a></li>
			</c:if>
			<c:forEach var="p" begin="${pvo.startPage }" end="${pvo.startPage+pvo.onePageCount-1}">
				<c:if test="${p<=pvo.totalPage }">
					<li
						<c:if test="${p==pvo.nowPage}">
							style="background-color:lavender;font-weight:bold;"
						</c:if>
					><a href="/meeting/mainMeeting?nowPage=${p }">${p}</a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pvo.nowPage==pvo.totalPage }">
				<li>▶</li>
			</c:if>
			<c:if test="${pvo.nowPage<pvo.totalPage }">
				<li><a href="/meeting/mainMeeting?nowPage=${pvo.nowPage+1 }">▶</a></li>
			</c:if>
		</ul>
	</div>
</div>





