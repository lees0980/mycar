<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../reset.css" type="text/css" rel="stylesheet">
<link href="/css/dictionary/main.css" type="text/css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap"
	rel="stylesheet">
<script src="/js/dictionary/parts.js"></script>
<title>Insert title here</title>
<style>
.partmain {
	width:1500px;
	height:850px;
/* 	border: 1px solid; */
	display: flex;
}

.terior {
/* 	border: 1px solid; */
	border-bottom: 1px solid black;
	width: 50px;
}

#partsmenu {
	width: 300px;
	border: 1px solid black;
}

.dis {
	padding-top: 50px;
}

.divtest {
	display: flex;
	margin: 20px;
}

.P01 {
	width: 100%;
	background: none;
	/*    height:400px; */
}

.P01>li, .P02>li {
	position: relative;
	width: 100%;
	height: 40px;
	background: none;
	text-align: center;
	line-height: 50px;
}

.P01>li:hover .P02 {
	left: 300px;
}

.P01>li a:hover {
	display: block;
	background: #979797;
}

.P02 {
	width: 200px;
	background: white;
	position: absolute;
	top: 0;
	left: -9999px;
}

.P02 li {
	border: solid 1px black;
}
</style>
</head>
<body>
	<main class=partmain>

		<div id="partsmenu">
			<ul class="P01">
				<li class="terior">인테리어
					<ul class="P02">
						<li class="inmenu1" onclick="inmenu1()">핸들/와이퍼</li>
						<li class="inmenu2" onclick="inmenu2()">핸들/방향등</li>
						<li class="inmenu3" onclick="inmenu3()">계기판</li>
						<li class="inmenu4" onclick="inmenu4()">엑셀/브레이크</li>
						<li class="inmenu5" onclick="inmenu5()">에어백/안전벨트</li>
						<li class="inmenu6" onclick="inmenu6()">센터페시아/콘솔</li>
				</li>
			</ul>
			<li class="terior">익스테리어
				<ul class="P02">
					<li class="exmenu1" onclick="exmenu1()">아웃 사이드 미러</li>
					<li class="exmenu2" onclick="exmenu2()">와이퍼/워셔액 분사구</li>
					<li class="exmenu3" onclick="exmenu3()">타이어/휠</li>
					<li class="exmenu4" onclick="exmenu4()">헤드라이트 안개등</li>
					<li class="exmenu5" onclick="exmenu5()">미등 /브레이크등</li>
					<li class="exmenu6" onclick="exmenu6()">트렁크/비상탈출레버</li>
					<li class="exmenu7" onclick="exmenu7()">주유구/디젤/요소수</li>
				</ul>
			</li>
			</ul>

			<div class="locationParts">
				<div>부품 위치사진</div>
				<img src="../image/dictionary/parts/내부.png"
					style="width: 300px; height: 260px;">
			</div>

		</div>
		<div class="board"></div>
	</main>
</body>
</html>