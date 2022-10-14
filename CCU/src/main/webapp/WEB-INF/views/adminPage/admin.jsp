<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- indexPage style -->
<link rel="stylesheet" href="/style/admin.css">
<!-- <link rel="stylesheet" href="/style/playMeetingListStyle.css"> -->
<!-- indexPage script -->
<script src="/script/admin.js" type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

</head>
<div class="adminBody">
	<div style="line-height: 100%;">
		<br>

	</div>
	<div class="adminTitle">- 관리자페이지 -</div>
	<br />
	<div class="adminSubmenu">
		<div>통계</div>
		<div>예매관리</div>
		<div>게시판관리</div>
		<div>QnA 관리</div>
		<!-- 		<div>1:1문의 관리</div> -->
		<div>회원관리</div>
	</div>
	<div style="line-height: 50%;">
		<br>

	</div>
	<div class="adminSubmenuContent">
		<div class="adminChart">
			<div>방문현황</div>
			<div>회원현황</div>
			<div>예매현황</div>
			<div>게시글등록현황</div>
		</div>
		<div>
			<div>예매내역</div>
			<div>취소내역</div>
		</div>
		<div>
			<div>게시판관리</div>
		</div>
		<div>
			<div>QnA관리</div>

		</div>
		<!-- 		<div> -->
		<!-- 			<div>문의관리</div> -->

		<!-- 		</div> -->
		<div>
			<div>회원관리</div>

		</div>
	</div>
	<div style="line-height: 250%;">
		<br>

	</div>
	<div class="adminContent">
		<div>
			<div>
				<div id="piechart" style="width: 1100px; height: 700px;"></div>
			</div>
			<div>22</div>
			<div>33</div>
			<div>44</div>
		</div>
		<div>
			<div>
				<!-- 				<div class="playMeetingTopContainer"> -->
				<!-- 					<h1 class="playMeetingTopText">연극게시판</h1> -->
				<!-- 				</div> -->

				<!-- 				<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 -->
				<!-- 					대해 유의하십시오.</p> -->


				<form method="post" action="" class="playMeetingTable">
					<ul>
						<li>
							<ul class="playMeetingList">
								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox" onclick="checkAll(this)"></li>
										<li>아이디</li>
										<li>예매번호</li>
										<li>공연일자</li>
										<li>좌석번호</li>
									</ul>
								</li>
								<!-- 게시물이 출력될 영역 -->
								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>qwer1234</li>
										<li>b15486468546</li>
										<li>1555-55-55</li>
										<li>a51</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>qwer1234</li>
										<li>b15486468546</li>
										<li>1555-55-55</li>
										<li>a51</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>qwer1234</li>
										<li>b15486468546</li>
										<li>1555-55-55</li>
										<li>a51</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>qwer1234</li>
										<li>b15486468546</li>
										<li>1555-55-55</li>
										<li>a51</li>
									</ul>
								<li>
							</ul>
						</li>
					</ul>

					<div>
						<button class="playMeetingListBtn">예매취소</button>
					</div>

					<div class="playMeetingListSearch">
						<form method="get" action="" class="playMeetingListSearchFrm">
							<select name="searchKey" class="playMeetingListSearchKey">
								<option value="subject">제목</option>
								<option value="nickname">내용</option>
								<option value="content">작성자</option>
							</select> <input type="text" name="searchWord"
								class="playMeetingListSearchTxt" placeholder="" /> <input
								type="submit" value="" class="playMeetingListSearchBtn" />
						</form>
					</div>

				</form>
			</div>
			<div>
				<!-- 				<div class="playMeetingTopContainer"> -->
				<!-- 					<h1 class="playMeetingTopText">연극게시판</h1> -->
				<!-- 				</div> -->

				<!-- 				<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 -->
				<!-- 					대해 유의하십시오.</p> -->


				<form method="post" action="" class="playMeetingTable">
					<ul>
						<li>
							<ul class="playMeetingList">
								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox" onclick="checkAll(this)"></li>
										<li>아이디</li>
										<li>예매번호</li>
										<li>취소일자</li>
										<li>환불여부</li>
									</ul>
								</li>
								<!-- 게시물이 출력될 영역 -->
								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234qwer</li>
										<li>a1919191919</li>
										<li>2022-07-29</li>
										<li>취소완료</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234qwer</li>
										<li>a1919191919</li>
										<li>2022-07-29</li>
										<li>취소완료</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234qwer</li>
										<li>a1919191919</li>
										<li>2022-07-29</li>
										<li>취소완료</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234qwer</li>
										<li>a1919191919</li>
										<li>2022-07-29</li>
										<li>취소진행중</li>
									</ul>
								<li>
							</ul>
						</li>
					</ul>

					<div>
						<button class="playMeetingListBtn">삭제</button>
					</div>

					<div class="playMeetingListSearch">
						<form method="get" action="" class="playMeetingListSearchFrm">
							<select name="searchKey" class="playMeetingListSearchKey">
								<option value="subject">제목</option>
								<option value="nickname">내용</option>
								<option value="content">작성자</option>
							</select> <input type="text" name="searchWord"
								class="playMeetingListSearchTxt" placeholder="" /> <input
								type="submit" value="" class="playMeetingListSearchBtn" />
						</form>
					</div>

				</form>
			</div>
		</div>
		<div>
			<div>
				<form method="post" action="" class="playMeetingTable">
					<ul>
						<li>
							<ul class="playMeetingList2">
								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox" onclick="checkAll(this)"></li>
										<li>게시글번호</li>
										<li>아이디</li>
										<li>제목</li>
										<li>작성일시</li>
									</ul>
								</li>
								<!-- 게시물이 출력될 영역 -->
								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234</li>
										<li>qwer1234</li>
										<li style="text-align: left;">제목제목제목제목제목제목제목111111111111111111111</li>
										<li>2022-07-29</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234</li>
										<li>qwer1234</li>
										<li style="text-align: left;">제목제목제목제목제목제목제</li>
										<li>2022-07-29</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234</li>
										<li>qwer1234</li>
										<li style="text-align: left;">제목제목제목제목제목제목제</li>
										<li>2022-07-29</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234</li>
										<li>qwer1234</li>
										<li style="text-align: left;">제목제목제목제목제목제목제</li>
										<li>2022-07-29</li>
									</ul>
								<li>
							</ul>
						</li>
					</ul>

					<div>
						<button class="playMeetingListBtn">삭제</button>

					</div>

					<div class="playMeetingListSearch">
						<form method="get" action="" class="playMeetingListSearchFrm">
							<select name="searchKey" class="playMeetingListSearchKey">
								<option value="subject">제목</option>
								<option value="nickname">내용</option>
								<option value="content">작성자</option>
							</select> <input type="text" name="searchWord"
								class="playMeetingListSearchTxt" placeholder="" /> <input
								type="submit" value="" class="playMeetingListSearchBtn" />
						</form>
					</div>

				</form>
			</div>
		</div>
		<div>
			<div>88</div>
		</div>
		<!-- 		<div> -->
		<!-- 			<div>99</div> -->
		<!-- 		</div> -->
		<div>
			<div><style>
