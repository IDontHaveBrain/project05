<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>

   td{text-align:center;}
   .input-group-text{width:100%;background-color:#cfffdf;color:black;font-weight:bolder;}
   .input-group-prepend{width:20%;}
   body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;
		align:center;
}

input[type=text], input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  align:center;
}
  
button {
  background-color: #8282FF;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
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

</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<script>
$(document).ready(function(){


	$("#submit").on("click", function(){
		if($("#id").val()==""){
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		}
		if($("#pw").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#pw").focus();
			return false;
		}
		
		var pw = document.querySelector("#pw")
		var ckpw = document.querySelector("[name=ckpw]")
		if(pw.value!=null){
			if(pw.value==""){
				alert("비밀번호를 입력해주세요")
				pw.focus();
				return
			}else{
				if(pw.value.length<5 || pw.value.length>12){
					alert("비밀번호는 5~12자리만 입력가능합니다")
					pw.value=""
					pw.focus()
					return
				}else{
					if(ckpw.value==""){
						alert("비밀번호확인을 입력해주세요")
						ckpw.focus()
						return
					}else{
						if(pw.value!=ckpw.value){
							alert("비밀번호가 확인되지않습니다")
							alert("비밀번호를 확인해주세요")
							ckpw.focus()
							return
						}
					}
				}
			}
		}
		
	});
	
	
});
</script>
<div class="jumbotron text-center">
  <h2 class="home_header">스포츠토토 <span class="light">회원가입</span></h2>
    		<p class="tagline">건전하게 즐겨보세요</p>
    		</div>
<form id="Insert" action="Insert.do" method="post">    		
  아이디<br>
  <input name="id"   type="text"
            value="${param.id}"   placeholder="아이디를 입력하세요" /><span></span><br>  
   비밀번호<br>
   <input name="pw"    type="password"
            value="${param.pw}" placeholder="비밀번호를 입력하세요" /><span></span><br>  
 비밀번호확인<br>
 <input name="ckpw" value="ckpw"   type="password"  placeholder="비밀번호를 재입력하세요" /><span></span><br> 
 이름<br>
 <input name="name"    type="text"  placeholder="이름을 입력하세요" /><span></span><br> 
 이메일<br>
 <input name="mail"    type="text"  placeholder="이메일을 입력하세요" /><span></span><br> 
    
          <button type="submit" id="submit"  onclick="join()" class="btn btn-success">회원가입</button>  
         <button class="btn btn-success"  onclick="golog()" type="button" value="로그인">로그인 하러가기</button> 
   
</form>

   <table border> 
	<c:forEach var="totologin" items="${loginList}"> 
	<tr><td>${totologin.id}</td>
	<td>${totologin.pw}</td></tr>

	</c:forEach>
	</table>
	 <!-- Copyrights Section -->
  <div class="copyright">&copy;2022 - <strong>BETMAN</strong></div>		
<script>
function golog(){	
	location.href="${path}/Login2.do"
}
function join(){
	alert("회원가입 완료!!!")
}
</script>
</body>
</html>