<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
	
	
	.CommentBox {
	    margin-top: 30px;
	    border-top: 2px solid #7F7F7F;
	}	
	.CommentBox .comment_option {
	    position: relative;
	    padding-top: 16px;
	    margin-bottom: 11px;
	}	
	
	.CommentBox .comment_option .comment_title {
	    float: left;
	    margin-top: 3px;
	    margin-right: 12px;
	    padding-left:20px;
	    font-size: 17px;
	}	
	.comment_list{
		list-style: none;
	}
	
	.CommentBox .comment_list .CommentItem:first-child {
	    border-top: 0;
	    position: relative;
	    margin: 0;
	    padding: 0;
	    display: list-item;
	}	
	
	.CommentBox .comment_list .comment_area {
	    position: relative;
	    padding: 12px 23px 10px 0;
	}
	.CommentBox .comment_list .comment_box {
	    padding-left: 46px;
	}	
	
	.CommentBox .comment_list .comment_nick_box {
	    margin-bottom: 4px;
	}	
	.CommentBox .comment_list .comment_nick_box .comment_nick_info {
	    display: inline-block;
	    position: relative;
	    font-size: 13px;
	    vertical-align: top;
	}	
	.CommentBox .comment_list .comment_nick_box .comment_nickname {
	    font-weight: 700;
	}	
	.CommentBox .comment_list .comment_text_box {
	    position: relative;
	    font-size: 13px;
	    word-break: break-all;
	    word-wrap: break-word;
	}	
	
	.CommentBox .comment_list .comment_text_box .comment_text_view {
	    overflow: hidden;
	    margin: 0;
    	padding: 0;
	}	
	.CommentBox .comment_list .comment_text_box .text_comment {
	    line-height: 17px;
	    word-break: break-all;
	    word-wrap: break-word;
	    vertical-align: top;
	}
	.CommentBox .comment_list .comment_info_box {
	    margin-top: 7px;
	    font-size: 12px;
	    color: #ddd;
	}	
	.CommentBox .comment_list .comment_info_box .comment_info_date {
	    margin-right: 8px;
	}
	.CommentBox a {
		color: #ddd;
		cursor: pointer;
	    text-decoration: none;
	}
	
	
	.CommentBox .comment_list .CommentItem.CommentItem-reply {
	    padding-left: 46px;
	    border-top: 1px solid #ddd;
	}
	.CommentBox .comment_list+.CommentWriter {
	    margin-top: 10px;
	}
	.CommentWriter {
	    margin: 12px 0 29px;
	    padding: 16px 10px 20px 18px;
	    
	    border: 2px solid #ddd;
	    /*border-radius: 6px;*/
	    box-sizing: border-box;
	}
	.CommentWriter .comment_inbox {
	    position: relative;
	    margin-bottom: 10px;
	}
	.CommentWriter .comment_inbox_text {
	    overflow-x: hidden;
	    overflow-y: auto;
	    display: block;
	    width: 100%;
	    min-height: 17px;
	    padding-right: 1px;
	    border: 0;
	    font-size: 13px;
	    background: transparent;
	    outline: 0;
	}
	.CommentWriter .comment_btn {
	    position: relative;
	}
	.CommentWriter .register_box {
	    float: right;
	}
	.CommentWriter .register_box .button {
	    display: inline-block;
	    margin-top:-50px;
	    margin-left:-70px;
	    min-width: 46px;
	    height: 34px;
	    line-height: 36px;
	    font-size: 13px;
	    color: #7F7F7F;
	    border-radius: 6px;
	    box-sizing: border-box;
	    font-weight: 700;
	    text-align: center;
	    vertical-align: top;
	    text-decoration: none;
	}
</style>
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

		
			<div class="CommentBox">
				<div class="comment_option">
					<h3 class="comment_title">댓글</h3>
					<ul class="comment_list">
						<li class="CommentItem">
							<div class="comment_area">
								<div class="comment_box">
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
					<button class="playMeetingBackBtn">뒤로가기</button>
				</p>
			</fieldset>
		</form>
	</div>
	
	
</body>
</html>