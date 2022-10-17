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
			<div>				<form method="post" action="" class="playMeetingTable">
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
										<li style="text-align:left;">제목제목제목제목제목제목제목111111111111111111111</li>
										<li>2022-07-29</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234</li>
										<li>qwer1234</li>
										<li style="text-align:left;">제목제목제목제목제목제목제</li>
										<li>2022-07-29</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234</li>
										<li>qwer1234</li>
										<li style="text-align:left;">제목제목제목제목제목제목제</li>
										<li>2022-07-29</li>
									</ul>
								</li>

								<li>
									<ul>
										<li><input type="checkbox" name="checkbox"
											value="checkbox"></li>
										<li>1234</li>
										<li>qwer1234</li>
										<li style="text-align:left;">제목제목제목제목제목제목제</li>
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

				</form></div>
		</div>
		<div>
			<div>88</div>
		</div>
<!-- 		<div> -->
<!-- 			<div>99</div> -->
<!-- 		</div> -->
		<div>
			<div>99</div>
		</div>
	</div>
</div>
</html>