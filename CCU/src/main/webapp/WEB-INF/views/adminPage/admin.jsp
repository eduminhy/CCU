<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<div class="adminBodyreal">
<div class="adminBody" name="${param.view }">
	<div style="line-height: 100%;">
		<br>

	</div>
	<div class="adminTitle">
		<a href="/admin">- 관리자페이지 -</a>
	</div>
	<br />
	<div class="adminSubmenu">
		<div>통계</div>
		<div>예매관리</div>
		<div>게시판관리</div>
		<div>1:1문의 관리</div>

		<div>회원관리</div>
		<div>신고관리</div>
		<div>후기관리</div>

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
		</div>
		<div>
			<div>게시판관리</div>
		</div>
		<div>
			<div>1:1문의 관리</div>

		</div>

		<div>
			<div>회원관리</div>

		</div>
		<div>
			<div>공연후기관리</div>
			<div>미팅게시판관리</div>

		</div>
		<div>
			<div>공연후기관리</div>

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
				<div class="UserDiv43">
					<!-- 예약내역가져오는 곳~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
					<form method="post" action="" class="playMeetingTable">
						<h4 class="h8" name="${param.booksearchKey}">검색분류:${param.booksearchKey}
							/ 검색어: ${param.booksearchWord}</h4>
						<ul>
							<li>
								<ul class="playMeetingList">
									<li>
										<ul>
											<li><input type="checkbox" name="checkbox"
												value="checkbox" onclick="checkAll(this)"></li>
											<li>아이디</li>
											<li>예매번호</li>
											<li style="text-align: center;">공연명</li>
											<li>공연일자</li>
											<li>좌석번호</li>
										</ul>
									</li>
									<!-- 게시물이 출력될 영역 -->
									<c:forEach var="bvo" items="${booklist}">
										<li>
											<ul>
												<li><input type="checkbox" name="checkbox"
													value="checkbox"></li>
												<li>${bvo.user_id}</li>
												<li>${bvo.no }</li>
												<li>${bvo.name }</li>
												<li>${bvo.showDate }&nbsp;${bvo.showTime }</li>
												<li>${bvo.seat_num }</li>
											</ul>
										</li>
									</c:forEach>
								</ul>
							</li>
						</ul>
					</form>
				</div>
				<div id="pageDiv">
					<ul id="page">
						<c:if test="${apvo.booknowPage<=1 }">
							<li>◀</li>
						</c:if>
						<c:if test="${apvo.booknowPage>1 }">
							<li><a
								href="/admin?booknowPage=${apvo.booknowPage-1 }<c:if test='${apvo.booksearchWord!=null}'>&booksearchKey=${apvo.booksearchKey}&booksearchWord=${apvo.booksearchWord}</c:if>">◀</a></li>
						</c:if>
						<c:forEach var="p" begin="${apvo.bookstartPage }"
							end="${apvo.bookstartPage+apvo.bookonePageCount-1}">
							<c:if test="${p<=apvo.booktotalPage }">
								<li
									<c:if test="${p==apvo.booknowPage}">
									style="background-color:lavender;font-weight:bold;"
								</c:if>><a
									href="/admin?booknowPage=${p}<c:if test='${apvo.booksearchWord!=null}'>&booksearchKey=${apvo.booksearchKey}&booksearchWord=${apvo.booksearchWord}</c:if>">${p}</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${apvo.booknowPage==apvo.booktotalPage }">
							<li>▶</li>
						</c:if>
						<c:if test="${apvo.booknowPage<apvo.booktotalPage }">
							<li><a
								href="/admin?booknowPage=${apvo.booknowPage+1 }<c:if test='${apvo.booksearchWord!=null}'>&booksearchKey=${apvo.booksearchKey}&booksearchWord=${apvo.booksearchWord}</c:if>">▶</a></li>
						</c:if>
					</ul>
				</div>
				<div class="playMeetingListSearch">
					<form method="get" action="/admin" class="playMeetingListSearchFrm">
						<select name="booksearchKey" class="playMeetingListSearchKey">
							<option value="user_id">아이디</option>
							<option value="no">예매번호</option>
							<option value="name">공원명</option>
						</select> <input type="text" name="booksearchWord"
							class="playMeetingListSearchTxt" placeholder="" /> <input
							type="submit" value="" class="playMeetingListSearchBtn" />
					</form>
				</div>
				<!-- 예약내역가져온 곳~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
			</div>
		</div>
		<div>
			<div>

				<div class="container">

					<div class="admindiv2">
						<div class="h3" name="${pVO.searchKey2}">검색분류:${pVO.searchKey2}
							&nbsp;/&nbsp; 검색어: &nbsp;${pVO.searchWord2}</div>
						<div>
							<div>총${pVO.totalPage2 }페이지,&nbsp;&nbsp;
								총레코드수:${pVO.totalRecord2 }</div>
							&nbsp;&nbsp;
							<fmt:formatNumber value="${pVO.totalRecord2 div 20}" />
							<input type="button" value="선택삭제" class="multiDel2" />
						</div>
					</div>

					<c:set var="username4">${pVO.totalRecord2  div 20}</c:set>
					<c:set var="username5" value="0" />
					<c:set var="username6">20</c:set>
					<div class="UserDiv43">
						<form method="post" action="/multiDel" id="listFrm2">
							<div class="UserDiv4">
								<div>
									<input type="checkbox" class="allChk2" />
								</div>
								<div>NO</div>
								<div>UserName</div>
								<div>ShowName</div>
								<div>Title</div>
								<div>Content</div>
								<div>Writedate</div>
								<div>Hit</div>
							</div>


							<c:forEach var="no" begin="1"
								end="${username4+(1-(username4%1))%1}">
								<div class="UserDiv8" name="${username6/20}">
									<c:forEach var="vo" items="${blist }" begin="${username5}"
										end="${username6-1}" step="1" varStatus="status">
										<div class="UserDiv5"">

											<div>
												<input type="checkbox" name="noList" value="${vo.id}" />
											</div>

											<div>${vo.id}</div>
											<div>${vo.user_id}</div>
											<div>${vo.showdb_id}</div>
											<div>${vo.title}</div>
											<div>${vo.content}</div>
											<div>${vo.writedate}</div>
											<div>${vo.hit}</div>
										</div>


									</c:forEach>
								</div>
								<c:set var="username5" value="${username6}" />
								<c:set var="username6">${username6+20}</c:set>


							</c:forEach>

						</form>
					</div>
					<!-- 		</ul> -->
					<!-- 	</form> -->
					<div>
						<div class="page">
							<!-- 페이지번호 -->

							<!-- 							<div>prev</div> -->
							<c:forEach var="p" begin="${pVO.startPage2 }"
								end="${pVO.startPage2+pVO.onePageCount2-1 }">
								<!-- 출력할 페이지번호 총페이지 수보다 작거나 같을때만 출력함 -->
								<c:if test="${p<=pVO.totalPage2 }">
									<div class="divdivdiv3" name="${p}">${p}</div>
								</c:if>
							</c:forEach>

							<!-- 							<div>next</div> -->
						</div>
					</div>

					<div>
						<form method="get" action="/admin" class="searchFrm2">
							<select name="searchKey2">
								<option value="user_id">회원ID</option>
								<option value="name">공연명</option>
								<option value="title">글제목</option>
								<option value="content">글내용</option>
							</select> <input type="text" name="searchWord2" class="searchWord2" /> <input
								type="submit" value="Search" />
						</form>


					</div>
				</div>
			</div>
		</div>
		<div>
			<div>
				<div class="container">

					<div class="admindiv2">
						<div class="h4" name="${pVO.searchKey}">검색분류:${pVO.searchKey}
							&nbsp;/&nbsp; 검색어: &nbsp;${pVO.searchWord}</div>
						<div>
							<div>총${pVO.totalPage }페이지,&nbsp;&nbsp;
								총레코드수:${pVO.totalRecord }</div>
							&nbsp;&nbsp;
							<fmt:formatNumber value="${pVO.totalRecord div 20}" />

							<input type="button" value="선택삭제" class="multiDel" />

						</div>
					</div>

					<c:set var="username1">${pVO.totalRecord  div 20}</c:set>
					<c:set var="username2" value="0" />
					<c:set var="username3">20</c:set>
					<div class="UserDiv43">
						<form method="post" action="/multiDel2" id="listFrm">
							<div class="UserDiv1">
								<div>
									<input type="checkbox" class="allChk" />
								</div>
								<div>chat_room_id</div>
								<div>UserName</div>
								<div>update_date</div>

							</div>
