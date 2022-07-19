<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Betman</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>
td{text-align:center;}
.slideshow-container {
  max-width: 1440px;
  position: relative;
  margin: auto;
  margin-top: 120px;
}

/* effect */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;	
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

img.static {
position: static;
}

h1 {
	margin: 2em 0 1.5em 0;
}

.container {
	width: 100%;
	height: 100%;
	background-color: #646987;
	text-align: center;
}

header {
	width: 100%;
	height: 5%;
	background-color: #646987;
}

.logo {
	color: #fff;
	font-weight: bold;
	text-align: undefined;
	width: 10%;
	float: left;
	margin-top: 15px;
	margin-left: 25px;
	letter-spacing: 4px;
}

header nav ul {
	list-style: none;
	float: right;
	color: #646987;
}

nav ul li {
	float: left;
	color: #FFFFFF;
	font-size: 14px;
	text-align: left;
	margin-right: 25px;
	letter-spacing: 2px;
	font-weight: bold;
	transition: all 0.3s linear;
}

ul li a {
	color: #FFFFFF;
	text-decoration: none;
}

ul li:hover a {
	color: #2C9AB7;
}

.home_header {
	color: #fefefe;
	text-align: center;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	letter-spacing: 4px;
	line-height: 22px;
	padding-left: 10px;
	padding-right: 10px;
}

.home {
	height: 23%;
	background-color: #555;
	padding-top: 150px;
	padding-bottom: 150px;
	text-align: center;
}

.tagline {
	text-align: center;
	color: #FFFFFF;
	font-weight: lighter;
	text-transform: uppercase;
	letter-spacing: 1px;
	margin-top: 20px;
	line-height: 22px;
}

.light {
	font-weight: bold;
	color: #000000;
}

.about {
	padding-left: 25px;
	padding-right: 25px;
	padding-top: 10px;
	padding-bottom: 10px;
	display: inline-block;
	background-color: #FFFFFF;
	margin-top: 0px;
	width: 80%;
}

.hidden {
	display: none;
}

.text_column {
	width: 100%;
	text-align: justify;
	font-weight: lighter;
	line-height: 25px;
	float: left;
	color: #A3A3A3;
}

/* Stats Gallery */
.stats {
	color: #717070;
	margin-bottom: 5px;
}

.gallery {
	clear: both;
	display: inline-block;
	width: 100%;
	background-color: none;
	/* [disabled]min-width: 400px;*/
	padding-bottom: 20px;
	padding-top: 0px;
	margin-top: 0px;
	margin-left: 200px;
	margin-bottom: 0px;
}

.thumbnail1 {
	width: 20%;
	height: 125px;
	float: left;
	margin-top: 30px;
	align-content: center;
	/*background-image:url(../images/storage1.jpg);*/
}

.thumbnail2 {
	width: 20%;
	height: 125px;
	float: left;
	margin-top: 30px;
	/*background-image:url(../images/table1.jpg);*/
}

.thumbnail3 {
	width: 20%;
	height: 125px;
	text-align: center;
	float: left;
	margin-top: 30px;
	/*background-image:url(../images/hanga1.jpg);*/
}

.thumbnail4 {
	width: 20%;
	height: 125px;
	text-align: center;
	float: left;
	margin-top: 30px;
}

.gallery .thumbnail4 h4 {
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
	margin-left: 5px;
	color: #52BAD5;
}

.gallery .thumbnail4 p {
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	color: #A3A3A3;
}
/* [disabled]min-width: 400px;
*/
.galleryy .thumbnail5 {
	padding-bottom: 35px;
	padding-top: 0px;
	margin-top: -5px;
	margin-bottom: 0px;
}

.thumbnail {
	width: 25%;
	text-align: center;
	float: left;
	margin-top: 35px;
}

.gallery .thumbnail h4 {
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
	margin-left: 5px;
	color: #52BAD5;
}

.gallery .thumbnail p {
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	color: #A3A3A3;
}

/* Parallax Section */
.banner {
	background-color: #2D9AB7;
	height: 420px;
	background-attachment: fixed;
	background-size: cover;
	background-repeat: no-repeat;
}

.parallax {
	color: #FFFFFF;
	text-align: right;
	padding-right: 100px;
	padding-top: 110px;
	letter-spacing: 2px;
	margin-top: 0px;
}

.parallax_description {
	color: #FFFFFF;
	text-align: right;
	padding-right: 100px;
	width: 30%;
	float: right;
	font-weight: lighter;
	line-height: 23px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}

