<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	#preferGenreContent.preferGenreContent {
	    width: 45%; /* 전체 폭 */
	    margin: -1px auto auto;
	    display: block;
	}
	#preferGenreContent {
	    z-index: 1;
	    position: relative;
	}
	.preferGenreContent {
	    padding: 0 0 40px;
	}
	.searchOptionForm{
		margin:0;
		padding: 0;
		display: block;
	}
	.search-wrapper {
		padding:0;
		display: block;
	    position: relative;
	    width: 1020px;
	    margin: 0 auto;
	    /*font-size: 12px;*/
	    z-index: 999;
	}
	.search-filter {
		display: block;
	    margin: 0;
	    margin-left: -20%; /* 필터 위치 */
    	padding: 0;
	    position: relative;
	    line-height: 2;
	    float: left;
    	width: 200px;
	}
	.search-filter .search-filter-content {
		display: block;
		margin:0;
		margin-right:-24px;
	    padding: 0 10px;
	    height:1100px; /* 필터 회색 전체 높이 */
	    box-sizing: border-box;
	    background-color:#F2F2F2;
	    /*border: 1px solid #eee;*/
	    /*border-top: 0;*/
	    /*border-bottom: 1px solid #eee;*/
	    /*box-shadow: 1px 0 1px 0 #eee, -1px 0 1px 0 #eee;*/
	}
	.search-filter h2 {
	    margin: 0;
	    padding-top:20px;
	    padding-left:22px;
	    /*padding: 20px 0 0;*/
	    font-size: 16px;
	    line-height: 1.5;
	    display: block;
	    margin-block-start: 1.33em;
	    margin-block-end: 1.33em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    font-weight: bold;
	    
	}
	/*
	.search-genre-filter {
		margin: 0;
		display: block;
	    padding-top: 10px;
	}
	*/
	.search-filter-options {
		margin: 0;
		display: block;
	    padding: 0 10px 8px;
	    border-bottom: 1px solid #efefef;
	}
	.search-filter h3 {
		padding: 0;
	    margin: 0;
	    padding-left:22px;
	    padding-top: 10px;
	    font-size: 15px;
	    display: block;
	    margin-block-start: 1.67em;
	    margin-block-end: 1.67em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    font-weight: bold;
	}
	#searchGenreFilter{
		margin: 0;
	    padding: 0;
	    display: block;
	}
	.search-option-items{
		
		list-style: none;
		margin: 0;
    	padding-left: -10px;
    	display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	    
	}
	.search-option-item{
		list-style: none;
		margin: 0;
		margin-left: -30px; /* 위치이동 */
    	padding: 10px 10px 8px;
    	display: list-item;
    	
	}
	.search-customized-checkbox input[type="checkbox"] {
	    /*position: absolute;
	    width: 1px;
	    height: 1px;*/
	    margin: -1px;
	    padding: 0;
	    border: 0;
	    overflow: hidden;
	    clip: rect(0,0,0,0);
	}
	input[type="checkbox" i] {
	    background-color: initial;
	    cursor: default;
	    appearance: auto;
	    box-sizing: border-box;
	}
	input {
	    writing-mode: horizontal-tb !important;
	    font-style: ;
	    font-variant-ligatures: ;
	    font-variant-caps: ;
	    font-variant-numeric: ;
	    font-variant-east-asian: ;
	    font-weight: ;
	    font-stretch: ;
	    text-rendering: auto;
	    color: fieldtext;
	    letter-spacing: normal;
	    word-spacing: normal;
	    line-height: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    display: inline-block;
	    text-align: start;
	}
	.search-customized-checkbox input[type="checkbox"]+label {
	    position: relative;
	    /*display: block;*/
	    cursor: pointer;
	    /*color: #0073e9;*/
	    font-weight: normal;
	}
	
	
	.search-content.search-content-with-feedback {
		display: block;
	    margin-bottom: -115px;
	}
	.search-content {
	    margin: 0;
	    padding: 20px 0 0 20px;
	    overflow: hidden;
	}
	#productList { /* 포스터 위치 */
	    /*margin: 0 -8px 0 -7px;*/
	    margin-top:5%;
	    margin-left:3%;
	    padding-left:10px;
	}
	.search-product-list {
	    width: 100%;
	    zoom: 1;
	}
	ul{
		
		list-style: none;
		padding: 0;
		display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	}
	.search-product {
		display: list-item;
		list-style: none;
		margin:0;
	    position: relative;
	    float: left;
	    width: 200px;
	    height: 400px;
	    margin-bottom: 10px;
	    padding: 0 20px 10px 7px; /* 포스터 콘텐츠 간격 */
	    font-size: 12px;
	    color: #888;
	}
	.search-product .search-product-link {
	    display: block;
	    text-decoration: none;
	}
	.search-product .search-product-wrap {
	    display: block;
	    width: 252px;
	    padding: 10px 0 0 10px;
	    box-sizing: border-box;
	    border: 1px solid transparent;
	    overflow: hidden;
	    transition: box-shadow .2s ease;
	}
	.search-product-wrap{
		list-style: none;
		margin: 0;
		margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}
	.search-product .genreImage {
	    display: block;
	    position: relative;
	    list-style: none;
	    margin: 0;
	    padding: 0;
	    width: 230px;
	    height: 230px;
	    margin-bottom: 5px;
	}
	.search-product .image .search-product-wrap-img {
	    width: 230px;
	    height: 230px;
	}
	img {
	    vertical-align: top;
	    border: 0;
	    margin-left:10%;
	    padding: 0;
	    width:150px;
	    height:200px;
	}
	.descriptions{
		list-style: none;
		margin: 0;
    	padding: 0;
        display: block;
    	margin-inline-start: 40px;
	}
	.search-product .descriptions-inner {
	    min-height: 180px;
	    margin: 0;
	    margin-left:-35%; /* 내용 위치 */
	    padding: 10px;
	    display: block;
	    list-style: none;
	}
	.descriptions-inner{ /* 포스터 내용 가운데 정렬 */
		text-align:center;
	}
	.search-product .badges {
		margin: 0;
		list-style: none;
	    display: block;
	    overflow: hidden;
	    padding: 10px 0 2px;
	    height: 20px;
	    font-size: 12px;
	    line-height: 20px;
	    color: #555;
	    zoom: 1;
	    vertical-align: middle;
	}
	.search-product .hash-area {
	    display: block;
	    padding-top: 3px;
	    margin: 0;
	    padding: 0;
	    list-style: none;
	}
	.search-product .hash-wrap {
	    display: block;
	    padding-top: 5px;
	    margin: 0;
	    padding: 0;
	    list-style: none;
	}
	.search-product .hash-area .hashInfo {
	    margin: 0;
	    margin-top:-25%;
	    padding: 0;
	    list-style: none;
	    display: block;
	    padding-top: 3px;
	    /*padding-left: -100px;*/
	    font-size: 14px;
	    color: #7D4DB8;
	}
	.genreHashtag{
		background-color:#F5F2FA;
		width:100%;
		height:200px;
		margin-bottom: 15px;
		margin: 0;
	    padding: 0;
	    display: block;	
	}
	.hashtags{
		text-align: center;
    	height: 68px;
    	outline: none;
    	margin: 0;
	    padding: 0;
	    padding-top:80px;
	    border: 0;
	    vertical-align: baseline;
	    display: block;
	}
	.hashtags a {
	    display: inline-block;
	    text-align: center;
	    font-size: 18px;
	    margin: 0 30px; /* 각 해시태그 간격 */
	    color: #000;
	    vertical-align: top;
	    text-decoration: none;
	    outline: none;
	    padding: 0;
	    border: 0;
	}
	.hashtags a.on {
	    color: #ec7d2c;
	}
</style>
<script>
</script>
</head>
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