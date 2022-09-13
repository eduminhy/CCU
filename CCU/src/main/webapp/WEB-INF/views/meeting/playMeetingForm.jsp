<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdn.ckeditor.com/4.19.1/full/ckeditor.js"></script>
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
		/*padding:10px 0 10px 10px;*/
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
	.playSubject{
		width:5%;
		height:30px;
	}
	.writeSubject{
		width:50%;
		height:40px;
		border:none;
		font-size:15px;
		outline:none;
	}
	.playMeetingFrmBtn{
		text-align:right;
		padding:10px 20px;
		float:right;
		background:#440099;
		color:white;
		font-weight:bold;
		font-size:17px;
		border-style:none;
	}

	
</style>
<script>
	$(function(){
		CKEDITOR.replace("writeContent",{width:'100%', height:'300px'}); // CKEDITOR 크기 조절
		
		$("#writeSubject").submit(function(){
			if($("#playSubject").val()==""){
				alert("제목을 입력하세요!");
				return false;
			}
			if(CKEDITOR.instances.content.getData()==""){
				alert("글내용을 입력하세요!");
				return false;
			}
			return true;
		});
	});
</script>
</head>
<body>
	<div class="playMeetingTopContainer">
		<h1 class="playMeetingTopText">연극게시판</h1>
	</div>
	
	
	<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>


	<div class="playMeetingFormContainer">
		<form method="post" action="" class="playMeetingWritingFrm">
			<fieldset>
				<table summary="연극미팅글쓰기폼">
					<tbody>
						<tr>
							<th scope="row">
							<label for="playSubject">말머리</label></th>
							<td>
								<select name="playSubject" class="playSubject">
									<option value="selectSubject">-선택-</option>
									<option value="searchSomeone">모집</option>
									<option value="lookSomeone">찾아요</option>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">
							<label for="writeSubject">제목</label></th>
							<td><input type="text" name="writeSubject" class="writeSubject"/></td>
						</tr>
						<tr style="height:500px;">
							<th scope="row">
							<label for="writeContent">내용</label></th>
							<td>
								<textarea name="writeContent" class="writeContent" rows="5" cols="40"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<p class="inputBtn">
					<button class="playMeetingFrmBtn">등록</button>
				</p>
			</fieldset>
		</form>
	</div>
	
	
</body>
</html>