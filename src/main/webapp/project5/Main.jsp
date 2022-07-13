<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tuner</title>
<%--link href="${path}/a00_com/a01_common.css" rel="stylesheet"> --%>

<link rel="stylesheet" type="text/css" href="css/Main_css.css">
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
			<!-- About Section -->
			<section class="about" id="about">
				<h2 class="hidden">About</h2>

			</section>
			<!-- Stats Gallery Section -->
			<div class="gallery">
				<div class=thumbnail1>
					<img src="img/soccer.png" width="200" height="140"
						onmouseover="this.src='img/soccer2.png'"
						onmouseout="this.src='img/soccer.png'" />
				</div>
				<div class=thumbnail2>
					<img src="img/baseball.png" width="200" height="140" onmouseover=""
						onmouseout="" />
				</div>
				<div class=thumbnail3>
					<img src="img/basketball.png" width="200" height="140"
						onmouseover="" onmouseout="" />
				</div>
				<div class=thumbnail4>
					<img src="img/volleyball.png" width="200" height="140"
						onmouseover="" onmouseout="" />
				</div>
			</div>
			<!-- Parallax Section -->
			<section class="banner">

				<h2 class="parallax">BET PRO</h2>
				<p class="parallax_description"></p>
				<p class="vid">
					<video autoplay width="350" align="center">
						<source src="video/s1.mp4" />
					</video>
				</p>
			</section>
			<!-- More Info Section -->
			<footer>
				<article class="footer_column">
					<h3>Guide</h3>
					<a href="infop/Info.html"><img src="images/가이드.jpg" alt=""
						width="400" height="200" class="cards"
						onmouseover="this.src='images/가이드1.jpg'"
						onmouseout="this.src='images/가이드.jpg'" /></a>
					<p style="text-align: center">경기일정 보기</p>
				</article>
				<article class="footer_column">
					<h3>Order</h3>
					<a href="Order/Order.html"><img src="images/대패.jpg" alt=""
						width="400" height="200" class="cards"
						onmouseover="this.src='images/대패1.jpg'"
						onmouseout="this.src='images/대패.jpg'" /></a>
					<p style="text-align: center">구매예약 서비스 시간 : 오후 10시 ~ 오전 8시</p>
				</article>
			</footer>
			<!-- Footer Section -->
			<section class="footer_banner" id="contact">
				<h2 class="hidden">Footer Banner Section</h2>
				<p class="home_header">Our Info &amp; News</p>
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