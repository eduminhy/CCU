<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
body {
	line-height: 2em;
}

ul, li {
	list-style: none;
	text-align: center;
	padding: 0;
	margin: 0;
}

#container {
	width: 1200px;
	margin: 0 auto;
}

#container>ul>li:first-child {
	text-align: center;
	font-size: 14pt;
	height: 40px;
	vertical-align: middle;
	line-height: 30px;
}

#ulTable {
	margin-top: 10px;
}

#ulTable>li:first-child>ul>li {
	background-color: #c9c9c9;
	font-weight: bold;
	text-align: center;
}

#ulTable>li>ul {
	clear: both;
	padding: 0px auto;
	position: relative;
	min-width: 40px;
}

#ulTable>li>ul>li {
	float: left;
	font-size: 10pt;
	border-bottom: 1px solid silver;
	vertical-align: baseline;
}

#ulTable>li>ul>li:first-child {
	width: 10%;
} 
#ulTable>li>ul>li:first-child+li {
	width: 45%;
} 
#ulTable>li>ul>li:first-child+li+li {
	width: 20%;
} 
#ulTable>li>ul>li:first-child+li+li+li {
	width: 15%;
}
#ulTable>li>ul>li:first-child+li+li+li+li {
	width: 10%;
} 
#paging {
	clear: both;
	margin: 0 auto;
	width: 220px;
	height: 50px;
}

#paging>div {
	float: left;
	width: 30px;
	margin: 0 auto;
	text-align: center;
}

#searchkeyword {
	clear: both;
}

#searchkeyword>div {
	margin: 0 auto;
	margin-top: 30px;
	width: auto;
	height: 100px;
}

.left {
	text-align: left;
}

#cstext {
	text-align: center;
	font-size: 3em;
	color: #440099;
	margin-bottom: 100px;
}

#topul {
	border-top: 3px solid grey;
}
#qnamenu {
	width: 1200px;
	margin : 0 auto;
}

#qnamenu li {
	list-style: none;
	float: left;
	outline: 2px solid #440099;
	margin-left: 6px;
	position: relative;
}
</style>

</head>
<body>

	<h1 id="cstext">- 고객센터 -</h1>

	<div id="qnamenu">
		<ul>
			<li><a href="/faq">FAQ</a></li>
			<li><a href="/qna">Q&A</a></li>
			<li><a href="/terms">이용약관</a></li>
		</ul>
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
					</select> <input id='keyWord' /> <input type='button' value='검색' />
				</div>
			</li>
		</ul>
	</div>
</body>
</html>