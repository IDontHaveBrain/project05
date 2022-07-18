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
      <style>
h2{    font-family: "paybooc-Light", sans-serif;}
   table {
    margin-left:auto; 
    margin-right:auto;
}

table, td, th {
    border-collapse : collapse;
    border : 1px solid black;
};
HTML CSSResult Skip Results Iframe
EDIT ON
table.type07 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border: 1px solid #ccc;
    margin-left:auto; 
    margin-right:auto;
}
table.type07 thead {
  border-right: 1px solid #ccc;
  border-left: 1px solid #ccc;
  background: #EFF2FA;
      font-family: "paybooc-Light", sans-serif;
}
table.type07 thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  
}
table.type07 tbody th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #fcf1f4;
}
table.type07 td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  text-align: center;
  background: white;
      font-family: "paybooc-Light", sans-serif;
}
input {

  width: 500px;
  height:50px;
  margin: 20px;
  font-size: 15px;
  border: 0;
  border-radius: 5px;
  outline: none;
  background-color: rgb(233, 233, 233);
}


button {
    margin: auto;
    display:block;
    padding:10px 20px
}

.w-btn {
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
}

.w-btn-outline {
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
}

.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
}
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
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<div class="jumbotron text-center">
  <h2>포인트 충전</h2>

</div>
<div class="container">
<table>
   <form id="frm01" action="${path}/mypointDetail.do" 
         class="form"  method="post">
         <tr><th>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">비밀 번호</span>
         <input name="pw" class="form-control" 
            value="${param.pw}" placeholder="비밀번호를 입력하세요" />   
      </div>
	<th></tr>
       </div>
         <tr><th>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="text-center input-group-text">충전 포인트</span>
         <input name="point" class="form-control" 
            value="${param.point}" placeholder="포인트 입력하세요" /> 
      </div>    
         </div>
      <div class="text-right">
         <button type="submit" onclick="updateProc()" class="btn btn-success">충전</button>
      </div>  
      </tr></th>
      <tr><th>유의사항</th></tr>
            <tr><th>' 가상계좌는 한 ID당 1개만 발급됩니다.</th></tr>
            <tr><th>' 1회에 1만원부터 100만원까지 충전 가능하며 횟수 제한이 없습니다.</th></tr>
            <tr><th>' 가상계좌번호로 입금 시 약 10분 이내로 자동 충전됩니다.</th></tr>
            <tr><th>' 발급받은 가상계조를 사용 중에 충전 전 가상계조 변경하나 타인의 가상계좌로 입금했을 경우 기존 발급받았던 예치금의 자동 충전은 불가합니다.</th></tr>
            <tr><th>' 본인 가상계좌가 아닌 가상계좌로 입금한 경우 타인의 예치금으로 충전되며, 이에 대한 책임은 본인에게 있습니다.</th></tr>
            <tr><th>' 은행 전산장애 등으로 충전시간이 지연될 수 있습니다.</th></tr>
            <tr><th>' ATM 기기에 따라 무매체 입금이 불가할 수 있습니다.</th></tr>
   </form>   
    </table>
</div>
<script type="text/javascript">
function updateProc(){
	if(confirm("충전하시겠습니까?")){
		$("form").attr("action","${path}/updateMypoint.do");
		$("form").submit();
	}
}
var proc = "${proc}"
	if(proc=="upt"){
		alert("충전 완료되었습니다.");
		location.href="${path}/MypointList.do";
	}
</script>
</body>
</html>