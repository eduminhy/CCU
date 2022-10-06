<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/style/bookSeatStyle.css">

<style>
	#stage{height:20px; line-height:20px; padding:10px 300px; background-color:#ddd;}
	.seatBox{display:flex;}
	.firstCol{color:white; background-color:black; margin: 5px 3px; padding:0 3px; font-size:13px; font-weight:bold; width:20px; height:20px; line-height:20px;}
	.s{width:20px; height:20px; background-color:lavender; margin:5px;}
</style>
<div>
${logId}<br/>
${logStatus}<br/>
${day}<br/>
${date}<br/>
${time}<br/>
${price}<br/>
${id}<br/></div>
<div class="container">
	<div><h1>STEP01 좌석예약</h1></div>
	<div id="content">
		<!-- 좌석 -->
		<div id="selectSeat">
		<div><span id="stage">STAGE</span></div>
		<div>
			<div class="seatBox">
				<!-- A열 -->
				<div class="firstCol">A</div>
				<div class="s" id="a1"></div>
				<div class="s" id="a2"></div>
				<div class="s" id="a3"></div>
				<div class="s" id="a4"></div>
				<div class="s" id="a5"></div>
				<div class="s" id="a6"></div>
				<div class="s" id="a7"></div>
				<div class="s" id="a8"></div>
				<div class="s" id="a9"></div>
				<div class="s" id="a10"></div>
				<div class="s" id="a11"></div>
				<div class="s" id="a12"></div>
				<div class="s" id="a13"></div>
				<div class="s" id="a14"></div>
				<div class="s" id="a15"></div>
				<div class="s" id="a16"></div>
				<div class="s" id="a17"></div>
				<div class="s" id="a18"></div>
				<div class="s" id="a19"></div>
				<div class="s" id="a20"></div>
				<div class="s" id="a21"></div>
			</div>
			<div class="seatBox">
				<!-- B열 -->
				<div class="firstCol">B</div>
				<div class="s" id="b1"></div>
				<div class="s" id="b2"></div>
				<div class="s" id="b3"></div>
				<div class="s" id="b4"></div>
				<div class="s" id="b5"></div>
				<div class="s" id="b6"></div>
				<div class="s" id="b7"></div>
				<div class="s" id="b8"></div>
				<div class="s" id="b9"></div>
				<div class="s" id="b10"></div>
				<div class="s" id="b11"></div>
				<div class="s" id="b12"></div>
				<div class="s" id="b13"></div>
				<div class="s" id="b14"></div>
				<div class="s" id="b15"></div>
				<div class="s" id="b16"></div>
				<div class="s" id="b17"></div>
				<div class="s" id="b18"></div>
				<div class="s" id="b19"></div>
				<div class="s" id="b20"></div>
				<div class="s" id="b21"></div>
			</div>
			<div class="seatBox">
				<!-- C열 -->
				<div class="firstCol">C</div>
				<div class="s" id="c1"></div>
				<div class="s" id="c2"></div>
				<div class="s" id="c3"></div>
				<div class="s" id="c4"></div>
				<div class="s" id="c5"></div>
				<div class="s" id="c6"></div>
				<div class="s" id="c7"></div>
				<div class="s" id="c8"></div>
				<div class="s" id="c9"></div>
				<div class="s" id="c10"></div>
				<div class="s" id="c11"></div>
				<div class="s" id="c12"></div>
				<div class="s" id="c13"></div>
				<div class="s" id="c14"></div>
				<div class="s" id="c15"></div>
				<div class="s" id="c16"></div>
				<div class="s" id="c17"></div>
				<div class="s" id="c18"></div>
				<div class="s" id="c19"></div>
				<div class="s" id="c20"></div>
				<div class="s" id="c21"></div>
			</div>
			<div class="seatBox">
				<!-- D열 -->
				<div class="firstCol">D</div>
				<div class="s" id="d1"></div>
				<div class="s" id="d2"></div>
				<div class="s" id="d3"></div>
				<div class="s" id="d4"></div>
				<div class="s" id="d5"></div>
				<div class="s" id="d6"></div>
				<div class="s" id="d7"></div>
				<div class="s" id="d8"></div>
				<div class="s" id="d9"></div>
				<div class="s" id="d10"></div>
				<div class="s" id="d11"></div>
				<div class="s" id="d12"></div>
				<div class="s" id="d13"></div>
				<div class="s" id="d14"></div>
				<div class="s" id="d15"></div>
				<div class="s" id="d16"></div>
				<div class="s" id="d17"></div>
				<div class="s" id="d18"></div>
				<div class="s" id="d19"></div>
				<div class="s" id="d20"></div>
				<div class="s" id="d21"></div>
			</div>
			<div class="seatBox">
				<!-- E열 -->
				<div class="firstCol">E</div>
				<div class="s" id="e1"></div>
				<div class="s" id="e2"></div>
				<div class="s" id="e3"></div>
				<div class="s" id="e4"></div>
				<div class="s" id="e5"></div>
				<div class="s" id="e6"></div>
				<div class="s" id="e7"></div>
				<div class="s" id="e8"></div>
				<div class="s" id="e9"></div>
				<div class="s" id="e10"></div>
				<div class="s" id="e11"></div>
				<div class="s" id="e12"></div>
				<div class="s" id="e13"></div>
				<div class="s" id="e14"></div>
				<div class="s" id="e15"></div>
				<div class="s" id="e16"></div>
				<div class="s" id="e17"></div>
				<div class="s" id="e18"></div>
				<div class="s" id="e19"></div>
				<div class="s" id="e20"></div>
				<div class="s" id="e21"></div>
			</div>
			<div class="seatBox">
				<!-- F열 -->
				<div class="firstCol">F</div>
				<div class="s" id="f1"></div>
				<div class="s" id="f2"></div>
				<div class="s" id="f3"></div>
				<div class="s" id="f4"></div>
				<div class="s" id="f5"></div>
				<div class="s" id="f6"></div>
				<div class="s" id="f7"></div>
				<div class="s" id="f8"></div>
				<div class="s" id="f9"></div>
				<div class="s" id="f10"></div>
				<div class="s" id="f11"></div>
				<div class="s" id="f12"></div>
				<div class="s" id="f13"></div>
				<div class="s" id="f14"></div>
				<div class="s" id="f15"></div>
				<div class="s" id="f16"></div>
				<div class="s" id="f17"></div>
				<div class="s" id="f18"></div>
				<div class="s" id="f19"></div>
				<div class="s" id="f20"></div>
				<div class="s" id="f21"></div>
			</div>
			<div class="seatBox">
				<!-- G열 -->
				<div class="firstCol">G</div>
				<div class="s" id="g1"></div>
				<div class="s" id="g2"></div>
				<div class="s" id="g3"></div>
				<div class="s" id="g4"></div>
				<div class="s" id="g5"></div>
				<div class="s" id="g6"></div>
				<div class="s" id="g7"></div>
				<div class="s" id="g8"></div>
				<div class="s" id="g9"></div>
				<div class="s" id="g10"></div>
				<div class="s" id="g11"></div>
				<div class="s" id="g12"></div>
				<div class="s" id="g13"></div>
				<div class="s" id="g14"></div>
				<div class="s" id="g15"></div>
				<div class="s" id="g16"></div>
				<div class="s" id="g17"></div>
				<div class="s" id="g18"></div>
				<div class="s" id="g19"></div>
				<div class="s" id="g20"></div>
				<div class="s" id="g21"></div>
			</div>
			<div class="seatBox">
				<!-- H열 -->
				<div class="firstCol">H</div>
				<div class="s" id="h1"></div>
				<div class="s" id="h2"></div>
				<div class="s" id="h3"></div>
				<div class="s" id="h4"></div>
				<div class="s" id="h5"></div>
				<div class="s" id="h6"></div>
				<div class="s" id="h7"></div>
				<div class="s" id="h8"></div>
				<div class="s" id="h9"></div>
				<div class="s" id="h10"></div>
				<div class="s" id="h11"></div>
				<div class="s" id="h12"></div>
				<div class="s" id="h13"></div>
				<div class="s" id="h14"></div>
				<div class="s" id="h15"></div>
				<div class="s" id="h16"></div>
				<div class="s" id="h17"></div>
				<div class="s" id="h18"></div>
				<div class="s" id="h19"></div>
				<div class="s" id="h20"></div>
				<div class="s" id="h21"></div>
			</div>
			<div class="seatBox">
				<!-- I열 -->
				<div class="firstCol">I</div>
				<div class="s" id="i1"></div>
				<div class="s" id="i2"></div>
				<div class="s" id="i3"></div>
				<div class="s" id="i4"></div>
				<div class="s" id="i5"></div>
				<div class="s" id="i6"></div>
				<div class="s" id="i7"></div>
				<div class="s" id="i8"></div>
				<div class="s" id="i9"></div>
				<div class="s" id="i10"></div>
				<div class="s" id="i11"></div>
				<div class="s" id="i12"></div>
				<div class="s" id="i13"></div>
				<div class="s" id="i14"></div>
				<div class="s" id="i15"></div>
				<div class="s" id="i16"></div>
				<div class="s" id="i17"></div>
				<div class="s" id="i18"></div>
				<div class="s" id="i19"></div>
				<div class="s" id="i20"></div>
				<div class="s" id="i21"></div>
			</div>
			<div class="seatBox">
				<!-- J열 -->
				<div class="firstCol">J</div>
				<div class="s" id="j1"></div>
				<div class="s" id="j2"></div>
				<div class="s" id="j3"></div>
				<div class="s" id="j4"></div>
				<div class="s" id="j5"></div>
				<div class="s" id="j6"></div>
				<div class="s" id="j7"></div>
				<div class="s" id="j8"></div >
				<div class="s" id="j9"></div>
				<div class="s" id="j10"></div>
				<div class="s" id="j11"></div>
				<div class="s" id="j12"></div>
				<div class="s" id="j13"></div>
				<div class="s" id="j14"></div>
				<div class="s" id="j15"></div>
				<div class="s" id="j16"></div>
				<div class="s" id="j17"></div>
				<div class="s" id="j18"></div>
				<div class="s" id="j19"></div>
				<div class="s" id="j20"></div>
				<div class="s" id="j21"></div>
			</div>
			<div class="seatBox">
				<!-- K열 -->
				<div class="firstCol">K</div>
				<div class="s" id="k1"></div>
				<div class="s" id="k2"></div>
				<div class="s" id="k3"></div>
				<div class="s" id="k4"></div>
				<div class="s" id="k5"></div>
				<div class="s" id="k6"></div>
				<div class="s" id="k7"></div>
				<div class="s" id="k8"></div>
				<div class="s" id="k9"></div>
				<div class="s" id="k10"></div>
				<div class="s" id="k11"></div>
				<div class="s" id="k12"></div>
				<div class="s" id="k13"></div>
				<div class="s" id="k14"></div>
				<div class="s" id="k15"></div>
				<div class="s" id="k16"></div>
				<div class="s" id="k17"></div>
				<div class="s" id="k18"></div>
				<div class="s" id="k19"></div>
				<div class="s" id="k20"></div>
				<div class="s" id="k21"></div>
			</div>
			<div class="seatBox">
				<!-- L열 -->
				<div class="firstCol">L</div>
				<div class="s" id="l1"></div>
				<div class="s" id="l2"></div>
				<div class="s" id="l3"></div>
				<div class="s" id="l4"></div>
				<div class="s" id="l5"></div>
				<div class="s" id="l6"></div>
				<div class="s" id="l7"></div>
				<div class="s" id="l8"></div>
				<div class="s" id="l9"></div>
				<div class="s" id="l10"></div>
				<div class="s" id="l11"></div>
				<div class="s" id="l12"></div>
				<div class="s" id="l13"></div>
				<div class="s" id="l14"></div>
				<div class="s" id="l15"></div>
				<div class="s" id="l16"></div>
				<div class="s" id="l17"></div>
				<div class="s" id="l18"></div>
				<div class="s" id="l19"></div>
				<div class="s" id="l20"></div>
				<div class="s" id="l21"></div>
			</div>
		</div>
		</div>
		<div id="detail">
		<h3>선택확인</h3>
		<ul>
			<li>관람일 : 2022.09.07(수)</li> 
			<li>관람시간 : 20시 00분</li>
			<li>좌석수 : 3매</li>
			<li>좌석번호 : B구역 10열 8, B구역 10열 9, B구역 10열 10</li>
			<li>가격 : 165,000원</li>
		</ul>
		<input type="button" value="좌석선택완료" id="completeSeat" onclick="location.href='bookCredit'"/>
		</div>
	</div>
</div>