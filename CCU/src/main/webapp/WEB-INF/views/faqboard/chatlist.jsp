<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link rel="stylesheet" href="/style/chatStyle.css">
<script>
	$(function() {
		$("#topMenu").hide();
		$(".topUp").hide();
		$(".topDown").hide();
		$(".bottom").hide();
	});
	
	$(document).keydown(function(event) {
		if (event.keyCode == 13) {
			addChat();
		}
	});
	
	var chatInformation = null;

	$(document).ready(function() {

		var result = null;
		$.ajax({
			type : "get",
			url : "/registChat",
			async : false,
			success : function(data) {
				result = JSON.parse(data);
				console.log(result);
				chatInformation = result.chatVO;
			},
			error : function(request, status, error) {
				console.log("request", request);
				console.log("status", status);
				console.log("error", error);
			}
		});

		$("#chat_list").html("");
		if (result.chatList != null) {
			for (var i = 0; i < result.chatList.length; i++) {
				listing_chat(result.chatList[i]);
			}
		}
	});

	function listing_chat(data) {
		console.log(data);
// 		var addHtml = `<tr>`;
// 		if (data.chat_role == 1) {
// 			console.log("EEEEEEEee 1 data.chat_info ", data.chat_info);
// 			addHtml += `<td>${data.chat_info}</td><td></td>`;
// 		} else {
// 			console.log("EEEEEEEee 2");
// 			addHtml += `<td></td><td>${data.chat_info}</td>`;
// 		}
// 		addHtml += `</tr>`;
		var addHtml = "<tr>";
		if (data.chat_role == 1) {
			addHtml += "<td>";
			addHtml += data.chat_info;
			addHtml += "</td>";
			addHtml += "<td></td>";
		} else {
			addHtml += "<td></td>";
			addHtml += "<td>";
			addHtml += data.chat_info;
			addHtml += "</td>";
		}
		addHtml += "</tr>";
		$("#chat_list").append(addHtml);
	}
	
	function addChat() {
		var chatInfo = $("#newChatId").val();
		if( chatInfo != "" ) {
			var result = null;
			$.ajax({
				type : "post",
				url : "/addChat",
				async : true,
				dataType : 'json',
				data: { newChat: chatInfo, chat_room_id : chatInformation.chat_room_id, send_user_id: chatInformation.send_user_id},
				success : function(data) {
					result = JSON.parse(data);
				},
				error : function(request, status, error) {
					console.log("request", request);
					console.log("status", status);
					console.log("error", error);
				}
			});
			
			var addHtml = "<tr>";
			addHtml += "<td></td>";
			addHtml += "<td>";
			addHtml += chatInfo;
			addHtml += "</td>";
			addHtml += "</tr>";
			
			$("#chat_list").append(addHtml);
			
			$("#newChatId").val("");
		}
	}
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
</head>

<body>
	<table>
		<colgroup>
			<col width="150px;">
			<col width="200px;">
		</colgroup>
		<thead>
			<tr>
				<th>관리자</th>
				<th>사용자</th>
			</tr>
		</thead>
		<tbody id="chat_list"></tbody>
	</table>
	
	
	<input type="text" id="newchat">
	<button onclick="addChat();" class="newchatbtn">전송</button>

</body>
</html>