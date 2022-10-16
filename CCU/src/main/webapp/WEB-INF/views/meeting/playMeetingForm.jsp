<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/style/playMeetingFormStyle.css">
<script src="//cdn.ckeditor.com/4.19.1/full/ckeditor.js"></script>
<script>
	$(function () {
	    CKEDITOR.replace("content"); // CKEDITOR 크기 조절
	
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
</script>

<div class="playMeetingTopContainer">
    <h1 class="playMeetingTopText">같이 갈래요?</h1>
</div>	


<p class="playMeetingWarning">※ 개인정보 유출 및 피해에 유의하시고 금전 및 물품 피해에 대해 유의하십시오.</p>


<div class="playMeetingFormContainer">
    <form method="post" action="/meeting/meetingWrite" id="playMeetingWritingFrm" class="playMeetingWritingFrm">
        <table summary="연극미팅글쓰기폼">
            <ul id="showSearch">
                <li>
                    <input type="hidden" name="showdb_id" id="showdb_id" value="${board.showdb_id}" readonly="readonly">
                    <input type="text" id="name" value="${board.name}" placeholder="공연명을 입력해주세요">
                    <button class="showId_btn">공연검색</button>
                </li>
            </ul>
            <tr style="height:50px;">
                <th scope="row">마감여부 선택</th>
                <td class="rowtd">
                    <select name="status" id="status">
                        <option value="selectstatus">-선택-</option>
                        <option value="모집중">모집중</option>
                        <option value="모집완료">모집완료</option>
                    </select>
            </tr>
            <tr style="height:50px;">
                <th scope="row">제목</th>
                <td class="rowtd" style="padding-left:10px;"><input type="text" name="title" id="title" class="writeSubject" value="${board.title}"/></td>
            </tr>
            <tr style="height:300px;">
                <th scope="row">내용</th>
                <td>
                    <textarea name="content" class="writeContent" id="content">${board.content}</textarea>
                </td>
            </tr>

        </table>
        <button class="playMeetingFrmBtn">등록</button>
    </form>
</div>

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