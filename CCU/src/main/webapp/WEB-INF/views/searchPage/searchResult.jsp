<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/style/searchResultStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<script>
    // $("#searchBar1").keyup(function (key) {
    //     if (key.keyCode === 13) {
    //         // const search = document.getElementById('searchBar1').value;
    //         // if (search !== '') {
    //         //     const link = "/searchPage/searchResult?search=" + search;
    //         //     location.href = link;
    //         // } else {
    //         //     console.log("beep");
    //         //     alert("검색어를 입력하세요");
    //         // }
    //         searchShow();
    //     }
    // });

    function searchShow() {
        const search = document.getElementById('searchBar1').value;
        if (search !== '') {
            const link = "/searchPage/searchResult?search=" + search;
            location.href = link;
        } else {
            console.log("beep");
            alert("검색어를 입력하세요");
        }
    }
</script>
<body>
<div class="searchTopContainer">
    <c:choose>
        <c:when test="${empty searchText}">
            <h2 class="searchTopTxt"><span>검색</span></h2>
        </c:when>
        <c:otherwise>
            <h2 class="searchTopTxt"><span style="color:#FF5161"><b>${searchText}</b></span>에 대한 검색 결과</h2>
        </c:otherwise>
    </c:choose>
    <input type="text" id="searchBar1" name="searchTopWriteTxt" class="searchTopWriteTxt" placeholder=""/>
    <input type="submit" value="" class="searchTopBtn" onclick="searchShow()"/>
</div>

<div class="searchPanel">
    <ul class="itemList">
        <c:forEach var="svo" items="${showlist}">
            <li data-sale="1" data-srch-list-order="1">
                <div class="colPhoto">
                    <a href="/show/showDetail?show_id=${svo.id}" title="상세페이지로 이동" target="_blank" gtm-label="공연이미지">
						<span class="itemImage">
							<img src="${svo.mainposter }" alt="엘 콘서트 시리즈 〈아무르 무지크〉 II. 로미오와 줄리엣"
                                 style="visibility: visible; width: 200px; height: 200px">
						</span>
                    </a>
                </div>
                <div class="colData">
                    <div class="itemName">
                        <a href="#" title="상세페이지로 이동" target="_blank" gtm-label="엘 콘서트 시리즈 〈아무르 무지크〉 II. 로미오와 줄리엣">
                            <span>${svo.name }</span>
                    </div>
                    <div class="itemInfo">
                        <div class="ticketInfo">
                            <span class="type">${svo.genre}</span>
                        </div>
                    </div>
                </div>
                <div class="colInfo">
                    <span class="concertHall">${svo.place_name}</span>
                    <span class="period">${svo.startdate } ~ ${svo.enddate}</span>
                </div>
            </li>
        </c:forEach>

    </ul>
</div>
</body>
</html>