<!-- 							<button type="button" onclick="registChat();" id="chatBtn" -->
<!-- 								style="cursor: pointer;">1:1문의하기</button> -->
							<c:forEach var="no" begin="1"
								end="${username1+(1-(username1%1))%1}">
								<div class="UserDiv3" name="${username3/20}">
									<c:forEach var="vo" items="${chatList}" begin="${username2}"
										end="${username3-1}" step="1" varStatus="status">
										<div class="UserDiv2">

											<div>
												<input type="checkbox" name="noList"
													value="${vo.chat_room_id}" />
											</div>

											<div>${vo.chat_room_id}</div>
											<div value="asdfqwer" >${vo.username}</div>
											<div>${vo.update_date}</div>

										</div>
										<%-- 								<c:if test="${p<=pVO.totalPage2 }"> --%>
										<%-- 									<div class="divdivdiv3" name="${p}">${p}</div> --%>
										<%-- 								</c:if> --%>

									</c:forEach>
								</div>
								<c:set var="username2" value="${username3}" />
								<c:set var="username3">${username3+20}</c:set>

							</c:forEach>
						</form>
					</div>
					<!-- 		</ul> -->
					<!-- 	</form> -->
					<div>
						<div class="page">
							<!-- 페이지번호 -->


							<c:forEach var="p" begin="${pVO.startPage }"
								end="${pVO.startPage+pVO.onePageCount-1 }">
								<!-- 출력할 페이지번호 총페이지 수보다 작거나 같을때만 출력함 -->
								<c:if test="${p<=pVO.totalPage }">
									<div class="divdivdiv" name="${p}">${p}</div>
								</c:if>
							</c:forEach>

						</div>
					</div>

					<div>
						<form method="get" action="/admin" class="searchFrm">
							<select name="searchKey">
								<option value="id">회원ID</option>
								<option value="username">회원명</option>
								<option value="role">회원역활</option>
							</select> <input type="text" name="searchWord" class="searchWord" /> <input
								type="submit" value="Search" />
						</form>

					</div>
				</div>
			</div>
		</div>

		<!-- 		<div> -->
		<!-- 			<div>99</div> -->
		<!-- 		</div> -->
		<div>
			<div>

				<div class="container">

					<div class="admindiv2">
						<div class="h4" name="${pVO.searchKey}">검색분류:${pVO.searchKey}
							&nbsp;/&nbsp; 검색어: &nbsp;${pVO.searchWord}</div>
						<div>
							<div>총${pVO.totalPage }페이지,&nbsp;&nbsp;
								총레코드수:${pVO.totalRecord }</div>
							&nbsp;&nbsp;
							<fmt:formatNumber value="${pVO.totalRecord div 20}" />

							<input type="button" value="선택삭제" class="multiDel" />

						</div>
					</div>

					<c:set var="username1">${pVO.totalRecord  div 20}</c:set>
					<c:set var="username2" value="0" />
					<c:set var="username3">20</c:set>
					<div class="UserDiv43">
						<form method="post" action="/multiDel2" id="listFrm">
							<div class="UserDiv1">
								<div>
									<input type="checkbox" class="allChk" />
								</div>
								<div>User ID</div>
								<div>UserName</div>
								<div>Role</div>
								<div>register_date</div>
								<div>Tel</div>
								<div>Gender</div>
								<div>Birth</div>
							</div>
							<c:forEach var="no" begin="1"
								end="${username1+(1-(username1%1))%1}">
								<div class="UserDiv3" name="${username3/20}">
									<c:forEach var="vo" items="${list }" begin="${username2}"
										end="${username3-1}" step="1" varStatus="status">
										<div class="UserDiv2">

											<div>
												<input type="checkbox" name="noList" value="${vo.id}" />
											</div>

											<div>${vo.id}</div>
											<div>${vo.username}</div>
											<div>${vo.role}</div>
											<div>${vo.register_date}</div>
											<div>${vo.tel}</div>
											<div>${vo.gender}&nbsp;</div>
											<div>${vo.birth}&nbsp;</div>
										</div>
										<%-- 								<c:if test="${p<=pVO.totalPage2 }"> --%>
										<%-- 									<div class="divdivdiv3" name="${p}">${p}</div> --%>
										<%-- 								</c:if> --%>

									</c:forEach>
								</div>
								<c:set var="username2" value="${username3}" />
								<c:set var="username3">${username3+20}</c:set>

							</c:forEach>
						</form>
					</div>
					<!-- 		</ul> -->
					<!-- 	</form> -->
					<div>
						<div class="page">
							<!-- 페이지번호 -->


							<c:forEach var="p" begin="${pVO.startPage }"
								end="${pVO.startPage+pVO.onePageCount-1 }">
								<!-- 출력할 페이지번호 총페이지 수보다 작거나 같을때만 출력함 -->
								<c:if test="${p<=pVO.totalPage }">
									<div class="divdivdiv" name="${p}">${p}</div>
								</c:if>
							</c:forEach>

						</div>
					</div>

					<div>
						<form method="get" action="/admin" class="searchFrm">
							<select name="searchKey">
								<option value="id">회원ID</option>
								<option value="username">회원명</option>
								<option value="role">회원역활</option>
							</select> <input type="text" name="searchWord" class="searchWord" /> <input
								type="submit" value="Search" />
						</form>

					</div>
				</div>
			</div>
		</div>
		<div>
			<div>


				<div class="container">

					<div class="admindiv2">
						<div class="h5" name="${pVO.searchKey4}">검색분류:${pVO.searchKey4}
							&nbsp;/&nbsp; 검색어: &nbsp;${pVO.searchWord4}</div>
						<div>
							<div>총${pVO.totalPage4 }페이지,&nbsp;&nbsp;
								총레코드수:${pVO.totalRecord4 }</div>
							&nbsp;&nbsp;
							<fmt:formatNumber value="${pVO.totalRecord4 div 10}" />

							<input type="button" value="선택삭제" class="multiDel3" />

						</div>
					</div>
					<c:set var="username11">${pVO.totalRecord4  div 10}</c:set>
					<c:set var="username12" value="0" />
					<c:set var="username13">10</c:set>
					<div class="UserDiv43">
						<form method="post" action="/multiDel3" id="listFrm3">
							<div class="UserDiv10">
								<div class="admindiv34">
									<div>
										<input type="checkbox" class="allChk3" />
									</div>
									<div>NO</div>
									<div>show_id</div>
									<div>order_list_no</div>
								</div>
								<div>
									<div>UserName : content</div>
									<div>UserName : rcontent</div>

								</div>
							</div>

							<c:forEach var="no" begin="1"
								end="${username11+(1-(username11%1))%1}">
								<div class="UserDiv12" name="${username13/10}">
									<c:forEach var="vo" items="${rlist }" begin="${username12}"
										end="${username13-1}" step="1" varStatus="status">
										<div class="UserDiv11">
											<div class="admindiv35">
												<div>
													<input type="checkbox" name="noList" value="${vo.postnum}" />
												</div>
												<div>${vo.id}</div>
												<div>${vo.genre}</div>
												<div>${vo.order_list_no}</div>
											</div>
											<div class="admindiv36">
												<div>&nbsp;${vo.user_id}&nbsp;:&nbsp;${vo.content}</div>
												<div>&nbsp;${vo.user_id2}&nbsp;:&nbsp;${vo.rcontent}</div>

											</div>
										</div>


									</c:forEach>
								</div>
								<c:set var="username12" value="${username13}" />
								<c:set var="username13">${username13+10}</c:set>

							</c:forEach>
						</form>
					</div>
					<!-- 		</ul> -->
					<!-- 	</form> -->
					<div>
						<div class="page">

							<c:forEach var="p" begin="${pVO.startPage4 }"
								end="${pVO.startPage4+pVO.onePageCount4-1 }">
								<!-- 출력할 페이지번호 총페이지 수보다 작거나 같을때만 출력함 -->
								<c:if test="${p<=pVO.totalPage4 }">
									<div class="divdivdiv4" name="${p}">${p}</div>
								</c:if>
							</c:forEach>

						</div>
					</div>

					<div>
						<form method="get" action="/admin" class="searchFrm4">
							<select name="searchKey4">

								<option value="content">후기 및 신고내용</option>
								<option value="rcontent">신고한 글내용</option>
								<option value="username">후기작성 회원 ID</option>
								<option value="rusername">후기작성 & 신고한 회원ID</option>
							</select> <input type="text" name="searchWord4" class="searchWord4" /> <input
								type="submit" value="Search" />
						</form>

					</div>
				</div>
			</div>
			<div>

				<div class="container">


					<div class="admindiv2">
						<div class="h2" name="${pVO.searchKey5}">검색분류:${pVO.searchKey5}
							&nbsp;/&nbsp; 검색어: &nbsp;${pVO.searchWord5}</div>
						<div>
							<div>총${pVO.totalPage5 }페이지,&nbsp;&nbsp;
								총레코드수:${pVO.totalRecord5 }</div>
							&nbsp;&nbsp;
							<fmt:formatNumber value="${pVO.totalRecord5 div 10}" />

							<input type="button" value="선택삭제" class="multiDel4" />

						</div>
					</div>
					<c:set var="username21">${pVO.totalRecord5  div 10}</c:set>
					<c:set var="username22" value="0" />

					<c:set var="username23">10</c:set>
					<div class="UserDiv43">
						<form method="post" action="/multiDel4" id="listFrm4">

							<div class="UserDiv13">
								<div class="admindiv37">
									<div>
										<input type="checkbox" class="allChk4" />
									</div>
									<div>NO</div>
									<div>show_id</div>
								</div>
								<div>
									<div>UserName : content</div>
									<div>Report-UserName : Report-content</div>

								</div>
							</div>
							<c:forEach var="no" begin="1"
								end="${username21+(1-(username21%1))%1}">
								<div class="UserDiv15" name="${username23/10}">
									<c:forEach var="vo" items="${mlist }" begin="${username22}"
										end="${username23-1}" step="1" varStatus="status">

										<div class="UserDiv14">
											<div class="admindiv37">
												<div>
													<input type="checkbox" name="noList" value="${vo.postnum}" />
												</div>
												<div>${vo.id}</div>
												<div>${vo.show_id}</div>

											</div>
											<div class="admindiv36">
												<div>&nbsp;${vo.user_id}&nbsp;:&nbsp;${vo.content}</div>
												<div>&nbsp;${vo.user_id2}&nbsp;:&nbsp;${vo.rcontent}</div>

											</div>
										</div>


									</c:forEach>
								</div>
								<c:set var="username22" value="${username23}" />
								<c:set var="username23">${username23+10}</c:set>

							</c:forEach>
						</form>
						<!-- 		</ul> -->
						<!-- 	</form> -->
						<div>
							<div class="page">
								<!-- 페이지번호 -->


								<c:forEach var="p" begin="${pVO.startPage5 }"
									end="${pVO.startPage5+pVO.onePageCount5-1 }">
									<!-- 출력할 페이지번호 총페이지 수보다 작거나 같을때만 출력함 -->
									<c:if test="${p<=pVO.totalPage5 }">
										<div class="divdivdiv5" name="${p}">${p}</div>
									</c:if>
								</c:forEach>

							</div>
						</div>

						<div>
							<form method="get" action="/admin" class="searchFrm5">
								<select name="searchKey5">
									<option value="content">전체 글내용</option>
									<option value="rcontent">신고한 글내용</option>
									<option value="username">글작성 회원 ID</option>
									<option value="rusername">글작성 & 신고한 회원ID</option>

								</select> <input type="text" name="searchWord5" class="searchWord5" /> <input
									type="submit" value="Search" />
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div>
			<div>
				<div>

					<div class="container">

						<div class="admindiv2">
							<div class="h1" name="${pVO.searchKey3}">검색분류:${pVO.searchKey3}
								&nbsp;/&nbsp; 검색어: &nbsp;${pVO.searchWord3}</div>
							<div>
								<div>총${pVO.totalPage3 }페이지,&nbsp;&nbsp;
									총레코드수:${pVO.totalRecord3 }</div>
								&nbsp;&nbsp;
								<fmt:formatNumber value="${pVO.totalRecord3 div 20}" />
								<input type="button" value="선택삭제" class="multiDel5" />
							</div>
						</div>
						<c:set var="username31">${pVO.totalRecord3  div 20}</c:set>
						<c:set var="username32" value="0" />

						<c:set var="username33">20</c:set>
						<div class="UserDiv43">
							<form method="post" action="/multiDel5" id="listFrm5">
								<div class="UserDiv33">
									<div>
										<input type="checkbox" class="allChk5" />
									</div>
									<div>NO</div>
									<div>UserID</div>
									<div>ShowName</div>
									<div>Content</div>
									<div>rate</div>
									<div>orderNum</div>
									<div>WriteDate</div>
									<div>ViewDate</div>




								</div>
								<c:forEach var="no" begin="1"
									end="${username31+(1-(username31%1))%1}">
									<div class="UserDiv35" name="${username33/20}">
										<c:forEach var="vo" items="${reviewlist }"
											begin="${username32}" end="${username33-1}" step="1"
											varStatus="status">
											<div class="UserDiv34">

												<div>
													<input type="checkbox" name="noList" value="${vo.id}" />
												</div>

												<div>${vo.id}</div>
												<div>${vo.user_id}</div>
												<div>${vo.name}</div>
												<%-- 										<div>${vo.type}</div> --%>
												<div>${vo.content}</div>
												<div>${vo.rate}</div>

												<div>${vo.order_list_no}</div>
												<div>${vo.writedate}</div>
												<div>${vo.viewdate}</div>

											</div>


										</c:forEach>
									</div>
									<c:set var="username32" value="${username33}" />
									<c:set var="username33">${username33+20}</c:set>

								</c:forEach>

							</form>
						</div>
						<!-- 		</ul> -->
						<!-- 	</form> -->
						<div>

							<div class="page">
								<!-- 페이지번호 -->


								<c:forEach var="p" begin="${pVO.startPage3 }"
									end="${pVO.startPage3+pVO.onePageCount3-1 }">
									<!-- 출력할 페이지번호 총페이지 수보다 작거나 같을때만 출력함 -->
									<c:if test="${p<=pVO.totalPage3 }">
										<div class="divdivdiv6" name="${p}">${p}</div>
									</c:if>
								</c:forEach>


							</div>
						</div>

						<div>
							<form method="get" action="/admin" class="searchFrm3">
								<select name="searchKey3">
									<option value="Content">후기내용</option>
									<option value="UserName">후기작성 회원 ID</option>
									<option value="ShowName">공연명</option>

								</select> <input type="text" name="searchWord3" class="searchWord3" /> <input
									type="submit" value="Search" />
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>