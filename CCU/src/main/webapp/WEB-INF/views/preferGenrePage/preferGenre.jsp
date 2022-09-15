<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/preferGenreStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<body>
	<div>
		<section id="preferGenreContent" class="preferGenreContent">
			<form id="searchOptionForm" class="searchOptionForm" action="" method="get" autocomplete="off">
				<div class="search-wrapper">
					<div class="search-filter">
						<div class="search-filter-content">
							<h2>필터</h2>
							<div class="search-filter-options search-genre-filter">
								<h3>장르</h3>
								<div id="searchGenreFilter" class="search-filter-toggle search-filter-option-list">
									<ul class="search-option-items search-customized-checkbox">
										<li class="search-option-item">
											<input type="checkbox" id="genrePlay" value="" title="genreFilter" data-name="genre">
											<label for="genrePlay" class="item-name">연극</label>
										</li>
										<li class="search-option-item">
											<input type="checkbox" id="genreMusical" value="" title="genreFilter" data-name="genre">
											<label for="genreMusical" class="item-name">뮤지컬</label>
										</li>										
										<li class="search-option-item">
											<input type="checkbox" id="genreClassic" value="" title="genreFilter" data-name="genre">
											<label for="genreClassic" class="item-name">클래식/오페라</label>
										</li>										
										<li class="search-option-item">
											<input type="checkbox" id="genreDance" value="" title="genreFilter" data-name="genre">
											<label for="genreDance" class="item-name">무용</label>
										</li>										
										<li class="search-option-item">
											<input type="checkbox" id="genreGukak" value="" title="genreFilter" data-name="genre">
											<label for="genreGukak" class="item-name">국악</label>
										</li>										
										<li class="search-option-item">
											<input type="checkbox" id="genreChild" value="" title="genreFilter" data-name="genre">
											<label for="genreChild" class="item-name">아동</label>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>					
					<div class="search-content search-content-with-feedback">
						<div class="genreHashtag">
							<p class="hashtags" id="hashCategoryTag" selectedcategoryid="16">
								<a href="javascript:void(0);" categoryid="16" class="on">#드라마</a>
								<a href="javascript:void(0);" categoryid="15" class="on">#로맨스</a>
								<a href="javascript:void(0);" categoryid="17" class="on">#스릴러</a>
								<a href="javascript:void(0);" categoryid="18" class="on">#액션</a>
								<a href="javascript:void(0);" categoryid="20" class="">#역사</a>
								<a href="javascript:void(0);" categoryid="19" class="">#코미디</a>
							</p>
						</div>
						<ul id="productList" class="search-product-list">
							<li class="search-product" id="search-produc">
								<a href="#" class="search-product-link" target="_blank">
									<dl class="search-product-wrap" style="height: 393px;">
										<dt class="genreImage">
											<img src="../img/선호포스터1.png" class="search-product-wrap-img" onload="logTime(this);logImageLoadTime(this);">
										</dt>
										<dd class="descriptions">
											<div class="descriptions-inner">
												<div class="badges"></div>
												<div class="hash-area">
													<div class="hash-wrap">
														<div class="hashInfo">
															<span class="name-info"><b>박상원 콘트라바쓰</b></span><br/>
															<span class="date-info">2022.10.08 - 2022.10.09</span><br/>
															<span class="place-info">용인시 평생학습관 큰어울마당</span>
														</div>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</a>
							</li>
							
							<li class="search-product" id="search-produc">
								<a href="#" class="search-product-link" target="_blank">
									<dl class="search-product-wrap" style="height: 393px;">
										<dt class="genreImage">
											<img src="../img/선호포스터2.png" class="search-product-wrap-img" onload="logTime(this);logImageLoadTime(this);">
										</dt>
										<dd class="descriptions">
											<div class="descriptions-inner">
												<div class="badges"></div>
												<div class="hash-area">
													<div class="hash-wrap">
														<div class="hashInfo">
															<span class="name-info"><b>잠자는 변신의 카프카</b></span><br/>
															<span class="date-info">2015.10.07 - 2015.10.18</span><br/>
															<span class="place-info">남산예술센터 드라마센터</span>
														</div>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</a>
							</li>		
							
							<li class="search-product" id="search-produc">
								<a href="#" class="search-product-link" target="_blank">
									<dl class="search-product-wrap" style="height: 393px;">
										<dt class="genreImage">
											<img src="../img/선호포스터3.png" class="search-product-wrap-img" onload="logTime(this);logImageLoadTime(this);">
										</dt>
										<dd class="descriptions">
											<div class="descriptions-inner">
												<div class="badges"></div>
												<div class="hash-area">
													<div class="hash-wrap">
														<div class="hashInfo">
															<span class="name-info"><b>꿈속에선 다정하였네</b></span><br/>
															<span class="date-info">2022.09.28 - 2022.09.28</span><br/>
															<span class="place-info">트라이보울</span>
														</div>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</a>
							</li>	
							
							<li class="search-product" id="search-produc">
								<a href="#" class="search-product-link" target="_blank">
									<dl class="search-product-wrap" style="height: 393px;">
										<dt class="genreImage">
											<img src="../img/선호포스터4.png" class="search-product-wrap-img" onload="logTime(this);logImageLoadTime(this);">
										</dt>
										<dd class="descriptions">
											<div class="descriptions-inner">
												<div class="badges"></div>
												<div class="hash-area">
													<div class="hash-wrap">
														<div class="hashInfo">
															<span class="name-info"><b>어린왕자</b></span><br/>
															<span class="date-info">2020.11.19 - 2020.11.29</span><br/>
															<span class="place-info">SH아트홀</span>
														</div>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</a>
							</li>	
							
							<li class="search-product" id="search-produc">
								<a href="#" class="search-product-link" target="_blank">
									<dl class="search-product-wrap" style="height: 393px;">
										<dt class="genreImage">
											<img src="../img/선호포스터5.png" class="search-product-wrap-img" onload="logTime(this);logImageLoadTime(this);">
										</dt>
										<dd class="descriptions">
											<div class="descriptions-inner">
												<div class="badges"></div>
												<div class="hash-area">
													<div class="hash-wrap">
														<div class="hashInfo">
															<span class="name-info"><b>스마일 어게인</b></span><br/>
															<span class="date-info">2020.05.22 - 2020.07.12</span><br/>
															<span class="place-info">대학로 하마씨어터</span>
														</div>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</a>
							</li>	
							
							<li class="search-product" id="search-produc">
								<a href="#" class="search-product-link" target="_blank">
									<dl class="search-product-wrap" style="height: 393px;">
										<dt class="genreImage">
											<img src="../img/선호포스터6.png" class="search-product-wrap-img" onload="logTime(this);logImageLoadTime(this);">
										</dt>
										<dd class="descriptions">
											<div class="descriptions-inner">
												<div class="badges"></div>
												<div class="hash-area">
													<div class="hash-wrap">
														<div class="hashInfo">
															<span class="name-info"><b>별의 노래</b></span><br/>
															<span class="date-info">2020.02.11 - 2020.02.16</span><br/>
															<span class="place-info">대학로 SH아트홀</span>
														</div>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</a>
							</li>	
							
							<li class="search-product" id="search-produc">
								<a href="#" class="search-product-link" target="_blank">
									<dl class="search-product-wrap" style="height: 393px;">
										<dt class="genreImage">
											<img src="../img/선호포스터7.png" class="search-product-wrap-img" onload="logTime(this);logImageLoadTime(this);">
										</dt>
										<dd class="descriptions">
											<div class="descriptions-inner">
												<div class="badges"></div>
												<div class="hash-area">
													<div class="hash-wrap">
														<div class="hashInfo">
															<span class="name-info"><b>맛의 기억</b></span><br/>
															<span class="date-info">2019.09.10 - 2019.10.27</span><br/>
															<span class="place-info">부산메트로홀</span>
														</div>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</a>
							</li>	
							
							<li class="search-product" id="search-produc">
								<a href="#" class="search-product-link" target="_blank">
									<dl class="search-product-wrap" style="height: 393px;">
										<dt class="genreImage">
											<img src="../img/선호포스터8.png" class="search-product-wrap-img" onload="logTime(this);logImageLoadTime(this);">
										</dt>
										<dd class="descriptions">
											<div class="descriptions-inner">
												<div class="badges"></div>
												<div class="hash-area">
													<div class="hash-wrap">
														<div class="hashInfo">
															<span class="name-info"><b>우수 소설</b></span><br/>
															<span class="date-info">2018.12.28 - 2018.12.30</span><br/>
															<span class="place-info">아트벙커</span>
														</div>
													</div>
												</div>
											</div>
										</dd>
									</dl>
								</a>
							</li>	
							
						</ul>
					</div>
				</div>
			</form>
		</section>
	</div>
</body>
</html>