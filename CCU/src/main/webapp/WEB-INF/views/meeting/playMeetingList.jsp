<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	.playMeetingTopContainer{
		border:5px solid #440099;
		width:80%;
		margin:1% auto;
        font-size:15px;
        text-align:center;
	}
	.playMeetingTopText{
		color:#440099;
	}
	
	.playMeetingWarning{
		color: #FF5161;
		margin-top:4%;
		margin-left:11%;
	}
	
    ul, li{ 
        list-style:none;
        /*text-align:center;*/
        padding:0;
        margin:0;
	}
	
    .playMeetingTable{
		margin:0 auto;
		width:80%;
		/*height:255px;*/
		padding:0;
		/*border-bottom:2px solid #7F7F7F; /* ------------------백엔드하고 스타일 다시 확인하기 */
		height:400px;
    }

    .playMeetingTable > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
	}


    .playMeetingList {
    	margin-top:10px;
    	line-height: 50px;
    }
    

    .playMeetingList > li:first-child > ul > li {
        background-color:#E0E0E0;
        font-weight:bold;
        text-align:center;
        border-top:2px solid #7F7F7F;
	}
    .playMeetingList > li:last-child > ul > li {
        background-color:#E0E0E0;
        border-bottom:2px solid #7F7F7F;
	}

/*
    .playMeetingList > li > ul {
        clear:both;
        padding:0px auto;
        position:relative;
        min-width:40px;
}*/
    .playMeetingList > li > ul > li { 
        float:left;
        font-size:12pt; /* 글씨 크기 */
        border-bottom:1px solid silver;
        vertical-align:baseline;
}    

	.playMeetingList > li > ul > li:first-child							{width:5%; height:50px;} /*체크박스 열,행 크기*/
    .playMeetingList > li > ul > li:first-child +li              		{width:10%; height:50px;} /*번호 열,행 크기*/
    .playMeetingList > li > ul > li:first-child +li+li           		{width:10%; height:50px;} /*말머리 열,행 크기*/
    .playMeetingList > li > ul > li:first-child +li+li+li        		{width:30%; height:50px; text-align: center;} /*제목 열,행 크기*/
    .playMeetingList > li > ul > li:first-child +li+li+li+li     		{width:10%; height:50px;} /*마감여부 열,행 크기*/
    .playMeetingList > li > ul > li:first-child +li+li+li+li+li			{width:10%; height:50px;} /*작성자 열,행 크기*/
    .playMeetingList > li > ul > li:first-child +li+li+li+li+li+li		{width:10%; height:50px;} /*조회수 열,행 크기*/
    .playMeetingList > li > ul > li:first-child +li+li+li+li+li+li+li	{width:15%; height:50px;} /*작성일 열,행 크기*/    

    .left {
        text-align : left;
	}

	.playMeetingListBtn{
		margin:1%;
		padding:10px 20px;
		float:right;
		background:#440099;
		color:white;
		font-weight:bold;
		font-size:17px;
		border-style:none;
		cursor:pointer;
	}
	


	.playMeetingListSearchKey{
		margin:1%;
		margin-top:1%;
		border:1px solid #ddd;
		padding:7px 7px;
		padding-left:1%;
	}
	.playMeetingListSearchTxt{
		width:250px;
		height:25px;
		border-top:none;
		border-left:none;
		border-right:none;
		border-bottom:1px solid #ddd;
		outline:none;
	}
	.playMeetingListSearchBtn{
		background:url("../img/icon/search.png");
		border-style:none;
		background-repeat: no-repeat;
		margin:-0.5%;
		width:25px;
		height:25px;
		cursor:pointer;
	}
</style>
<script>
	function checkAll(checkAll){
		let checkboxes=document.getElementsByName("checkbox");
		console.log(checkboxes);
		checkboxes.forEach((checkbox)=>{
			console.log(checkbox);
			checkbox.checked=checkAll.checked;
		})
	}
</script>
</head>
<body>
	<div class="playMeetingTopContainer">
		<h1 class="playMeetingTopText">연극게시판</h1>
	</div>
	
	<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>
	
	
    <form method="post" action="" class="playMeetingTable">
        <ul>
            <!-- 게시판 목록  -->
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
			<button class="playMeetingListBtn">글쓰기</button>
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
</body>
</html>