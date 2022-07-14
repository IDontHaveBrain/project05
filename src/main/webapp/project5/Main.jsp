<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Betman</title>
<%--link href="${path}/a00_com/a01_common.css" rel="stylesheet"> --%>

<link rel="stylesheet" type="text/css" href="css/Main.css">
</head>
<body>
<jsp:include page="topNav.jsp"></jsp:include>
	<form>
		<div class="container">
			<!-- Home Section -->
			<section class="home" id="home">
				<h1 class="home_header">
					BET <span class="light">MAN</span>
				</h1>
				<p class="tagline">한경기구매! 싱글플레이!</p>
			</section>
			
			<!-- Parallax Section -->
			<section class="banner">
			<img src="img\calendar.PNG" class="static"
			width="800" height="380"/>
			</section>
			
			<!-- More Info Section -->
			<footer>
				<article class="footer_column">
					<h3>적중결과</h3>
					<a href="infop/Info.html"><img src="img\result.PNG" alt=""
						width="400" height="200" class="cards"/>
					</a>
				</article>
				<article class="footer_column">
					<h3>토토카페</h3>
					<a href="Order/Order.html"><img src="img\cafe.PNG" alt=""
						width="400" height="200" class="cards" /></a>
				</article>
			</footer>
			<!-- Footer Section -->
			<section class="footer_banner" id="contact">
				<h2 class="hidden">Footer Banner Section</h2>
				<p class="home_header">데이터 &amp; 분석</p>
				<div OnClick="location.href='Contact/Contact.html'" class="button">CONTACT</div>
			</section>
			<!-- Copyrights Section -->
			<div class="copyright">
				&copy;2022 - <strong>BETMAN</strong>
			</div>
		</div>
		<script type="text/javascript">
$(function() {
	$( "#Tabs1" ).tabs(); 
});
</script>
	</form>
</body>
</html>