<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/preferGenreStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		//공연장이름 줄이기
		var placename = document.getElementsByClassName("pname");
		for(var i=0;i<placename.length;i++){
			if(placename[i].innerText.length>=14){
				var repname = placename[i].innerText.substr(0,14)+"...";
				placename[i].innerText = repname;
			}
		}
		//공연이름 줄이기
		var showname = document.getElementsByClassName("name");
		for(var i=0;i<showname.length;i++){
			if(showname[i].innerText.length>=14){
				var repname = showname[i].innerText.substr(0,14)+"...";
				showname[i].innerText = repname;
			}
		}

		//공연장르 필터링
		$(".btn").click(function(){
			var genre = this.innerText;
			var genrename = document.getElementsByClassName("genrename");
			if(genre == '전체'){
				$(".preferelement").show(400);
			}else{
				for(var i=0;i<genrename.length;i++){
					if(genre!=genrename[i].innerText){
						$(".preferelement").show();//리셋
						$(".preferelement").eq(i).not(genre).hide(200);
						$(".preferelement").eq(i).filter(genre).show(400);
					}
				}
			}
		});
		
		
		var cnt=0;
		$("input[name='genrename']").click(function(){
			console.log(this.id);
			if($(this).is(":checked")==true){
				cnt++;
				$(".selectSection").append("<input type='text' class='selectTag' value='"+this.value+"'/>");
			}else{
				cnt--;
				for(var i=0;i<cnt+1;i++){
					if($(".selectSection>input").eq(i).val()==this.value){
						$(".selectSection>input").eq(i).remove();
					}
				}
			}
		});	
	});
	
	
</script>

<div class="container">
	<div class="leftSide">
		<!-- <div id="genretitle">키워드로 찾는 나의 선호장르</div> -->
		<div class="genreSection">
			<ul>
				<li>장르</li>
			</ul>
			<ul>
				<li><button class="btn">전체</button></li>
			</ul>
			<ul>
				<li><button class="btn">연극</button></li>
			</ul>
			<ul>
				<li><button class="btn">뮤지컬</button></li>
			</ul>
			<ul>
				<li><button class="btn">클래식</button></li>
			</ul>
			<ul>
				<li><button class="btn">오페라</button></li>
			</ul>
			<ul>
				<li><button class="btn">국악</button></li>
			</ul>
			<ul>
				<li><button class="btn">무용</button></li>
			</ul>
		</div>
		<div class="genreSection">
			<ul>
				<li>분위기</li>
			</ul>
			<ul>
				<li><input type="checkbox" name="genrename" id="romance" value="로맨스"/><label for="romance">로맨스</label></li>
			</ul>
			<ul>
				<li><input type="checkbox" name="genrename" id="comedy" value="코미디"/><label for="comedy">코미디</label></li>
			</ul>
			<ul>
				<li><input type="checkbox" name="genrename" id="history" value="고전"/><label for="history">고전</label></li>
			</ul>
			<ul>
				<li><input type="checkbox" name="genrename" id="animation" value="애니메이션"/><label for="animation">애니메이션</label></li>
			</ul>
			<ul>
				<li><input type="checkbox" name="genrename" id="fantasy" value="판타지"/><label for="fantasy">판타지</label></li>
			</ul>
			<ul>
				<li><input type="checkbox" name="genrename" id="thriller" value="스릴러"/><label for="thriller">스릴러</label></li>
			</ul>
		</div>
		<div class="selectSection"></div>
	</div>
	<div class="rightSide">
		<c:forEach var="svo" items="${showlist }">
			<ul class="preferelement">
				<li><a href="/show/showDetail?show_id=${svo.id}"><img src="${svo.mainposter }"/></a></li>
				<li class="name">${svo.name }</li>
				<li class="genrename">${svo.genre }</li>
				<li class="pname">${svo.place_name }</li>
			</ul>
		</c:forEach>	
	</div>
</div>