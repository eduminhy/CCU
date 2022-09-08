<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	.playMeetingFormContainer{
		width:80%;
		margin:0 auto;
	}
	fieldset{
		border:none;
	}
	.playMeetingFormContainer table{
		width:100%;
		border-top:2px solid #7F7F7F;
		border-bottom:2px solid #7F7F7F;
		border-spacing:0;
	}
	.playMeetingFormContainer td{
		border-bottom:1px solid #B3B3B3;
		padding:10px 0 10px 10px;
		padding:1%;
		padding-left:2%;
	}
	.playMeetingFormContainer th{
		width:10%;
		padding-left:5px;
		border-bottom:1px solid #B3B3B3;
		padding:10px 0 10px 10px;
		background:#E0E0E0;
		text-align:center;
	}
	.playMeetingBackBtn{
		text-align:right;
		padding:10px 20px;
		float:right;
		background:#440099;
		color:white;
		font-weight:bold;
		font-size:17px;
		border-style:none;
	}

    .contentPart>td:last-child{
    	vertical-align: top;
    }
	
	
	
	
	/*
	.playComment1{
		width:80%;
		border-top:2px solid #ddd;
	}*/
	
    .playComment1>li{
    	width:80%;
    	margin-top:50px;
    	list-style-type: none;
        float:left;
        height: 50px;
        line-height:50px;
        border-top:2px solid #ddd;
        border-bottom:1px solid #ddd;
        width:10%;
    }
    .playComment1>li:nth-child(5n+2){
    	width:60%;
    }
	
	
	
	
	
	
	
	
	
	
	
	
</style>
<script>
</script>
</head>
<body>
	<div class="playMeetingTopContainer">
		<h1 class="playMeetingTopText">연극게시판</h1>
	</div>


<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>
	
	
	<div class="playMeetingFormContainer">
		<form method="post" action="" class="playMeetingFrm">
			<fieldset>
				<table summary="글">
					<tbody>
						<tr>
							<th scope="row">
							<label for="playSubject">말머리</label></th>
							<td>모집</td>
						</tr>
						<tr>
							<th scope="row">
							<label for="playSubject">제목</label></th>
							<td>엘리자벳 3명 구해요</td>
						</tr>
						<tr>
							<th scope="row">
							<label for="playWriter">작성자</label></th>
							<td>tylee</td>
						</tr>
						<tr>
							<th scope="row">
							<label for="playDate">작성일</label></th>
							<td>2022.07.29</td>
						</tr>
						<tr class="contentPart" style="height:500px;">
							<th scope="row">
							<label for="playContent">내용</label></th>
							<td>
								9월 27일에 엘리자벳 관란하실 3분 구합니다.<br/>
								댓글 남겨주세요!<br/>
							</td>
						</tr>
					</tbody>
				</table>
				
				
				
				
				
			<div class="playComment1">
	 			<ul class="playComment2">
					<li>댓글</li>
	 			</ul>
			
			</div>	

				
				
				
				
				
				
				
				<p class="inputBtn">
					<button class="playMeetingBackBtn">뒤로가기</button>
				</p>
			</fieldset>
		</form>
	</div>
	
	
</body>
</html>