/*목록*/
#board {
	overflow: auto;
}

#board li {
	float: left;
	line-height: 40px;
	border-bottom: 1px solid #ddd;
	width: 10%;
}

#board li:nth-child(6n+1) {
	width: 5%;
}

/* #board li:nth-child(6n+3) { */
/* 	width: 55%; */
/* } */

/* #board li:nth-child(6n+3)>div { */
/* 	float: left; */
/* } */

/* #board li:nth-child(6n+3)>div:first-child{ */
/* 	width: 55%; */
/* 	white-space: nowrap; */
/* 	overflow: hidden; */
/* 	text-overflow: ellipsis; */
/* } */
/*페이지*/
#page li {
	float: left;
	padding: 10px;
}
</style>
<script>
	$(function() {
		$("#searchFrm").submit(function() {
			if ($("#searchWord").val() == "") {
				alert("검색어를 입력하세요.");
				return false;
			}
			;

			return true;
		});
		//리스트 전체 선택
		$("#allChk").click(
				function() {
					$("#board input[type=checkbox]").prop("checked",
							$("#allChk").prop("checked"));
				});

		//선택된 갯수를 구하여 여러개를 삭제하도록 한다.
		$("#multiDel").click(function() {
			//체크갯수 확인
			var countChk = 0;
			$("#board input[name=noList]").each(function(idx, obj) {
				if (obj.checked) { //input테그가 체크상태일 경우 true 아니면 false
					countChk++;
				}
			});
			console.log(countChk);
			if (countChk <= 0) {
				alert("삭제할 레코드를 선택후 삭제해주세요");
				return false;
			}
			;

			$("#listFrm").submit();
		});
	});
	//if("#aa"==0){
	//			
	//}
