<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/style/playMeetingCommentStyle.css">
	<div class="playMeetingTopContainer">
		<h1 class="playMeetingTopText">같이 갈래요?</h1>
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

		
			<div class="CommentBox">
				<div class="comment_option">
					<h3 class="comment_title">댓글</h3>
					<ul class="comment_list">
						<li class="CommentItem">
							<div class="comment_area">
								<div class="comment_box">
									<div class="profile">
										<img src="../img/profile.png"/>
									</div>
									<div class="comment_nick_box">
										<div class="comment_nick_info">
											<div class="comment_nickname">jhma</div>
										</div>
									</div>
									
								
									<div class="comment_text_box">
										<p class="comment_text_view">
											<span class="text_comment">
												혹시 구하셨나요?
											</span>
										</p>
									</div>
									
									
									<div class="comment_info_box">
										<span class="comment_info_date">2022.08.03</span>
										<a href="#" role="button" class="comment_info_button">답글쓰기</a>
									</div>
								</div>
							</div>
						</li>
						
						
						
						
						
						
						<li class="CommentItem CommentItem-reply">
							<div class="comment_area">
								<div class="comment_box">
									<div class="profile">
										<img src="../img/profile.png"/>
									</div>								
									<div class="comment_nick_box">
										<div class="comment_nick_info">
											<div class="comment_nickname">tylee</div>
										</div>
									</div>
									
									
									<div class="comment_text_box">
										<p class="comment_text_view">
											<span class="text_comment">
												아직 안 구했습니다!
											</span>
										</p>
									</div>
									
									
									<div class="comment_info_box">
										<span class="comment_info_date">2022.08.03</span>
										<a href="#" role="button" class="comment_info_button">답글쓰기</a>
									</div>
								</div>
							</div>
						</li>
						
						<li class="CommentItem CommentItem-reply">
							<div class="comment_area">
								<div class="comment_box">
									<div class="profile">
										<img src="../img/profile.png"/>
									</div>								
									<div class="comment_nick_box">
										<div class="comment_nick_info">
											<div class="comment_nickname">jhma</div>
										</div>
									</div>
									
									
									<div class="comment_text_box">
										<p class="comment_text_view">
											<span class="text_comment">
												저 같이 보고 싶어요!
											</span>
										</p>
									</div>
									
									
									<div class="comment_info_box">
										<span class="comment_info_date">2022.08.03</span>
										<a href="#" role="button" class="comment_info_button">답글쓰기</a>
									</div>
								</div>
							</div>
						</li>	
					</ul>
				
				
					<div class="CommentWriter">
						<div class="comment_inbox">
							<textarea placeholder="댓글을 남겨보세요" rows="1" class="comment_inbox_text" style="height: 50px;"></textarea>
						</div>
						<div class="comment_btn">
							<div class="register_box">
								<a href="#" role="button" class="button btn_register">등록</a>
							</div>
						
						</div>
						
					</div>
				
				
				</div>
			
			
			
			</div>	
				
				
				
				
				
				<p class="inputBtn">
					<!--  <button class="playMeetingBackBtn">뒤로가기</button>-->	
					<!-- <input type="button" value="뒤로가기" class="playMeetingBackBtn" id="back" onclick="location.href='playMeetingList'"/> -->
				 <button class="meetingBackBtn" id="back" onclick="history.back()">뒤로가기</button>
				 </p>
			</fieldset>
		</form>
	</div>
	