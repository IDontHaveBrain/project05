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
		<form id="frm01" action="${path}/calInsert.do" class="form"
			method="post">
			<div class="input-group mb-2 ">
				<div class="input-group-prepend ">
					<span class="text-center input-group-text ">글번호</span>
				</div>
				<input name="no" class="form-control" value="${cal.no}"
					placeholder="글번호 입력하세요" />

				<div class="input-group-prepend">
					<span class="text-center input-group-text">일시</span>
				</div>
				<input name="ctime" class="form-control"
					value="${cal.ctime}" placeholder="일시 입력하세요" />
			</div>

			<div class="input-group mb-2">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">팀</span>
				</div>
				<input name="team" class="form-control"
					value="${cal.team}" placeholder="팀 입력하세요" />

				<div class="input-group-prepend">
					<span class="text-center input-group-text">장소</span>
				</div>
				<input name="place" class="form-control"
					value="${cal.place}" placeholder="장소 입력하세요" />
			</div>
			<div class="input-group mb-2">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">조회수</span>
				</div>
				<input class="form-control" value="${cal.readcnt}"
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
				$("form").attr("action", "${path}/updateCal.do");
				$("form").submit();
			}
		}
		function deleteProc() {
			if (confirm("삭제하시겠습니까?")) {
				$("form").attr("action", "${path}/deleteCal.do");
				$("form").submit();
			}
		}
	
		var proc = "${proc}"
		if (proc == "upt") {
			if (confirm("수정성공!\n조회리스트화면으로 이동하시겠습니까?")) {
				location.href = "${path}/calList.do";
			}
		}
		if (proc == "del") {
			alert("삭제성공\n조회 리스트화면으로 이동!")
			location.href = "${path}/calList.do";
		}

		function goMain() {
			location.href = "${path}/calList.do";
		}
	</script>
</body>
</html>