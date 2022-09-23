<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/style/playMeetingListStyle.css">
<script src="/script/playMeetingListScript.js" type="text/javascript"></script>
</head>
<body>
	<div class="playMeetingTopContainer">
		<h1 class="playMeetingTopText">같이 갈래요?</h1>
	</div>
	
	<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>
	
	
    <form method="post" action="" class="playMeetingTable">
        <ul>
            <li>
                <ul class="playMeetingList">
                    <li>
                        <ul>
                        	<li><input type="checkbox" name="checkbox" value="checkbox" onclick="checkAll(this)"></li>
                            <li>번호</li>
                            <li>말머리</li>
                            <li>제목</li>
                            <li>마감여부</li>
                            <li>작성자</li>
                            <li>조회수</li>
	        				<li>작성일</li>
                        </ul>
                    </li>
                    <!-- 게시물이 출력될 영역 -->
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
        
		<div>
			<!--  <button class="playMeetingListBtn">글쓰기</button>-->
			<input type="button" value="글쓰기" class="playMeetingListBtn" id="modify" onclick="location.href='playMeetingForm'"/>
		</div>
		
		<div class="playMeetingListSearch">
			<form method="get" action="" class="playMeetingListSearchFrm">
				<select name="searchKey" class="playMeetingListSearchKey">
					<option value="subject">제목</option>
					<option value="nickname">내용</option>
					<option value="content">작성자</option>
				</select>
				<input type="text" name="searchWord" class="playMeetingListSearchTxt" placeholder=""/>
				
				<input type="submit" value="" class="playMeetingListSearchBtn"/>
			</form>	
		</div>		
		
    </form>
    
    
    
    