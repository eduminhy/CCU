<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/bookSeatStyle.css">

<script>
	$(function(){
		var cnt = 0;
		var showdb_id = $("#showdb_id").val();
		var showDate = $("#showDate").val();
		var showTime = $("#showTime").val();
		var seatCnt = "";
		
		$("input[name='seatNum']").click(function(){
			if($(this).is(":checked")==true){//체크되면
				//console.log(this.id);
				$("#seatBox").append("<input type='text' name='id' value='"+this.value+"'/> ");//좌석출력
				cnt++;
				$("#seatCnt").val(cnt);
			}
			if($(this).is(":checked")==false){
				//console.log(this.id+"해제");
				cnt--;
				$("#seatCnt").val(cnt);
				for(var i=0;i<cnt+1;i++){
					//console.log("for문=>"+$("#seatBox>span").eq(i).text());
					//console.log("this=>"+this.value);
					if($("#seatBox>input").eq(i).val()==this.value){
						$("#seatBox>input").eq(i).remove();
					}
				}
			}
		});
		
		
		
		$("#completeSeat").submit(function(){
			//seatCnt = $("#seatCnt").val();
			var url = "/book/bookCredit?scheduleDate="+$("#scheduleDate_id").val();
			$.ajax({
				url:url,
				type:"get",
				dateType:"json",
				data:{
					seatNum : $("input[name=seatNum]:checked").val(),
					seatCnt : $("#seatCnt").val()
				},
				success:function(data){
						
				},error:function(error){
					console.log(error);
				}
			});
			
		});
		
		
		//예약된 좌석 disable하기
		//console.log($("input[name=seatNum]").val());
		var sncnt = $("input[name=seatNum]").length;
		var cnt = $(".sn").length;//개수
		var arr = [];
		//console.log(cnt);
		//console.log($(".sn").val());
		for(var i=0;i<cnt;i++){
			arr.push($(".sn").eq(i).val());
		}
		for(var i=0;i<cnt;i++){
			$("input[name=seatNum]").each(function(){
				//console.log(this.value);
				if(this.value==arr[i]){
					$(this).attr("disabled", true);
				}
			});
		}
		
		
		
		
		
		
	});
</script>

