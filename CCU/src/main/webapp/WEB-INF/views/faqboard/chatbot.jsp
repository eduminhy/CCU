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
<style>
#content{
overflow:scroll;}
#content ul, #content li{
margin:0;
padding : 0;
list-style-type:none;
}
#content ul{
overflow:auto;}
#content li{
float:left;
padding:10px}
#content li>img{
width:200px; height:200px;}
</style>
<script>
$(function(){
	$(document).on('click','#queryin',function(){
		

	$("#query").click(function(){
		if($("#queryin").val()!=""){
			//질문이 있다면
			$.ajax({
				type:"post",
				dataRtpe:"text",	
				async:false,
				url:"/faqboard/chatbotOk",
				data:{
					queryin:$("#queryin").val()
				},
				success:function(result){
					
					$("#jsonCode").val(result);
					var jsonData = JSON.parse(result);
					console.log(jsonData);
					//텍스트로 답변이 왔을 경우
					if(jsonData.bubbles[0].type=='text'){
						var ans = jsonData.bubbles[0].data.description;
						ans = ans.replaceAll("\n","<br/>"); // \을  <br/>로 변경
						//replace All로 해야함
						$("#content").append("<p>"+ans+"<p/>");
					}else if(jsonData.bubbles[0].type=='template'){
						//버튼형식의 답변일때
						var msg = jsonData.bubbles[0].data.cover.data.description;
						var tag="";
						tag += "<p><b>"+msg+"</b></p>";
						jsonData.bubbles[0].data.contentTable.map(function(btn,idx){
							tag +="<input type='button' value='"+btn[0].data.title+"'onclick=\"location.href=\'"+btn[0].data.data.action.data.url+"\'\" style='width:100%;'/></br>";
							
							})
							tag +="</p>";
						$("#content").append(tag);
					}else if(jsonData.bubbles[0].type=='carousel'){ //image로 답변이 왔을 경우
						var tag = "<ul>";
						jsonData.bubbles[0].data.cards.map(function(img,idx){
							console.log(img);
							tag += "<li><img src='"+img.data.cover.data.imageUrl+"'/><br/>";
							tag += "<p>"+img.data.cover.title+"<br/>";
							tag += "</p>";w
							tag += "<p>"+img.data.cover.data.description+"<br/>";
							tag += "</p>";
							tag += "</li>";
						})
						$("#content").append(tag);
					}
					
					//스크롤 올리기
					$("#content").scrollTop($("#content")[0].scrollHeight);
					$("#queryin").val("");
				},
				error:function(e){
					console.log(e.responseText)
				}
				
			});
			
			
		}
		
	})
	
	
})
})
</script>
</head>
<body>
<h2>Chatbot</h2>
<div id="content" style="width:100%; height:400px; border:1px solid #ddd;"></div>
<input type="text" name="queryin" id="queryin"/>
<input type="button" value="query" id="query"/>
<hr/>
<textarea id="jsonCode" style="width:100%; height:300px;"></textarea>
</body>
</html>

<!-- 	<div class="csmenu"> -->
<!-- 		<div><a href="/faq">FAQ</a></div> -->
<!-- 		<div><a href="/qna">Q&A</a></div> -->
<!-- 		<div><a href="/chatbot">ChatBot</a></div> -->
<!-- 		<div><a href="/terms">이용약관</a></div> -->
<!-- 	</div> -->
<!-- 	<br/> -->
<!-- 	<br/> -->
<!-- 	<br/> -->
<!-- 	<div id="content" style="width: 1200px; height: 400px; border: 3px solid #440099;"> -->

<!-- 		<input type="text" name="queryin" id="queryin" /> -->
<!-- 		<input type="button" value="전송" id="query" /> -->
<!-- 		<hr /> -->
<!-- 		<textarea id="jsonCode" style="width: 1200px; height: 300px;"></textarea> -->
<!-- 	</div> -->
	

	
<!-- </body> -->
<!-- </html> -->
	