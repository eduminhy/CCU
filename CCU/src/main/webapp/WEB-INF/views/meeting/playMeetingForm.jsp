<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/style/playMeetingFormStyle.css">
<script src="//cdn.ckeditor.com/4.19.1/full/ckeditor.js"></script>

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
		<h1 class="playMeetingTopText">같이 갈래요?</h1>
	</div>
	
	
	<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>


	<div class="playMeetingFormContainer">
		<form method="post" action="/meeting/writeOk" class="playMeetingWritingFrm">
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
								<select name="playSubject" class="playSubject">
									<option value="selectSubject">-선택-</option>
									<option value="genre">연극</option>
									<option value="genre">뮤지컬</option>
									<option value="genre">클래식/오페라</option>
									<option value="genre">아동</option>
									
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