<div class="container">
	<form method="get" action="/book/bookCredit?scheduleDate=${sdvo.id}" id="seatFrm">
	<div><h1>STEP01 좌석예약</h1></div>
	<div id="content">
		<!-- 좌석 -->
		<div id="selectSeat">
			<div id="stage">STAGE</div>
			<div>
				<div class="seatBox">
					<!-- A열 -->
					<div class="firstCol">A</div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="a1" value="A-1"/><label for="a1"></label>
					<input type="checkbox" name="seatNum" id="a2" value="A-2"/><label for="a2"></label>
					<input type="checkbox" name="seatNum" id="a3" value="A-3"/><label for="a3"></label>
					<input type="checkbox" name="seatNum" id="a4" value="A-4"/><label for="a4"></label>
					<input type="checkbox" name="seatNum" id="a5" value="A-5"/><label for="a5"></label>
					<input type="checkbox" name="seatNum" id="a6" value="A-6"/><label for="a6"></label>
					<input type="checkbox" name="seatNum" id="a7" value="A-7"/><label for="a7"></label>
					<input type="checkbox" name="seatNum" id="a8" value="A-8"/><label for="a8"></label>
					<input type="checkbox" name="seatNum" id="a9" value="A-9"/><label for="a9"></label>
					<input type="checkbox" name="seatNum" id="a10" value="A-10" /><label for="a10"></label>
					<input type="checkbox" name="seatNum" id="a11" value="A-11"/><label for="a11"></label>
					<input type="checkbox" name="seatNum" id="a12" value="A-12"/><label for="a12"></label>
					<input type="checkbox" name="seatNum" id="a13" value="A-13"/><label for="a13"></label>
					<input type="checkbox" name="seatNum" id="a14" value="A-14"/><label for="a14"></label>
					<input type="checkbox" name="seatNum" id="a15" value="A-15"/><label for="a15"></label>
					<input type="checkbox" name="seatNum" id="a16" value="A-16"/><label for="a16"></label>
					<input type="checkbox" name="seatNum" id="a17" value="A-17"/><label for="a17"></label>
					<input type="checkbox" name="seatNum" id="a18" value="A-18"/><label for="a18"></label>
					<input type="checkbox" name="seatNum" id="a19" value="A-19"/><label for="a19"></label>
					<div class = "s"></div>
				</div>	
				<div class="seatBox">
					<!-- B열 -->
					<div class="firstCol">B</div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="b1" value="B-1"/><label for="b1"></label>
					<input type="checkbox" name="seatNum" id="b2" value="B-2"/><label for="b2"></label>
					<input type="checkbox" name="seatNum" id="b3" value="B-3"/><label for="b3"></label>
					<input type="checkbox" name="seatNum" id="b4" value="B-4"/><label for="b4"></label>
					<input type="checkbox" name="seatNum" id="b5" value="B-5"/><label for="b5"></label>
					<input type="checkbox" name="seatNum" id="b6" value="B-6"/><label for="b6"></label>
					<input type="checkbox" name="seatNum" id="b7" value="B-7"/><label for="b7"></label>
					<input type="checkbox" name="seatNum" id="b8" value="B-8"/><label for="b8"></label>
					<input type="checkbox" name="seatNum" id="b9" value="B-9"/><label for="b9"></label>
					<input type="checkbox" name="seatNum" id="b10" value="B-10"/><label for="b10"></label>
					<input type="checkbox" name="seatNum" id="b11" value="B-11"/><label for="b11"></label>
					<input type="checkbox" name="seatNum" id="b12" value="B-12"/><label for="b12"></label>
					<input type="checkbox" name="seatNum" id="b13" value="B-13"/><label for="b13"></label>
					<input type="checkbox" name="seatNum" id="b14" value="B-14"/><label for="b14"></label>
					<input type="checkbox" name="seatNum" id="b15" value="B-15"/><label for="b15"></label>
					<input type="checkbox" name="seatNum" id="b16" value="B-16"/><label for="b16"></label>
					<input type="checkbox" name="seatNum" id="b17" value="B-17"/><label for="b17"></label>
					<input type="checkbox" name="seatNum" id="b18" value="B-18"/><label for="b18"></label>
					<input type="checkbox" name="seatNum" id="b19" value="B-19"/><label for="b19"></label>
					<div class = "s"></div>
				</div>
				<div class="seatBox">
					<!-- C열 -->
					<div class="firstCol">C</div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="c1" value="C-1"/><label for="c1"></label>
					<input type="checkbox" name="seatNum" id="c2" value="C-2"/><label for="c2"></label>
					<input type="checkbox" name="seatNum" id="c3" value="C-3"/><label for="c3"></label>
					<input type="checkbox" name="seatNum" id="c4" value="C-4"/><label for="c4"></label>
					<input type="checkbox" name="seatNum" id="c5" value="C-5"/><label for="c5"></label>
					<input type="checkbox" name="seatNum" id="c6" value="C-6"/><label for="c6"></label>
					<input type="checkbox" name="seatNum" id="c7" value="C-7"/><label for="c7"></label>
					<input type="checkbox" name="seatNum" id="c8" value="C-8"/><label for="c8"></label>
					<input type="checkbox" name="seatNum" id="c9" value="C-9"/><label for="c9"></label>
					<input type="checkbox" name="seatNum" id="c10" value="C-10"/><label for="c10"></label>
					<input type="checkbox" name="seatNum" id="c11" value="C-11"/><label for="c11"></label>
					<input type="checkbox" name="seatNum" id="c12" value="C-12"/><label for="c12"></label>
					<input type="checkbox" name="seatNum" id="c13" value="C-13"/><label for="c13"></label>
					<input type="checkbox" name="seatNum" id="c14" value="C-14"/><label for="c14"></label>
					<input type="checkbox" name="seatNum" id="c15" value="C-15"/><label for="c15"></label>
					<input type="checkbox" name="seatNum" id="c16" value="C-16"/><label for="c16"></label>
					<input type="checkbox" name="seatNum" id="c17" value="C-17"/><label for="c17"></label>
					<input type="checkbox" name="seatNum" id="c18" value="C-18"/><label for="c18"></label>
					<div class = "s"></div>
				</div>
				<div class="seatBox">
					<!-- D열 -->
					<div class="firstCol">D</div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="d1" value="D-1"/><label for="d1"></label>
					<input type="checkbox" name="seatNum" id="d2" value="D-2"/><label for="d2"></label>
					<input type="checkbox" name="seatNum" id="d3" value="D-3"/><label for="d3"></label>
					<input type="checkbox" name="seatNum" id="d4" value="D-4"/><label for="d4"></label>
					<input type="checkbox" name="seatNum" id="d5" value="D-5"/><label for="d5"></label>
					<input type="checkbox" name="seatNum" id="d6" value="D-6"/><label for="d6"></label>
					<input type="checkbox" name="seatNum" id="d7" value="D-7"/><label for="d7"></label>
					<input type="checkbox" name="seatNum" id="d8" value="D-8"/><label for="d8"></label>
					<input type="checkbox" name="seatNum" id="d9" value="D-9"/><label for="d9"></label>
					<input type="checkbox" name="seatNum" id="d10" value="D-10"/><label for="d10"></label>
					<input type="checkbox" name="seatNum" id="d11" value="D-11"/><label for="d11"></label>
					<input type="checkbox" name="seatNum" id="d12" value="D-12"/><label for="d12"></label>
					<input type="checkbox" name="seatNum" id="d13" value="D-13"/><label for="d13"></label>
					<input type="checkbox" name="seatNum" id="d14" value="D-14"/><label for="d14"></label>
					<input type="checkbox" name="seatNum" id="d15" value="D-15"/><label for="d15"></label>
					<input type="checkbox" name="seatNum" id="d16" value="D-16"/><label for="d16"></label>
					<input type="checkbox" name="seatNum" id="d17" value="D-17"/><label for="d17"></label>
					<input type="checkbox" name="seatNum" id="d18" value="D-18"/><label for="d18"></label>
					<input type="checkbox" name="seatNum" id="d19" value="D-19"/><label for="d19"></label>
					<div class = "s"></div>
				</div>
				<div class="path"></div>
				<div class="seatBox">
					<!-- E열 -->
					<div class="firstCol">E</div>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="e1" value="E-1"/><label for="e1"></label>
					<input type="checkbox" name="seatNum" id="e2" value="E-2"/><label for="e2"></label>
					<input type="checkbox" name="seatNum" id="e3" value="E-3"/><label for="e3"></label>
					<input type="checkbox" name="seatNum" id="e4" value="E-4"/><label for="e4"></label>
					<input type="checkbox" name="seatNum" id="e5" value="E-5"/><label for="e5"></label>
					<input type="checkbox" name="seatNum" id="e6" value="E-6"/><label for="e6"></label>
					<input type="checkbox" name="seatNum" id="e7" value="E-7"/><label for="e7"></label>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="e8" value="E-8"/><label for="e8"></label>
					<input type="checkbox" name="seatNum" id="e9" value="E-9"/><label for="e9"></label>
					<input type="checkbox" name="seatNum" id="e10" value="E-10"/><label for="e10"></label>
					<input type="checkbox" name="seatNum" id="e11" value="E-11"/><label for="e11"></label>
					<input type="checkbox" name="seatNum" id="e12" value="E-12"/><label for="e12"></label>
					<input type="checkbox" name="seatNum" id="e13" value="E-13"/><label for="e13"></label>
					<input type="checkbox" name="seatNum" id="e14" value="E-14"/><label for="e14"></label>
					<input type="checkbox" name="seatNum" id="e15" value="E-15"/><label for="e15"></label>
					<input type="checkbox" name="seatNum" id="e16" value="E-16"/><label for="e16"></label>
					<input type="checkbox" name="seatNum" id="e17" value="E-17"/><label for="e17"></label>
				</div>
				<div class="seatBox">
					<!-- F열 -->
					<div class="firstCol">F</div>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="f1" value="F-1"/><label for="f1"></label>
					<input type="checkbox" name="seatNum" id="f2" value="F-2"/><label for="f2"></label>
					<input type="checkbox" name="seatNum" id="f3" value="F-3"/><label for="f3"></label>
					<input type="checkbox" name="seatNum" id="f4" value="F-4"/><label for="f4"></label>
					<input type="checkbox" name="seatNum" id="f5" value="F-5"/><label for="f5"></label>
					<input type="checkbox" name="seatNum" id="f6" value="F-6"/><label for="f6"></label>
					<input type="checkbox" name="seatNum" id="f7" value="F-7"/><label for="f7"></label>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="f8" value="F-8"/><label for="f8"></label>
					<input type="checkbox" name="seatNum" id="f9" value="F-9"/><label for="f9"></label>
					<input type="checkbox" name="seatNum" id="f10" value="F-10"/><label for="f10"></label>
					<input type="checkbox" name="seatNum" id="f11" value="F-11"/><label for="f11"></label>
					<input type="checkbox" name="seatNum" id="f12" value="F-12"/><label for="f12"></label>
					<input type="checkbox" name="seatNum" id="f13" value="F-13"/><label for="f13"></label>
					<input type="checkbox" name="seatNum" id="f14" value="F-14"/><label for="f14"></label>
					<input type="checkbox" name="seatNum" id="f15" value="F-15"/><label for="f15"></label>
					<input type="checkbox" name="seatNum" id="f16" value="F-16"/><label for="f16"></label>
					<input type="checkbox" name="seatNum" id="f17" value="F-17"/><label for="f17"></label>
				</div>
				<div class="seatBox">
					<!-- G열 -->
					<div class="firstCol">G</div>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="g1" value="G-1"/><label for="g1"></label>
					<input type="checkbox" name="seatNum" id="g2" value="G-2"/><label for="g2"></label>
					<input type="checkbox" name="seatNum" id="g3" value="G-3"/><label for="g3"></label>
					<input type="checkbox" name="seatNum" id="g4" value="G-4"/><label for="g4"></label>
					<input type="checkbox" name="seatNum" id="g5" value="G-5"/><label for="g5"></label>
					<input type="checkbox" name="seatNum" id="g6" value="G-6"/><label for="g6"></label>
					<input type="checkbox" name="seatNum" id="g7" value="G-7"/><label for="g7"></label>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="g8" value="G-8"/><label for="g8"></label>
					<input type="checkbox" name="seatNum" id="g9" value="G-9"/><label for="g9"></label>
					<input type="checkbox" name="seatNum" id="g10" value="G-10"/><label for="g10"></label>
					<input type="checkbox" name="seatNum" id="g11" value="G-11"/><label for="g11"></label>
					<input type="checkbox" name="seatNum" id="g12" value="G-12"/><label for="g12"></label>
					<input type="checkbox" name="seatNum" id="g13" value="G-13"/><label for="g13"></label>
					<input type="checkbox" name="seatNum" id="g14" value="G-14"/><label for="g14"></label>
					<input type="checkbox" name="seatNum" id="g15" value="G-15"/><label for="g15"></label>
					<input type="checkbox" name="seatNum" id="g16" value="G-16"/><label for="g16"></label>
					<input type="checkbox" name="seatNum" id="g17" value="G-17"/><label for="g17"></label>
				</div>
				<div class="seatBox">
					<!-- H열 -->
					<div class="firstCol">H</div>
					<input type="checkbox" name="seatNum" id="h1" value="H-1"/><label for="h1"></label>
					<input type="checkbox" name="seatNum" id="h2" value="H-2"/><label for="h2"></label>
					<input type="checkbox" name="seatNum" id="h3" value="H-3"/><label for="h3"></label>
					<input type="checkbox" name="seatNum" id="h4" value="H-4"/><label for="h4"></label>
					<input type="checkbox" name="seatNum" id="h5" value="H-5"/><label for="h5"></label>
					<input type="checkbox" name="seatNum" id="h6" value="H-6"/><label for="h6"></label>
					<input type="checkbox" name="seatNum" id="h7" value="H-7"/><label for="h7"></label>
					<input type="checkbox" name="seatNum" id="h8" value="H-8"/><label for="h8"></label>
					<input type="checkbox" name="seatNum" id="h9" value="H-9"/><label for="h9"></label>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="h10" value="H-10"/><label for="h10"></label>
					<input type="checkbox" name="seatNum" id="h11" value="H-11"/><label for="h11"></label>
					<input type="checkbox" name="seatNum" id="h12" value="H-12"/><label for="h12"></label>
					<input type="checkbox" name="seatNum" id="h13" value="H-13"/><label for="h13"></label>
					<input type="checkbox" name="seatNum" id="h14" value="H-14"/><label for="h14"></label>
					<input type="checkbox" name="seatNum" id="h15" value="H-15"/><label for="h15"></label>
					<input type="checkbox" name="seatNum" id="h16" value="H-16"/><label for="h16"></label>
					<input type="checkbox" name="seatNum" id="h17" value="H-17"/><label for="h17"></label>
					<input type="checkbox" name="seatNum" id="h18" value="H-18"/><label for="h18"></label>
					<input type="checkbox" name="seatNum" id="h19" value="H-19"/><label for="h19"></label>
				</div>
				<div class="seatBox">
					<!-- I열 -->
					<div class="firstCol">I</div>
					<input type="checkbox" name="seatNum" id="i1" value="I-1"/><label for="i1"></label>
					<input type="checkbox" name="seatNum" id="i2" value="I-2"/><label for="i2"></label>
					<input type="checkbox" name="seatNum" id="i3" value="I-3"/><label for="i3"></label>
					<input type="checkbox" name="seatNum" id="i4" value="I-4"/><label for="i4"></label>
					<input type="checkbox" name="seatNum" id="i5" value="I-5"/><label for="i5"></label>
					<input type="checkbox" name="seatNum" id="i6" value="I-6"/><label for="i6"></label>
					<input type="checkbox" name="seatNum" id="i7" value="I-7"/><label for="i7"></label>
					<input type="checkbox" name="seatNum" id="i8" value="I-8"/><label for="i8"></label>
					<input type="checkbox" name="seatNum" id="i9" value="I-9"/><label for="i9"></label>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="i10" value="I-10"/><label for="i10"></label>
					<input type="checkbox" name="seatNum" id="i11" value="I-11"/><label for="i11"></label>
					<input type="checkbox" name="seatNum" id="i12" value="I-12"/><label for="i12"></label>
					<input type="checkbox" name="seatNum" id="i13" value="I-13"/><label for="i13"></label>
					<input type="checkbox" name="seatNum" id="i14" value="I-14"/><label for="i14"></label>
					<input type="checkbox" name="seatNum" id="i15" value="I-15"/><label for="i15"></label>
					<input type="checkbox" name="seatNum" id="i16" value="I-16"/><label for="i16"></label>
					<input type="checkbox" name="seatNum" id="i17" value="I-17"/><label for="i17"></label>
					<input type="checkbox" name="seatNum" id="i18" value="I-18"/><label for="i18"></label>
					<input type="checkbox" name="seatNum" id="i19" value="I-19"/><label for="i19"></label>
				</div>
				<div class="seatBox">
					<!-- J열 -->
					<div class="firstCol">J</div>
					<input type="checkbox" name="seatNum" id="j1" value="J-1"/><label for="j1"></label>
					<input type="checkbox" name="seatNum" id="j2" value="J-2"/><label for="j2"></label>
					<input type="checkbox" name="seatNum" id="j3" value="J-3"/><label for="j3"></label>
					<input type="checkbox" name="seatNum" id="j4" value="J-4"/><label for="j4"></label>
					<input type="checkbox" name="seatNum" id="j5" value="J-5"/><label for="j5"></label>
					<input type="checkbox" name="seatNum" id="j6" value="J-6"/><label for="j6"></label>
					<input type="checkbox" name="seatNum" id="j7" value="J-7"/><label for="j7"></label>
					<input type="checkbox" name="seatNum" id="j8" value="J-8"/><label for="j8"></label>
					<input type="checkbox" name="seatNum" id="j9" value="J-9"/><label for="j9"></label>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="j10" value="J-10"/><label for="j10"></label>
					<input type="checkbox" name="seatNum" id="j11" value="J-11"/><label for="j11"></label>
					<input type="checkbox" name="seatNum" id="j12" value="J-12"/><label for="j12"></label>
					<input type="checkbox" name="seatNum" id="j13" value="J-13"/><label for="j13"></label>
					<input type="checkbox" name="seatNum" id="j14" value="J-14"/><label for="j14"></label>
					<input type="checkbox" name="seatNum" id="j15" value="J-15"/><label for="j15"></label>
					<input type="checkbox" name="seatNum" id="j16" value="J-16"/><label for="j16"></label>
					<input type="checkbox" name="seatNum" id="j17" value="J-17"/><label for="j17"></label>
					<input type="checkbox" name="seatNum" id="j18" value="J-18"/><label for="j18"></label>
					<input type="checkbox" name="seatNum" id="j19" value="J-19"/><label for="j19"></label>
				</div>
				<div class="seatBox">
					<!-- K열 -->
					<div class="firstCol">K</div>
					<input type="checkbox" name="seatNum" id="k1" value="K-1"/><label for="k1"></label>
					<input type="checkbox" name="seatNum" id="k2" value="K-2"/><label for="k2"></label>
					<input type="checkbox" name="seatNum" id="k3" value="K-3"/><label for="k3"></label>
					<input type="checkbox" name="seatNum" id="k4" value="K-4"/><label for="k4"></label>
					<input type="checkbox" name="seatNum" id="k5" value="K-5"/><label for="k5"></label>
					<input type="checkbox" name="seatNum" id="k6" value="K-6"/><label for="k6"></label>
					<input type="checkbox" name="seatNum" id="k7" value="K-7"/><label for="k7"></label>
					<input type="checkbox" name="seatNum" id="k8" value="K-8"/><label for="k8"></label>
					<input type="checkbox" name="seatNum" id="k9" value="K-9"/><label for="k9"></label>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="k10" value="K-10"/><label for="k10"></label>
					<input type="checkbox" name="seatNum" id="k11" value="K-11"/><label for="k11"></label>
					<input type="checkbox" name="seatNum" id="k12" value="K-12"/><label for="k12"></label>
					<input type="checkbox" name="seatNum" id="k13" value="K-13"/><label for="k13"></label>
					<input type="checkbox" name="seatNum" id="k14" value="K-14"/><label for="k14"></label>
					<input type="checkbox" name="seatNum" id="k15" value="K-15"/><label for="k15"></label>
					<input type="checkbox" name="seatNum" id="k16" value="K-16"/><label for="k16"></label>
					<input type="checkbox" name="seatNum" id="k17" value="K-17"/><label for="k17"></label>
					<input type="checkbox" name="seatNum" id="k18" value="K-18"/><label for="k18"></label>
					<div class = "s"></div>
				</div>
				<div class="path"></div>
				<div class="seatBox">
					<!-- L열 -->
					<div class="firstCol">L</div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<input type="checkbox" name="seatNum" id="l1" value="L-1"/><label for="l1"></label>
					<input type="checkbox" name="seatNum" id="l2" value="L-2"/><label for="l2"></label>
					<input type="checkbox" name="seatNum" id="l3" value="L-3"/><label for="l3"></label>
					<input type="checkbox" name="seatNum" id="l4" value="L-4"/><label for="l4"></label>
					<input type="checkbox" name="seatNum" id="l5" value="L-5"/><label for="l5"></label>
					<input type="checkbox" name="seatNum" id="l6" value="L-6"/><label for="l6"></label>
					<input type="checkbox" name="seatNum" id="l7" value="L-7"/><label for="l7"></label>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
					<div class = "s"></div>
				</div>
			</div>
		</div>	
		<div id="detail">
		<h3>선택확인</h3>
		<ul>
			<li><input type="hidden" name="scheduleDate_id" id="scheduleDate_id" value="${sdvo.id}"/></li>
			<li><input type="hidden" name="showdb_id" id="showdb_id" value="${sdvo.showdb_id }"/></li>
			<li>관람일 : <input type="text" name="showDate" id="showDate" value="${sdvo.showDate }"/></li> 
			<li>관람시간 : <input type="text" name="showTime" id="showTime" value="${sdvo.showTime }"/></li>
			<li>좌석수 : <input type="text" id="seatCnt" name="seatCnt" value=""/>매</li>
			<li>좌석번호</li>
			<li id="seatBox"></li>
			<li>가격 : <input type="text" name="priceText" id="priceText" value="${sdvo.showPrice }"/>원</li>
			<li><input type="hidden" name="price" id="price" value=""></li>
		</ul>
		<input type="submit" value="좌석선택완료" id="completeSeat"/>
		</div>
	</div>
	</form>
</div>
<c:forEach var="seatNum" items="${sn }">
	<input type="text" class="sn" value="${seatNum}"/>
</c:forEach>