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
<link rel="stylesheet" type="text/css" href="css/Main.css">
<style>
td{text-align:center;}
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