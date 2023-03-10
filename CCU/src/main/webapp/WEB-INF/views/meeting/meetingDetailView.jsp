<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<link rel="stylesheet" href="/style/mainMeetingNoticeStyle.css">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<script src="//cdn.ckeditor.com/4.19.1/full/ckeditor.js"></script>

<script>
	//게시글 삭제
	function deleteBoard(boardID) {
		console.log("boardID",boardID);
		if(confirm("삭제하시겠습니까?")) {
			$.ajax({
	             url: "/meeting/meetingDelete/"+boardID,
	             type: 'GET',
	             async: false,
	         }).done(function () {
	        	 document.location.href = '/meeting/mainMeeting';
	         }).fail(function (error) {
	             alert(JSON.stringify(error));
	         });
		}
	}

    //댓글쓰기 작업
    $(function () {
        $("#replyFrm").submit(function (e) {
            e.preventDefault();//기본이벤트 제거하기
            console.log("111");
            //var params = "id="+$("id").val()+"&content="+$("#content").val(); //폼데이터 값을 전송값으로 변환하는 함수(일렬로 만드는 함수)
            var params = $("#replyFrm").serialize();
            console.log(params);
            $.ajax({
                url: "/reply/replyWrite",
                data: params,
                type: 'POST',
            }).done(function () {
                alert('댓글이 등록되었습니다.');
                window.location.reload();
            }).fail(function (error) {
                alert(JSON.stringify(error));
            });
        });
        
    });

    const main = {

        init: function () {
            const _this = this;

            document.querySelectorAll('#btn-reply-update').forEach(function (item) {
                item.addEventListener('click', function () {
                    const form = this.closest('form');
                    _this.replyUpdate(form);
                });
            });
        },
        replyUpdate: function (id) {
        	console.log(id);
           const data = {
                id: $('#id'+id).val(),
                content: $('#content'+id).val()
            }
            //console.log(data);
            //var params = $("replyUpdate"+id).serialize();
            
            console.log(data);
            if (!data.content || data.content.trim() === "") {
                alert("공백 또는 입력하지 않은 부분이 있습니다.");
                return false;
            }
            $.ajax({
                type: 'POST',
                url: '/reply/replyUpdate',
                data: data
            }).done(function () {
                 window.location.reload();
            }).fail(function (error) {
                 alert(JSON.stringify(error));
            });
            return false;
        },

        replyDelete: function (id) {
        	if( confirm("삭제하시겠습니까?") ) {
        		$.ajax({
                    type: 'DELETE',
                    url: '/reply/' + id,
                }).done(function () {
                    alert('댓글이 삭제되었습니다.');
                    window.location.reload();
                }).fail(function (error) {
                    alert(JSON.stringify(error));
                });
        	}
        }
    };

    main.init();
    $(document).ready(function() {
		$('.report2').click(function() {
			console.log(${meetingView.id})
			var rcontent = prompt("신고하시는 이유를 적어주세요", "여기에!!");
			var rname = $(this).parent().children().eq(1).children().eq(0).text();
			var content = "meet";
			$.ajax({
				url: '/show/report', //request 보낼 서버의 경로
				type: 'post', // 메소드(get, post, put 등)
				async: false,
				ContentType: 'application/json',
				data: JSON.stringify({
					'name': rname,
					'id': ${meetingView.id},
					'content': content,
					'rcontent': rcontent
				}), //보낼 데이터
				success: function(data) {        //서버로부터 정상적으로 응답이 왔을 때 실행
				}, error: function(err) {		//서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
				}
			});
		});
    });
    
    $(function (){
    	$("#btn_toggle").click(function (){
      	$("#Toggle").toggle();
      });
    });
</script>
<div class="MeetingTopContainer">
	<h1 class="MeetingTopText">같이 갈래요?</h1>
</div>

<p class="MeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해
	유의하십시오.</p>

<div class="MeetingFormContainer">
	<button class="meetingBackBtn" id="back" onclick="history.back()">뒤로가기</button>
	<button class="report2">🚨신고하기</button>
	<form method="post" action="" class="MeetingNoticeFrm">
		<fieldset>
			<table summary="공지폼">
					<tr>
						<th scope="row"><label for="meetingSubject">공연 제목</label></th>
						<td>${meetingView.name}</td>
					</tr>
					<tr>
						<th scope="row"><label for="writeSubject">제목</label></th>
						<td>${meetingView.title}</td>
					</tr>
					<tr>
						<th scope="row"><label for="meetingWriter">작성자</label></th>
						<td>${meetingView.user_id}</td>
					</tr>
					<tr>
						<th scope="row"><label for="meetingDate">작성일</label></th>
						<td>${meetingView.writedate}</td>
					</tr>
					<tr class="contentPart" style="height:300px;">
						<th scope="row"><label for="meetingContent">내용</label></th>
						<td>${meetingView.content}</td>
					</tr>
			</table>
			<p class="inputBtn">
				<c:if test="${user eq meetingView.user_id}">
					<a><button type="button" id="delete" onclick="deleteBoard(${meetingView.id});">삭제</button></a>
					<a href="/meeting/meetingEdit/${meetingView.id}">
						<button type="button" id="modify">수정</button>
					</a>
				</c:if>
			</p>
		</fieldset>
	</form>
	<!-- 댓글작업 -->
	<div>
		<form method="post" id="replyFrm">
			<!-- 	↓아래 id는 글번호를 의미	 -->
			<input type="hidden" name="board_id" value="${meetingView.id }" />
			<textarea maxlength="100" name="content" id="content" cols="50" rows="3" placeholder="댓글을 입력해주세요."></textarea>
			<input type="submit" id="replyok" value="댓글등록" />
		</form>
	</div>
	<div id="replyList">
		<ul>
			<c:forEach var="reply" items="${reply}">
				<li id="replyZone"><span id="renamedate"><b>${reply.user_id}</b>&nbsp;(${reply.writedate})</span>
					<p>${reply.content}</p> 
					<c:if test="${reply.user_id eq user}">
						<a type="button" onclick="main.replyDelete(${reply.id})">
							<button id="redelete">삭제</button>
						</a>
						<a type="button" data-bs-toggle="collapse"
							data-bs-target=".multi-collapse-${reply.id}">
							<button id="remodify">수정</button>
						</a>
						<div class="collapse multi-collapse">
							<form class="replyUpdate" id="replyUpdate${reply.id}"">

								<input type="hidden" id="id${reply.id}" name="id" value="${reply.id}">

								<textarea class="form-control" id="content${reply.id}" name="content"
									rows="3" style=display:none;">${reply.content}</textarea>
								<input type="button" id ="editbtn" onclick="main.replyUpdate(${reply.id})" value="댓글수정"></button>
							</form>
						</div>
					</c:if>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>


<script>
$(document).ready(function(){
	$('#editbtn').hide();	
	
	isShow = true; //변수 하나를 설정, 화면에 보이면 true, 보이지 않으면 false;
	
	
	$('#remodify').click(function(){
		
		if(isShow){ //보이니까 숨기고
    		isShow = false;
    		$('.form-control').hide();	//요소를 안보이게 한다.
    		$('#remodify').text('수정');
    		$('#editbtn').hide();	
    	}else{	//안보이니까 보이게 한다
    		isShow = true;
    		$('#editbtn').show();
    		$('.form-control').show();		//요소를 보이게 한다
        	$('#remodify').text('수정');
        		
    	};
    	
	});
});





</script>