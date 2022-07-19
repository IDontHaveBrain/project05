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
.table14_5 table {
	width:100%;
	margin:15px 0;
	border:0;
}
.table14_5 th {
	font-weight:bold;
	background-color:#c6c6dd;
	color:#202020
}
.table14_5,.table14_5 th,.table14_5 td {
	font-size:0.95em;
	text-align:center;
	padding:4px;
	border-collapse:collapse;
}
.table14_5 th,.table14_5 td {
	border: 1px solid #ffffff;
	border-width:1px
}
.table14_5 th {
	border: 1px solid #c6c6dd;
	border-width:1px 0 1px 0
}
.table14_5 td {
	border: 1px solid #eeeeee;
	border-width:1px 0 1px 0
}
.table14_5 tr {
	border: 1px solid #ffffff;
}
.table14_5 tr:nth-child(odd){
	background-color:#f7f7f7;
}
.table14_5 tr:nth-child(even){
	background-color:#ffffff;
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
	
	var isInsert = "${isInsert}"
		if(isInsert=="Y"){
			if(!confirm("등록성공했습니다\n계속등록하시겠습니까?")){
				// 취소 입력시 조회화면 이동..
				location.href="${path}/calList.do"
			}
		}
	
	function goMain(){
		location.href="${path}/calList.do";
	}
	function insertProc(){
		if(confirm("등록하시겠습니까?")){
			var subjectVal = $("[name=team]").val();		
			if(	subjectVal == ""){
				alert("팀을 등록하세요");
				$("[name=team]").focus();
				return; // 프로세스를 중단 처리
			}	
			var writerVal = $("[name=place]").val();		
			if(	writerVal == ""){
				alert("장소를 등록하세요");
				$("[name=place]").focus();
				return; // 프로세스를 중단 처리
			}	
			document.querySelector("form").submit();
		}
	}
</script>
</head>

<body class="table14_5">
<div class="jumbotron text-center">
  <h2>게임일정 등록</h2>

</div>

<div class="container">
	<form id="frm01" action="${path}/calInsert.do" 
		 class="form"  method="post">
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="text-center input-group-text">일시</span>
			</div>
			<input name="ctime" class="form-control" 
				value="" placeholder="일시 입력하세요" />	
		</div>  
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="text-center input-group-text">팀</span>
			</div>
			<input name="team" class="form-control" 
				value="" placeholder="팀 입력하세요" />	
		</div> 	
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="text-center input-group-text">장소</span>
			</div>
			<input name="place" class="form-control" 
				value="" placeholder="장소 입력하세요" />	
		</div> 			
		<div class="text-right">
			<button type="button" onclick="insertProc()" class="btn btn-success">등록</button>
			<button type="button" onclick="goMain()" class="btn btn-info">메인화면</button>
		</div>		
	</form>
</div>
</body>
</html>