</script>
<div class="container">
	<h1>게시판 리스트</h1>
	<c:if test="${logStatus=='Y' }">
		<div>
			<a href="/board/boardForm">글쓰기</a>
		</div>
	</c:if>
	<div>${pVO.totalPage }/${pVO.nowPage},총레코드수:${pVO.totalRecord }</div>
	<div>
		<input type="button" value="선택삭제" id="multiDel" />
	</div>
	<form method="post" action="/board/multiDel" id="listFrm">
		<ul id="board">
			<li><input type="checkbox" id="allChk" /></li>
							<li>User ID</li>
							<li>UserName</li>
							<li>Role</li>
							<li>register_date</li>
							<li>Tel</li>
							<li>Gender</li>
							<li>Birth</li>

			<c:forEach var="vo" items="${list }">

			</c:forEach>
		</ul>
	</form>
	<div>
		<ul id="page">
			<!-- 페이지번호 -->
			<c:if test="${pVO.nowPage<=1 }">
				<!-- 이전페이지가 없을 때 -->
				<li>prev</li>
			</c:if>
			<c:if test="${pVO.nowPage>1 }">
				<!-- 이전페이지가 있을때 -->
				<li><a
					href="/board/boardList?nowPage=${pVO.nowPage-1 }<c:if test='${pVO.searchWord!=null }'>&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord }</c:if>">prev</a></li>
			</c:if>
			<!-- 1 	5		5+1-1=5
	11	15 		11+5-1=15
-->
			<c:forEach var="p" begin="${pVO.startPage }"
				end="${pVO.startPage+pVO.onePageCount-1 }">
				<!-- 출력할 페이지번호 총페이지 수보다 작거나 같을때만 출력함 -->
				<c:if test="${p<=pVO.totalPage }">
					<li
						<c:if test="${p==pVO.nowPage }">
					style="background-color:#f00;color:#fff;"
					</c:if>><a
						href="/board/boardList?nowPage=${p}<c:if test='${pVO.searchWord!=null }'>&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord }</c:if>">${p}</a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pVO.nowPage==pVO.totalPage }">
				<li>next</li>
			</c:if>
			<c:if test="${pVO.nowPage<pVO.totalPage }">
				<li><a
					href="/board/boardList?nowPage=${pVO.nowPage+1 }<c:if test='${pVO.searchWord!=null }'>&searchKey=${pVO.searchKey }&searchWord=${pVO.searchWord }</c:if>">next</a></li>
			</c:if>
		</ul>
	</div>
	<div>
		<form method="get" action="/board/boardList" id="searchFrm">
			<select name="searchKey">
				<option value="subject">제목</option>
				<option value="userid">작성자</option>
				<option value="content">글내용</option>
			</select> <input type="text" name="searchWord" id="searchWord" /> <input
				type="submit" value="Search" />
		</form>
	</div>
</div></div>
		</div>
	</div>
</div>
</html>