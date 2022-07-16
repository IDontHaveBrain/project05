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
	function goInsert(){
		location.href="${path}/oneoneinqInsertForm.do"
	}
	function goDetail(boardno){
		location.href="${path}/oneoneinqDetail.do?boardno="+boardno;
	}
</script>
</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<div class="jumbotron text-center">
  <h2>1:1문의 게시판</h2>

</div>
<div class="container">
   <form id="frm01" class="form"  method="post">
     <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
       <input class="form-control mr-sm-2" name="title" 
       		value="${param.title}" placeholder="제목" />
       <input class="form-control mr-sm-2" name="name" 
       		value="${param.name}" placeholder="작성자" />

       <button class="btn btn-info" type="submit">검색</button>
       <button class="btn btn-success" onclick="goInsert()" type="button">1:1문의 등록</button>
    </nav>
   </form>
   <table class="table table-hover table-striped">
      <col width="10%">
      <col width="25%">
      <col width="40%">
      <col width="15%">
      <col width="10%">
    <thead>
    
      <tr class="table-success text-center">
        <th>게시판번호</th>
        <th>작성자</th>
        <th>제목</th>
        <th>작성일자</th>
        <th>조회수</th>
      </tr>
    </thead>   
    <tbody>
    <c:forEach var="ol" items="${oneList}">
       <tr ondblclick="goDetail(${ol.boardno})">
       <td>${ol.boardno}</td><td>${ol.name}</td><td>${ol.title}</td>
       	   <td><fmt:formatDate value="${ol.nowtime}"/></td><td>${ol.readcnt}</td></tr>
    </c:forEach>
    </tbody>
   </table>    
    
</div>
</body>
</html>