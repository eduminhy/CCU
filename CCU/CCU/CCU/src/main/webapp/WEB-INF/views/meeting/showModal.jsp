<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
	.topUp, .topDown, #topMenu, .bottom, .footer {display:none;}
	.show_table{}
	.selectshow{color:#440099; font-weight:bold; font-size:30px;}
	.subject_name_warp, .content_wrap{background-color:lavender;}
	.subject_name_warp{text-align:center;}
	.mainposter{width:100px; padding:5px;}
	.th_column_1, .th_column_2, .th_column_3{text-align:center; font-weight:bold; background-color:#440099; color:#fff;}
	.show_table td{border-top:1px solid #440099;}
	.move:link, .move:visited {color:black; font-size:16px;}
</style>
<div class="subject_name_warp">
    <span class="selectshow"><공연 선택></span>
    <br/><span class="selectshow">=====================================</span>
</div>
<div class="content_wrap">
    <!-- 게시물 표 영역 -->
    <div class="show_table_wrap">
        <!-- 게시물 O -->
        <c:if test="${showList != 'empty'}">
            <div class="table_exist">
                <table class="show_table">
                    <thead>
                    <tr>
                        <td class="th_column_1" >공연 ID</td>
                        <td class="th_column_2">공연포스터</td>
                        <td class="th_column_3">공연 이름</td>
                    </tr>
                    </thead>
                    <c:forEach items="${showList}" var="showList">
                        <tr>
                            <td><c:out value="${showList.id}"></c:out></td>
                            <td><img src="${showList.mainposter }" class="mainposter"/></td>
                            <td>
                                <a class="move" href='<c:out value="${showList.id}"/>'
                                   data-name=' <c:out value="${showList.name}"/>'>
                                    <c:out value="${showList.name}"></c:out>
                                </a>
                            </td>
<%--                            <td><c:out value="${showList.name}"></c:out></td>--%>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </c:if>
        <!-- 게시물 x -->
        <c:if test="${listCheck == 'empty'}">
            <div class="table_empty">
                등록된 공연이 없습니다.
            </div>
        </c:if>

    </div>
</div>

<script>
    $(".move").on("click", function (e) {

        e.preventDefault();

        let showId = $(this).attr("href");
        let showName = $(this).data("name");
        $(opener.document).find("#showdb_id").val(showId);
        $(opener.document).find("#name").val(showName);

        window.close();

    })
</script>
