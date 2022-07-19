<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style>
.input-group-text {
	width: 100%;
	background-color: #cfffdf;
	color: black;
	font-weight: bolder;
}

.input-group-prepend {
	width: 20%;
}
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
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
<%-- 
		
		--%>
	});
</script>
</head>
<body>
	<div class="jumbotron text-center">
		<h2>게시판상세화면</h2>

	</div>
	<div class="container">
		<form id="frm01" action="${path}/cloInsert.do" class="form"
			method="post">
			<div class="input-group mb-2 ">
				<div class="input-group-prepend ">
					<span class="text-center input-group-text ">글번호</span>
				</div>
				<input name="no" class="form-control" value="${clo.no}"
					placeholder="글번호 입력하세요" />

				<div class="input-group-prepend">
					<span class="text-center input-group-text">구분</span>
				</div>
				<input name="ctype" class="form-control"
					value="${clo.ctype}" placeholder="구분 입력하세요" />
			</div>

			<div class="input-group mb-2">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">제 목</span>
				</div>
				<input name="ctitle" class="form-control"
					value="${clo.ctitle}" placeholder="제목 입력하세요" />

				<div class="input-group-prepend">
					<span class="text-center input-group-text">등록일</span>
				</div>
				<input name="cdate" class="form-control"
					value="${clo.cdate}" placeholder="등록일 입력하세요" />
			</div>
			<div class="input-group mb-2">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">조회수</span>
				</div>
				<input class="form-control" value="${clo.readcnt}"
				 placeholder="조회수 입력하세요" />
			</div>

			<div class="input-group mb-2">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">내 용</span>
				</div>
				<textarea name="content" rows="10" class="form-control"
					placeholder="내용 입력하세요"></textarea>
			</div>
			<div class="text-right">
				<button type="button" onclick="updateProc()" class="btn btn-success">수정</button>
				<button type="button" onclick="deleteProc()" class="btn btn-danger">삭제</button>
				<button type="button" onclick="replyProc()" class="btn btn-warning">답글</button>
				<button type="button" onclick="goMain()" class="btn btn-info">메인화면</button>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		function updateProc() {
			if (confirm("수정하시겠습니까?")) {
				// 유효성 check
				$("form").attr("action", "${path}/updateClo.do");
				$("form").submit();
			}
		}
		function deleteProc() {
			if (confirm("삭제하시겠습니까?")) {
				$("form").attr("action", "${path}/deleteClo.do");
				$("form").submit();
			}
		}
	
		var proc = "${proc}"
		if (proc == "upt") {
			if (confirm("수정성공!\n조회리스트화면으로 이동하시겠습니까?")) {
				location.href = "${path}/cloList.do";
			}
		}
		if (proc == "del") {
			alert("삭제성공\n조회 리스트화면으로 이동!")
			location.href = "${path}/cloList.do";
		}

		function goMain() {
			location.href = "${path}/cloList.do";
		}
	</script>
</body>
</html>