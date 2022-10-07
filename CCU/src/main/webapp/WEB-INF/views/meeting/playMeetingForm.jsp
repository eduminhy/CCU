<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <link rel="stylesheet" href="/style/playMeetingFormStyle.css">
    <script src="//cdn.ckeditor.com/4.19.1/full/ckeditor.js"></script>
    <script>
        $(function () {
            CKEDITOR.replace("writeContent"); // CKEDITOR 크기 조절

            $("#playMeetingWritingFrm").submit(function () {
                if ($("#title").val() == "") {
                    alert("제목을 입력하세요!");
                    return false;
                }
                if ($("#showdb_id").val() == "") {
                    alert("공연을 검색해주세요!");
                    return false;
                }
                if (CKEDITOR.instances.content.getData() == "") {
                    alert("글내용을 입력하세요!");
                    return false;
                }
                return true;
            });
        });
        

        $(function () {

            $("#showSearchBtn").click(function () {
                console.log(1);
                window.open("/meeting/showSearchOk", "name", "width=500, height=400");
            })
        });
//         $("#id").hide();
    </script>
</head>

<div class="playMeetingTopContainer">
    <h1 class="playMeetingTopText">같이 갈래요?</h1>
</div>


<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>


<div class="playMeetingFormContainer">
    <form method="post" action="/meeting/meetingWrite" id="playMeetingWritingFrm" class="playMeetingWritingFrm">
        <table summary="연극미팅글쓰기폼">

<%--             <input type="hidden" name="id" id="id" value="${board.id}"> --%>

            <ul>
                <li>
                    <input type="hidden" name="showdb_id" id="showdb_id" value="${board.showdb_id}" readonly="readonly">
                    <input type="text" id="name" value="${board.name}">
                    <button class="showId_btn">공연검색</button>
                </li>
                <%--                <li><input type="button" value="공연검색" id="showSearchBtn"/></li>--%>
            </ul>

            <tbody>

            <tr>
                <th scope="row">
                    <label for="playSubject">말머리</label></th>
                <td>
                    <select name="playSubject" class="playSubject">
                        <option value="selectSubject">-선택-</option>
                        <option value="searchSomeone">모집</option>
                        <option value="lookSomeone">찾아요</option>
                    </select>
                <th scope="row">


            </tr>

            <tr>
                <th scope="row">
                    <label for="writeSubject">제목</label></th>
                <td><input type="text" name="title" id="title" class="writeSubject" value="${board.title}"/></td>
            </tr>
            <tr style="height:500px;">
                <th scope="row">
                    <label for="writeContent">내용</label></th>
                <td>
                    <textarea name="content" class="writeContent" id="content" rows="5" cols="40" >${board.content}</textarea>
                </td>
            </tr>
            </tbody>
        </table>

        <p class="inputBtn">
            <button class="playMeetingFrmBtn">등록</button>
        </p>
    </form>
</div>
</body>

<script>
    $('.showId_btn').on("click", function (e) {
        e.preventDefault();

        let modalUrl;
        let name = document.getElementById('name').value;

        console.log(name);

        if (name != null) {
            modalUrl = "/meeting/showModal/" + document.getElementById('name').value;
        } else {
            modalUrl = "/meeting/showModal";
        }
        let modalOption = "width = 650px, height = 550px, top = 300px, left = 300px, scrollbars=yes";

        window.open(modalUrl, "공연 찾기", modalOption);
    });
</script>

</html>