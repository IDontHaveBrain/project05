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
<title>로그인</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
   .input-group-text{width:100%;background-color:#cfffdf;color:black;font-weight:bolder;}
   .input-group-prepend{width:20%;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>로그인</h2>

</div>
<div class="container">
   <form id="frm01"  class="form"  method="post">
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">아이디</span>
         </div>
         <input name="empno" class="form-control" 
            value="${totologin.id}" readonly  placeholder="아이디를 입력하세요" />   
      </div>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">비밀번호</span>
         </div>
         <input name="pw" class="form-control" 
            value="${totologin.id}" placeholder="비밀번호를 입력하세요" />   
      </div>    
    
      <div class="text-right">
               
            <button type="button" onclick="goMain()" class="btn btn-info">로그인</button>    
      </div>  
   </form>
</div>
<script type="text/javascript">
function @@(){
	if(confirm("수정하시겠습니까?")){
		$("form").attr("action", "");
		$("form").submit();
	}
}

	
	function goMain(){
	      location.href="메인페이지";
	   }	
</script>
</body>
</html>