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
</script>
<link rel="stylesheet" type="text/css" href="../css/notice.css">
</head>

<body>
			<table >
				<tr>
					<th scope="row">
						<span>구분</span>
					</th>
					<td id="checkBox">
						<span class="checkBox">
							<input type="checkbox" id="selectAlert"><label for="selectAlert">알림</label>
						</span>
						<span class="checkBox">
							<input type="checkbox" id="selectProto"><label for="selectProto">프로토</label>
						</span>
						<span class="checkBox">
							<input type="checkbox" id="selectToto"><label for="selectToto">토토</label>
						</span>
					</td>
				</tr>
				<tr>
					<th scope="row">
						<label for="txtSearch"><span>검색어</span></label><!-- 웹접근성_검색어입력 input박스와 id,label for값 통일해서 연결 -->
					</th>
					<td>
						<!-- selectBox -->
						<span class="selectBox w105">
							<span class="selectBox w105">
								<select class="selectMenu" id="selectSerchType" title="공지사항 검색어 조건 선택">
									<option value="all">제목+내용</option>
									<option value="title">제목</option>
									<option value="content">내용</option>
								</select><button type="button" role="combobox" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" title="공지사항 검색어 조건 선택" aria-labelledby="ui-id-1" tabindex="0" style="display: none;"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span role="option" class="ui-selectmenu-text">제목+내용</span></button>
							</span>
						</span>
						<!-- // selectBox -->
						<!-- inputBox -->
						<span class="inputBox w500">
							<input type="text" id="txtSearch" title="검색어 입력" placeholder="검색어를 입력해주세요" onkeypress="javascript:searchList(event);">
						</span>
						<!-- // inputBox -->
					</td>
				</tr>
				</table>
			<table class="tbl_type">
			<colgroup>
			<col width="30"><col width="80"><col>
			<col width="115"><col width="85"><col width="60">
			</colgroup>
			<thead>
				<tr>
					<th scope="col"><span>번호</span></th>
					<th scope="col"><span>구분</span></th>
					<th scope="col"><span>제목</span></th>
					<th scope="col"><span>등록일</span></th>
				</tr>	
			</thead>
			<tr><td>13590</td><td>토토</td><td class="tal">
			[적중자 현황 안내] 야구토토 승1패 28회차 2등 적중자 관련</td><td>2022.07.13</td></tr>
			
			<tr><td>13589</td><td>프로토</td><td class="tal"><a href=" " class="noticeCon">
			[게임일정 안내]프로토 승부식 57회차 대상경기 등록관련</a></td><td>2022.07.13</td></tr>
			
			<tr><td>13588</td><td>토토</td><td class="tal"><a href=" " class="noticeCon">
			[안내] 골프스페셜 21회차 발매개시 안내</a></td><td>2022.07.12</td></tr>
			
			<tr><td>13587</td><td>토토</td><td class="tal"><a href=" " class="noticeCon">
			[적중자 현황 안내] 축구토토 승무패 35회차 2등 적중자 관련</a></td><td>2022.07.10</td></tr>

			<tr><td>13586</td><td>토토</td><td class="tal"><a href=" " class="noticeCon">
			[안내] 야구토토 승1패 차회차 이월 규정 적용안내</a></td><td>2022.07.09</td></tr>
			
			<tr><td>13585</td><td>토토</td><td class="tal"><a href=" " class="noticeCon">
			[적중자 현황 안내] 야구토토 승1패 27회차 2등 적중자 관련</a></td><td>2022.07.09</td></tr>
			
			<tr><td>13584</td><td>프로토</td><td class="tal"><a href=" " class="noticeCon">
			[안내] NPB경기취소 안내_7월9일(토)</a></td><td>2022.07.09</td></tr>
			
			<tr><td>13583</td><td>프로토</td><td class="tal"><a href=" " class="noticeCon">
			[게임일정 안내] 프로토 기록식 29회차 대상경기 등록관련</a></td><td>2022.07.09</td></tr>
			
			<tr><td>13582</td><td>프로토</td><td class="tal"><a href=" " class="noticeCon">
			[게임일정 안내] 프로토 승부식 56회차 대상경기 등록관련</a></td><td>2022.07.09</td></tr>
			</table>

</body>
</html>