.vid {
	width: 30%;
	float: left;
	font-weight: lighter;
	line-height: 23px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 3px;
	margin-left: 50px;
}
/* More info */
footer {
	background-color: #FFFFFF;
	padding-bottom: 35px;
	text-align: center;
	
}

.footer_column {
	width: 50%;
	text-align: center;
	padding-top: 30px;
	float: left;
}

footer .footer_column h3 {
	color: #676767;
	text-align: center;
}

footer .footer_column p {
	color: #717070;
	background-color: #FFFFFF;
}

.cards {
	width: 100%;
	height: auto;
	max-width: 400px;
	max-height: 200px;
}

footer .footer_column p {
	padding-left: 30px;
	padding-right: 30px;
	text-align: justify;
	line-height: 25px;
	font-weight: lighter;
	margin-left: 20px;
	margin-right: 20px;
	background-color: #FFFFFF;
}

.button {
	width: 200px;
	margin-top: 40px;
	margin-right: auto;
	margin-bottom: auto;
	margin-left: auto;
	padding-top: 20px;
	padding-right: 10px;
	padding-bottom: 20px;
	padding-left: 10px;
	text-align: center;
	vertical-align: middle;
	border-radius: 0px;
	text-transform: uppercase;
	font-weight: bold;
	letter-spacing: 2px;
	border: 3px solid #FFFFFF;
	color: #FFFFFF;
	transition: all 0.3s linear;
}

.button:hover {
	background-color: #FEFEFE;
	color: #C4C4C4;
	cursor: pointer;
}

.copyright {
	text-align: center;
	padding-top: 20px;
	padding-bottom: 20px;
	background-color: #717070;
	color: #FFFFFF;
	text-transform: uppercase;
	font-weight: lighter;
	letter-spacing: 2px;
	border-top-width: 2px;
}

.footer_banner {
	background-color: #B3B3B3;
	padding-top: 60px;
	padding-bottom: 60PX;
	margin-bottom: 0px;
	background-repeat: repeat;
	text-align: center;
}

footer {
	display: inline-block;
	width: 100%;
	background-color: #FFFFFF;
}
</style>
</head>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(".mySlideDiv").not(".active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김
	setInterval(nextSlide, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
	
});

function prevSlide() {
	$(".mySlideDiv").hide(); //모든 div 숨김
	var allSlide = $(".mySlideDiv"); //모든 div 객체를 변수에 저장
	var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수
	
	//반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
	$(".mySlideDiv").each(function(index,item){ 
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	//새롭게 나타낼 div의 index
	var newIndex = 0;
    
	if(currentIndex <= 0) {
		//현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
		newIndex = allSlide.length-1;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
		newIndex = currentIndex-1;
	}

	//모든 div에서 active 클래스 제거
	$(".mySlideDiv").removeClass("active");
    
	//새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
	$(".mySlideDiv").eq(newIndex).addClass("active");
	$(".mySlideDiv").eq(newIndex).show();

}

//다음 슬라이드
function nextSlide() {
	$(".mySlideDiv").hide();
	var allSlide = $(".mySlideDiv");
	var currentIndex = 0;
	
	$(".mySlideDiv").each(function(index,item){
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	var newIndex = 0;
	
	if(currentIndex >= allSlide.length-1) {
		//현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
		newIndex = 0;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
		newIndex = currentIndex+1;
	}

	$(".mySlideDiv").removeClass("active");
	$(".mySlideDiv").eq(newIndex).addClass("active");
	$(".mySlideDiv").eq(newIndex).show();
	
}
</script>
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
			
			
			<div class="slideshow-container">

     <div class="mySlideDiv fade active">
        <img src="img\banner1.PNG"> 
     </div>
            
     <div class="mySlideDiv fade">
         <img src="img\banner2.PNG"> 
     </div>
            
     <div class="mySlideDiv fade">
         <img src="img\banner3.png"> 
     </div>

     <a class="prev" onclick="prevSlide()">&#10094;</a>
     <a class="next" onclick="nextSlide()">&#10095;</a>
            
</div>
			
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
				<div OnClick="location.href='Contact.jsp'" class="button">CONTACT</div>
			</section>
			<!-- Copyrights Section -->
			<div class="copyright">
				&copy;2022 - <strong>BETMAN</strong>
			</div>
		</div>
	</form>
</body>
</html>