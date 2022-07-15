<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<link rel="stylesheet" type="text/css" href="css/Main_css.css">


</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #8181F7;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<script type="text/javascript">
	function goMain(){
		location.href="webapp\\project5\\Main.jsp";
	}
	
	$(document).ready(function(){
		
		$("[name=id]").keyup(function(){
	    	 if(event.keyCode==13){ // 입력후, enter키를 누를 때. 
	    		 var idVal = $(this).val() //입력된 값
	    		 // 입력된 길이가 4~8
	    		 if(idVal.length>=4 && idVal.length<=8){
	    			 // 선택자에 의해서 문자열 표시 및 색상 처리
	    			 $("span").text("유효한 아이디입니다.").css("color","blue")
	    		 }else{
	    			 $("span").text("아이디 입력범위는(4~8)입니다.").css("color","red")
	    		 }
	    		 
	    	 }
	      });
		$("[name=pw]").keyup(function(){
	    	 if(event.keyCode==13){ 
	    		 var corPW = 486; //corPW 이거 나중에 수정
	    		 var pwVal = $(this).val() 
	    		 if(pwVal!=corPW){
	    			 $("span").text("비밀번호 오류!!.").css("color","red")
	    		 }else{
	    			 $("span").text("일치")
	    		 }
	    		 
	    	 }
	      });
	}

</script>
	<form>
<div class="container">

<form>
  <div class="container">
  <h2 class="home_header">스포츠토토 <span class="light">로그인</span></h2>
    		<p class="tagline">건전하게 즐겨보세요</p>
  아이디<input name="id" type="text"/><span></span><br>
  비밀번호<input name="pw" type="password"/><span></span><br>
    <label>
      <input type="checkbox" checked="checked" name="remember">아이디저장
    </label>
    <button type="submit"  onclick="goMain()">Login</button>
    <span class="scID"><a href="#">아이디찾기</a></span>
    <span class="uptPw"><a href="#">비밀번호재설정</a></span>
    <span class="signUP"><a href="#">회원가입</a></span>
    
  </div>

</form>
	     

	  
	  
		<!-- About Section -->
 		<section class="about" id="about">
   		  <h2 class="hidden">About</h2>
		 
    </section>
		

  
  <!-- Footer Section -->
  <section class="footer_banner" id="contact">
    <h2 class="hidden">Footer Banner Section </h2>
    <p class="home_header">Our Info &amp; News</p>
    <div OnClick="location.href='Contact/Contact.html'" class="button">CONTACT</div>
  </section>
  <!-- Copyrights Section -->
  <div class="copyright">&copy;2022 - <strong>BETMAN</strong></div>		
	</div>
<script type="text/javascript">
$(function() {
	$( "#Tabs1" ).tabs(); 
});
</script>
</form>
</body>
</html>