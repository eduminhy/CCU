<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공연 검색</title>
</head>
<body>
<div class="subject_name_warp">
    <span>공연 선택</span>
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
                        <td class="th_column_2">공연 이름</td>
                    </tr>
                    </thead>
                    <c:forEach items="${showList}" var="showList">
                        <tr>
                            <td><c:out value="${showList.id}"></c:out></td>
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
</body>

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

</html>