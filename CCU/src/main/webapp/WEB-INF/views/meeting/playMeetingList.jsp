<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/style/playMeetingListStyle.css">
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<script src="/script/playMeetingListScript.js" type="text/javascript"></script>


<script>
	$(function(){
		$("#playMeetingListSearchFrm").submit(function(){
			if($("#searchWord").val()==""){
				alert("내용을 입력하시오");
				return false;
			}
			return true;
		});
</script>
<body>
	<div class="playMeetingTopContainer">
		<h1 class="playMeetingTopText">같이 갈래요?</h1>
	</div>
	
	<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>
	
	
    <form method="post" action="" class="playMeetingTable">
        <ul>
            <li>
                <ul id="playMeetingList">
                    <li>
                        <ul>
                        	
                            <li>장르</li>
                            <li>글번호</li>
                            <li>제목</li>
                            <li>작성자</li>
                            <li>조회수</li>
	        				<li>작성일</li>
	        				
	        		    <c:forEach var = "vo" items = "${list }">
							<li>${vo.genre }</li>
							<li>${vo.id }</li>
							<li>${vo.title }</li>
							<li>${vo.user_id }</li>
							<li>${vo.hit }</li>
							<li>${vo.writedate }</li>
						</c:forEach>
                        </ul>
                    </li>
                    
                    
                    
                    
                    <!-- 
                    <div class="listBody">
	
	
	<div>
	    <ul id="accList">
	        <li >장르</li>
	        <li >글번호</li>
	        <li >제목</li>
	        <li >작성자</li>
	        <li >작성일</li>
	        
	    <c:forEach var = "vo" items = "${list }">
			<li>${vo.genre }</li>
			<li>${vo.id }</li>
			<li>${vo.title }</li>
			<li>${vo.user_id }</li>
			<li>${vo.writedate }</li>
		</c:forEach>
	    </ul>
	</div>
            -->         
                    
                    <!--  
                    
                    <li>
                        <ul>
                        	<li><input type="checkbox" name="checkbox" value="checkbox"></li>
		                    <li>1298</li>
		                    <li>모집</li>
		                    <li class="left">엘리자벳 3명 구해요.</li>
		                    <li>모집중</li>
		                    <li>tylee</li>
		                    <li>5</li>
		                    <li>2022.07.29</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
		                	<li><input type="checkbox" name="checkbox" value="checkbox"></li>
		                    <li>1297</li>
		                    <li>모집</li>
		                    <li class="left">행오버 같이 보실 분?</li>
		                    <li>모집중</li>
		                    <li>jhma</li>
		                    <li>11</li>
		                    <li>2022.07.13</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
                            <li><input type="checkbox" name="checkbox" value="checkbox"></li>
		                    <li>1296</li>
		                    <li>모집</li>
		                    <li class="left">오만과 편견 1분 구합니다!</li>
		                    <li>모집중</li>
		                    <li>hymin</li>
		                    <li>16</li>
		                    <li>2022.06.30</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
		                	<li><input type="checkbox" name="checkbox" value="checkbox"></li>
		                    <li>1295</li>
		                    <li>찾아요</li>
		                    <li class="left">햄릿 관람하실 분 1명</li>
		                    <li>모집마감</li>
		                    <li>tylee</li>
		                    <li>31</li>
		                    <li>2022.06.23</li>
                        </ul>
                    <li>                                        
                </ul>
            </li>
        </ul>
       -->
		<div>
			<!--  <button class="playMeetingListBtn">글쓰기</button>-->
			<input type="button" value="글쓰기" class="playMeetingListBtn" id="modify" onclick="location.href='playMeetingForm'"/>
		</div>
		
		<!--  <div class="playMeetingListSearch"> -->
		<div>
			<form method = "get" action = "/meeting/mainMeeting" id = "playMeetingListSearchFrm">
				<select name="searchKey" id="playMeetingListSearchKey">
					<option value="subject">제목</option>
					<option value="content">내용</option>
					<option value="id">작성자</option>
				</select>
				<input type="text" name="searchWord" id="searchWord" placeholder=""/>
				<input type="submit" name="Search" id="Search"/>
			</form>	
		</div>
		
    </form>
    
    
    
    