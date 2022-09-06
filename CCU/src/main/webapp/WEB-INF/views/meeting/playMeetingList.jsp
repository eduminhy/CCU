<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
	.playMeetingTopContainer{
		/*margin-top:1%;*/
		border:5px solid #440099;
		width:80%;
		/*margin:0 auto;*/
		margin:1% auto; /* %:위 , auto:(상하/좌우) */
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
	
	
	.playMeetingListContainer{
		width:80%;
		margin:0 auto;
	}
	
	
	.playMeetingListBtn{
		padding:10px 20px;
		float:right;
		background:#440099;
		color:white;
		font-weight:bold;
		font-size:17px;
		border-style:none;
	}
	
	.playMeetingListSearchKey{
		border:1px solid #ddd;
	}
	.playMeetingListSearchTxt{
		width:250px;
		height:25px;
		border-top:none;
		border-left:none;
		border-right:none;
		border-bottom:1px solid #ddd;
	}
	.playMeetingListSearchBtn{
		background:url("../image/search.png");
		border-style:none;
		background-repeat: no-repeat;
		width:25px;
		height:25px;
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
	
	
	<div class="playMeetingListContainer">
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th><input type="checkbox" name="checkbox" value="checkbox" onclick="checkAll(this)"></th>
					<th>번호</th>
					<th>말머리</th>
					<th>제목</th>
					<th>마감여부</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th><input type="checkbox" name="checkbox" value="checkbox"></th>
					<td>1298</td>
					<td>모집</td>
					<td>엘리자벳 3명 구해요.</td>
					<td>모집중</td>
					<td>tylee</td>
					<td>5</td>
  					<td>2022.07.29</td>
 				</tr>
				<tr>
					<th><input type="checkbox" name="checkbox" value="checkbox"></th>
					<td>1297</td>
					<td>모집</td>
					<td>행오버 같이 보실 분?</td>
					<td>모집중</td>
					<td>jhma</td>
					<td>11</td>
					<td>2022.07.13</td>
 				</tr>
				<tr>
					<th><input type="checkbox" name="checkbox" value="checkbox"></th>
					<td>1296</td>
					<td>모집</td>
					<td>오만과 편견 1분 구합니다!</td>
  					<td>모집중</td>
					<td>hymin</td>
					<td>16</td>
					<td>2022.06.30</td>
				</tr>
				<tr>
					<th><input type="checkbox" name="checkbox" value="checkbox"></th>
					<td>1295</td>
 					<td>찾아요</td>
					<td>햄릿 관람하실 분 1명</td>
					<td>모집마감</td>
					<td>tylee</td>
					<td>31</td>
					<td>2022.06.23</td>
				</tr>
			</tbody>
		</table>
		
		
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
		

	</div>
	
	
</body>
</html>