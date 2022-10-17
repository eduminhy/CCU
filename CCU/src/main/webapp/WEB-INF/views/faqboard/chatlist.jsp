<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link rel="stylesheet" href="/style/chatStyle.css" />
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
	var urllink = "";
	$(document).ready(function() {
		console.log($('.idset').attr('name'));
		if ($('.idset').attr('name') == "") {
			console.log(111222)
			urllink = "/registChat";
		}
		if ($('.idset').attr('name') != "") {
			console.log(11122223)
			urllink = "/registChat?id=" + $('.idset').attr('name');
			console.log(urllink);
		}
		var result = null;
		$.ajax({
			type : "get",
			url : urllink,
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
			addHtml += "<td><span style=\"color:blue;\">";
			addHtml += data.chat_info;
			addHtml += "</span></td>";
			addHtml += "<td></td>";
		} else {
			addHtml += "<td></td>";
			addHtml += "<td><span style=\"color:red;\">";
			addHtml += data.chat_info;
			addHtml += "</span></td>";
		}
		addHtml += "</tr>";
		$("#chat_list").append(addHtml);
	}

	function addChat() {
		var dataz = 0;
		var chatInfo = $("#newChatId").val();
		console.log("chatInfo", chatInfo);
		if (chatInfo != "") {
			var result = null;
			$.ajax({
				type : "post",
				url : "/addChat",
// 				async : true,
				dataType : 'json',
				  async: false,
				data : {
					newChat : chatInfo,
					chat_room_id : chatInformation.chat_room_id,
					send_user_id : chatInformation.send_user_id
				},
				success : function(data) {

					dataz = data;

					result = JSON.parse(data);
				},
				error : function(request, status, error) {
					console.log("request", request);
					console.log("status", status);
					console.log("error", error);

				}
			});
			if(dataz ==0){
				var addHtml = "<tr>";
				addHtml += "<td></td>";
				addHtml += "<td><span style=\"color:red;\">";
				addHtml += chatInfo;
				addHtml += "</span></td>";
				addHtml += "</tr>";

				$("#chat_list").append(addHtml);

				$("#newChatId").val("");
			}else if(dataz == 1){
			var addHtml = "<tr>";

			addHtml += "<td><span style=\"color:blue;\">";
			addHtml += chatInfo;
			addHtml += "</span></td>";
			addHtml += "<td></td>";
			addHtml += "</tr>";

			$("#chat_list").append(addHtml);

			$("#newChatId").val("");
			 $("#divdiv22").scrollTop($("#divdiv22")[0].scrollHeight); 


			}
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
	<div class="idset" name="${param.id}">${param.id}</div>
	<div id="divdiv22" style="overflow: auto; width:660px; height:700px;">
		<table width=630>
			<colgroup>
				<col width="150px;" class="adminchatform">
				<col width="150px;" class="adminchatform">
			</colgroup>
			<thead>
				<tr>
					<th id="adminchat">관리자</th>
					<th id="userchat">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사용자</th>
				</tr>
			</thead>
			<tbody id="chat_list"></tbody>
		</table>
	</div>
		</br>	</br>
<!-- 	<div class="chatDiv2"></div> -->
	<div class="chatDiv">
		<input type="text" class="newchat" id="newChatId"
			style="font-size: 1.5em; border: 2px solid #440099;">
		<button onclick="addChat();" class="newchatbtn">전송</button>
	</div>


</body>
</html>