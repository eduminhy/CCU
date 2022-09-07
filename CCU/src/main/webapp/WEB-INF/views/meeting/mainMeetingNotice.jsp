<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	.MeetingTopContainer{
		border:5px solid #440099;
		width:80%;
		margin:1% auto;
        font-size:15px;
        text-align:center;
	}
	.MeetingTopText{
		color:#440099;
	}
	.MeetingWarning{
		color: #FF5161;
		margin-top:4%;
		margin-left:11%;
	}

	.MeetingFormContainer{
		width:80%;
		margin:0 auto;
	}
	fieldset{
		border:none;
	}
	.MeetingFormContainer table{
		width:100%;
		border-top:2px solid #7F7F7F;
		border-bottom:2px solid #7F7F7F;
		border-spacing:0;
	}
	.MeetingFormContainer td{
		border-bottom:1px solid #B3B3B3;
		padding:10px 0 10px 10px;
		padding:1%;
		padding-left:2%;
	}
	.MeetingFormContainer th{
		width:10%;
		padding-left:5px;
		border-bottom:1px solid #B3B3B3;
		padding:10px 0 10px 10px;
		background:#E0E0E0;
		text-align:center;
	}
	.meetingBackBtn{
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
	
</style>
<script>
</script>
</head>
<body>
	<div class="MeetingTopContainer">
		<h1 class="MeetingTopText">미팅게시판</h1>
	</div>
	
	<p class="MeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>

	<div class="MeetingFormContainer">
		<form method="post" action="" class="MeetingNoticeFrm">
			<fieldset>
				<table summary="공지폼">
					<tbody>
						<tr>
							<th scope="row">
							<label for="meetingSubject">말머리</label></th>
							<td>공지</td>
						</tr>
						<tr>
							<th scope="row">
							<label for="writeSubject">제목</label></th>
							<td>*** 범죄 및 사기 주의 ***</td>
						</tr>
						<tr>
							<th scope="row">
							<label for="meetingWriter">작성자</label></th>
							<td>관리자</td>
						</tr>
						<tr>
							<th scope="row">
							<label for="meetingDate">작성일</label></th>
							<td>2022.01.01</td>
						</tr>
						<tr class="contentPart" style="height:500px;">
							<th scope="row">
							<label for="meetingContent">내용</label></th>
							<td>
								안녕하세요. CCU입니다.<br/>
								저희 홈페이지를 이용해주셔서 감사합니다.<br/>
								<br/>
								해당 게시판의 유의사항에 대하여 안내 말씀 드립니다.<br/>
								<br/>
								-<br/>
								<br/>
								1. 게시판 이용 시 발생하는 금전 및 물질적 피해와 개인 정보 유출 등 이용자에게 생기는 어떠한 피해와 불이익에도 CCU 측에서 책임을 지지 않습니다.<br/>
								<br/>
								2. 게시판 이용 후 타인과 공동구매에 관한 것은 필히 현장 결제 방식을 이용하시기 바랍니다.<br/>
								<br/>
								3. 이미 소지하신 티켓을 불법적인 경로를 통해 양도, 판매하는 것은 불법이며 엄격히 금지하고 있습니다.<br/>
								<br/>
								-<br/>
								<br/>
								범죄 및 사기 행위에 관한 연락처는 본 게시판의 하단을 참고하시길 바랍니다.<br/>
								감사합니다.<br/>
							</td>
						</tr>
					</tbody>
				</table>
				<p class="inputBtn">
					<button class="meetingBackBtn">뒤로가기</button>
				</p>
			</fieldset>
		</form>
	</div>
	
	
</body>
</html>