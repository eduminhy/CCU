<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/chatbotStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="/script/admin.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<script>
$(function({
	$(document).on('click', '#query',function(){
		if( $("#queryin").val()!=""){	//질문이 있을때, = 질문이 공백이 아닐 때
		
		$.ajax({
			type:"post",
			dataType:"text",
			async:false,
			url:"/faqboard/chatbotOk",
			data:{
				queryin:$("#queryin").val()
			},success:function(result){
// 				console.log(e.responseText);
				$("#jsonCode").val(result);
				
				var jsonData = JSON.parse(result);
				console.log(jsonData);
				//텍스트로 답변이 왔을 경우
				if(jsonData.bubbles[0].type=='text'){
					var ans = jsonData.bubbles[0].data.description
					ans = ans.replace("\n", "<br/>"); // \n을 <br/>태그로 바꾸기
					$("#content").append(ans+"<p/>");
					
				}
				
				$("#queryin").val("");
			},error:function(e){
				console.log(e.responseText);
				
			}
		});
		
		}
	});
});

// <script>
// alert("로그인이 필요합니다.");
// self.location = "/chatList";

</script>
</script>
</head>

<body>
<!-- 
<img src="../img/chatbot_icon.png" id="chatboticon">
<div id="cculogo">
<img src="../img/logo01.PNG" width=100px; height=100px;">
</div>
 -->


	<div class="csmenu">
		<div><a href="/faq">FAQ</a></div>
		<div><a href="/qna">Q&A</a></div>
		<div><a href="/chatbot">ChatBot</a></div>
		<div><a href="/terms">이용약관</a></div>
	</div>
	<br/>
	<br/>
	<br/>
	<div id="content" style="width: 1200px; height: 400px; border: 3px solid #440099;">

		<input type="text" name="queryin" id="queryin" />
		<input type="button" value="전송" id="query" />
		<hr />
		<textarea id="jsonCode" style="width: 1200px; height: 300px;"></textarea>
	</div>
	

	
</body>
</html>
	