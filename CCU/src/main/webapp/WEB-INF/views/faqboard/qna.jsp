<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/style/qnaStyle.css">



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title></title>

</head>
<body>
<div class="qnamenu">
	<h1><img src="../img/logo01.PNG" width=100px; height=100px;></h1>
	<div id="myTapmenu">
		<ul>
			<li><a href="/faq">FAQ</a></li>
			<li><a href="/qna">Q&A</a></li>
			<li><a href="">챗봇이용하기</a>
			<li><a href="">내질문글</a>
			<li><a href="/terms">이용약관</a></li>
		</ul>
	</div>
</div>

	<div id="container">
		<ul id="ulTable">
			<li>
				<ul id="topul">
					<li>글번호</li>
					<li>제목</li>
					<li>작성일</li>
					<li>작성자</li>
					<li>조회수</li>
				</ul>
			</li>
			<!-- 게시물이 출력될 영역 -->
			<li>
				<ul>
					<li>1</li>
					<li class="left">환불 문의</li>
					<li>2022-09-18</li>
					<li>박동빈</li>
					<li>0</li>
				</ul>
			</li>

			<li>
				<ul>
					<li>2</li>
					<li class="left">같이같래요 게시판 사기 대처문의</li>
					<li>2022-09-18</li>
					<li>박동빈</li>
					<li>0</li>
				</ul>
			</li>

			<li>
				<ul>
					<li>3</li>
					<li class="left">결제 취소 관련해서 문의드립니다</li>
					<li>2022-09-18</li>
					<li>박동빈</li>
					<li>0</li>
				</ul>
			</li>
			<li>
				<div id="paging">
					<div>◀</div>
					<div>
						<b>1</b>
					</div>
					<div>2</div>
					<div>3</div>
					<div>4</div>
					<div>5</div>
					<div>▶</div>
				</div>
			</li>


			<li id='searchkeyword'>
				<div>
					<select id='searchoption'>
						<option value='A'>제목+내용</option>
						<option value='T'>제목</option>
						<option value='C'>내용</option>
						<option value='W'>글쓴이</option>
					</select> 
						<input type="text" name="searchword" class="keyword" /> 
						<input type='button' value='' class="qnasearchbtn" />
				</div>
			</li>
		</ul>
	</div>
	
	
	



</body>
</html>