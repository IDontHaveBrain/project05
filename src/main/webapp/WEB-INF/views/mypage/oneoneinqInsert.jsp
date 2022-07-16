<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
  <h2>1:1문의 게시판등록</h2>

</div>
<div class="container">
   <form id="frm01" action="${path}/oneoneinqInsert.do" 
         class="form"  method="post">
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">제 목</span>
         </div>
         <input name="title" class="form-control" 
            value="${oneoneinq.title}" placeholder="제목입력하세요" />   
      </div>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">작성자</span>
         </div>
         <input name="name" class="form-control" 
            value="${oneoneinq.name}" placeholder="작성자를입력하세요" />   
      </div>    
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">작성자</span>
         </div>
         <input name="email" class="form-control" 
            value="${oneoneinq.email}" placeholder="이메일을 입력하세요" />   
      </div>   
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">작성자</span>
         </div>
         <input name="phonenumber" class="form-control" 
            value="${oneoneinq.phonenumber}" placeholder="번호를 입력하세요" />   
      </div>   
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">내 용</span>
         </div>
         <textarea name="content" rows="10" class="form-control" 
            placeholder="내용 입력하세요"></textarea>    
      </div>
      <div class="text-right">
         <button type="button" onclick="insertProc()" class="btn btn-success">등록</button>
         <button type="button" onclick="goMain()" class="btn btn-info">메인화면</button>
      </div>  
   </form>
  </div>
<script type="text/javascript">
var isInsert = "${isInsert}"
   if(isInsert=="Y"){
        if(!confirm("등록성공했습니다\n계속등록하시겠습니까?")){
            location.href="${path}/OneOneinq.do"
         }
   }
function goMain(){
   location.href="${path}/OneOneinq.do"
}
function insertProc(){
      if(confirm("등록하시겠습니까?")){
         var titleVal = $("[name=title]").val();
         if( titleVal == ""){
            alert("제목을 입력하세요")
            $("[name=title]").focus();
            return;
         }
         var contentVal = $("[name=content]").val();
         if( contentVal == ""){
            alert("내용을 입력하세요")
            $("[name=content]").focus();
            return; 
         }
         var emailVal = $("[name=email]").val();
         if( emailVal == ""){
            alert("이메일을 입력하세요")
            $("[name=email]").focus();
            return; 
         }
         var phonenumberVal = $("[name=phonenumber]").val();
         if( phonenumberVal == ""){
            alert("핸드폰번호를 입력하세요")
            $("[name=phonenumber]").focus();
            return; 
         }
         document.querySelector("form").submit();
      }
   }
</script>    
</body>
</html>