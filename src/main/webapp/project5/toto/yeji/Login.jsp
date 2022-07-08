<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<fmt:requestEncoding value="UTF-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스포츠 토토 로그인</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>
    
</style>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script type="text/javascript">
	function canLog(){
		var id = document.querySelector("#id")
		if(id.value!=null){
			if(id.value==""){
				alert("아이디를 입력해주세요")
				id.focus();
				return
			}else{
				if(id.value.length<5 || id.value.length>16){
					alert("id는 5~16자만 입력가능합니다")
					id.focus()
					return
				}
			}
		}
		var pass = document.querySelector("#pass")
		if(pass.value!=null){//비밀번호 유효성검사
			if(pass.value==""){
				alert("비밀번호를 입력해주세요")
				pass.focus()
				return
			}else{
				if(pass.value.length<5 || pass.value.length>12){
					alert("비밀번호는 5~12자리여야합니다")
					pass.value=""
					pass.focus()
					return
				}
			}
		}
	}
	function gomain(){
		location.href=" ";
	}
	function goSignup(){
		location.href=" ";
	}
</script>
</head>
<body>
<%-- 

--%>
<h1></h1>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="id">아이디</label>
    </div>
    <div class="col-75">
      <input type="text" id="id" name="id" placeholder="아이디입력.."
         value="">
    </div>
  </div>
    <div class="col-25">
      <label for="pass">비밀번호</label>
    </div>
    <div class="col-75">
      <input type="text" id="pass" name="pass" placeholder="비밀번호 입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <input type="submit" value="로그인">
  </div>
  </form>
  <%
	String logPass = request.getParameter("logPass");
	
	if(logPass!=null && logPass.equals("0")){
		out.println("");
	}else if(logPass!=null && logPass.equals("-1")){
		out.println("");
	}
  %>
</div> 

</body>
</html>