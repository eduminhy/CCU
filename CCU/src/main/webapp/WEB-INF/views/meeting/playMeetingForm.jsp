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
<!-- 
package com.team200.proj.vo;

public class MeetingVO {
	
	private int id;
	private String user_id;
	private String showdb_id;
	private String title;
	private String content;
	private String writedate;
	private int hit;
	private String genre;
-->
	<div class="playMeetingTopContainer">
		<h1 class="playMeetingTopText">같이 갈래요?</h1>
	</div>
	
	
	<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>


	<div class="playMeetingFormContainer">
		<form method="post" action="/meeting/meetingWrite" class="playMeetingWritingFrm">
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
						<th scope="row">
						<label for="playSubject">showdb_id</label></th>
					<td>
						<select name="playSubject" class="playSubject">
							<option value="PF198249">연극</option>
							<option value="PF198250">뮤지컬</option>
							<option value="PF198251">클래식/오페라</option>
							<option value="PF198252">아동</option>
						</select>
						<ul>
						<li><input type="radio" name="showdb_id" value="PF198249" checked>showdb_id
						<input type="radio" name="showdb_id" value="PF198249" checked>showdb_id</li>
						</ul>
					</td>
				</tr>
				<div class = "">
	<p>
		공연을 선택해주세요
	</p>
	<form method = "get" action = "/meeting/showDb" id = "showDb">
		공연 검색 : <input type = "text" name = "name" id = "name">
		<input type = "submit" value = "공연검색">
	</form>
	<ul id = "showList">
		<c:forEach var = "showVO" items = "${showList}">
			<li>${showVO.name }</li>
			<li class = "address">${zipVO.sido }&nbsp;${zipVO.doro }&nbsp;${zipVO.buildingname }&nbsp;${zipVO.buildingnum1 }&nbsp;<c:if test = "${zilVO.buildingnum2 != '0'}">${zilVO.buildingnum2}</c:if>&nbsp;(${zipVO.dong }&nbsp;${zipVO.num1 }<c:if test = "${zipVO.num2 != '0'}">${zipVO.num2 }</c:if>)</li>
		</c:forEach>
	</ul>
</div>
				<tr>
					<th scope="row">
						<label for="writeSubject">제목</label></th>
					<td><input type="text" name="title" id="title" class="writeSubject"/></td>
				</tr>
				<tr style="height:500px;">
					<th scope="row">
						<label for="writeContent">내용</label></th>
					<td>
						<textarea name="content" class="writeContent" id="content" rows="5" cols="40"></textarea>
					</td>
				</tr>
				</tbody>
			</table>

				<p class="inputBtn">
					<button class="playMeetingFrmBtn">등록</button>
				</p>
		</form>
	</div>
</body>
</html>