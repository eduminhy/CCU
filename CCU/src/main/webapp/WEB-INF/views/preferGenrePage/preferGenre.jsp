<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/preferGenreStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
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
				<li><button>전체</button></li>
			</ul>
			<ul>
				<li><button>연극</button></li>
			</ul>
			<ul>
				<li><button>뮤지컬</button></li>
			</ul>
			<ul>
				<li><button>클래식</button></li>
			</ul>
			<ul>
				<li><button>오페라</button></li>
			</ul>
			<ul>
				<li><button>국악</button></li>
			</ul>
			<ul>
				<li><button>무용</button></li>
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
		<ul>
			<li><a href=""><img src="../img/poster/1.jpg"/></a></li>
			<li>공연이름</li>
			<li>공연장소</li>
		</ul>
		<ul>
			<li><a href=""><img src="../img/poster/2.jpg"/></a></li>
			<li>공연이름</li>
			<li>공연장소</li>
		</ul>
		<ul>
			<li><a href=""><img src="../img/poster/3.jpg"/></a></li>
			<li>공연이름</li>
			<li>공연장소</li>
		</ul>
		<ul>
			<li><a href=""><img src="../img/poster/4.jpg"/></a></li>
			<li>공연이름</li>
			<li>공연장소</li>
		</ul>
		<ul>
			<li><a href=""><img src="../img/poster/5.jpg"/></a></li>
			<li>공연이름</li>
			<li>공연장소</li>
		</ul>
		<ul>
			<li><a href=""><img src="../img/poster/1.jpg"/></a></li>
			<li>공연이름</li>
			<li>공연장소</li>
		</ul>
		<ul>
			<li><a href=""><img src="../img/poster/2.jpg"/></a></li>
			<li>공연이름</li>
			<li>공연장소</li>
		</ul>
	</div>
</div>