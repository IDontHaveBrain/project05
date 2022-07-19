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
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/faq.css">
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
td {
	text-align: center;
}

body {
	text-align: center;
}
p {
text-align: center;
}
/*
.tbl_type,.tbl_type th,.tbl_type td{border:0}
.tbl_type a{color:#383838;text-decoration:none}
.tbl_type{width:100%;border-bottom:1px solid #999;color:#666;font-size:12px;table-layout:fixed}
.tbl_type caption,.tbl_type .frm label{display:none}
.tbl_type th{padding:5px 0 4px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:18px;vertical-align:top}
.tbl_type td{padding:8px 0 5px;border-bottom:solid 1px #d2d2d2;text-align:center}
.tbl_type .frm{padding:0;text-align:center}
.tbl_type .frm input{margin:0}
.tbl_type .num,.tbl_type .date,.tbl_type .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
.tbl_type .title{text-align:center}
.tbl_type .title .pic,.tbl_type .title .new{margin:0 0 2px;vertical-align:middle}
.tbl_type tr.reply .title a{padding-left:12px;background:url(img/ic_reply.gif) 0 1px no-repeat}
.tbl_type tr.reply td a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
*/
.table14_5 table {
	width: 100%;
	margin: 15px 0;
	border: 0;
}

.table14_5 th {
	font-weight: bold;
	background-color: #c6c6dd;
	color: #202020
}

.table14_5, .table14_5 th, .table14_5 td {
	font-size: 0.95em;
	text-align: center;
	padding: 4px;
	border-collapse: collapse;
}

.table14_5 th, .table14_5 td {
	border: 1px solid #ffffff;
	border-width: 1px
}

.table14_5 th {
	border: 1px solid #c6c6dd;
	border-width: 1px 0 1px 0
}

.table14_5 td {
	border: 1px solid #eeeeee;
	border-width: 1px 0 1px 0
}

.table14_5 tr {
	border: 1px solid #ffffff;
}

.table14_5 tr:nth-child(odd) {
	background-color: #f7f7f7;
}

.table14_5 tr:nth-child(even) {
	background-color: #ffffff;
}
/* FAQ */
.faq {
	border-bottom: 0px solid #ddd;
	margin: 1em 0;
}

.faq .faqHeader {
	position: relative;
	zoom: 1
}

.faq .faqHeader .showAll {
	position: absolute;
	bottom: 0;
	right: 0;
	border: 0;
	padding: 0;
	overflow: visible;
	background: none;
	cursor: pointer
}

.faq .faqBody {
	margin: 0;
	padding: 0
	text-align: center;
}

.faq .faqBody .article {
	list-style: none
	text-align: center;
}

.faq .q {
	margin:
	text-align: center;
}

.faq .q a {
	display: block;
	text-align: center;
	background: url("faq1_icon_q.png") no-repeat 0 0;
	padding: 0 0 0 35px;
	font-size: 18px;
	color: #5e5e5e;
	font-weight: bold;
	line-height: 27px;
	cursor: pointer;
	margin: 10px 0;
	!
	important
	
}

.faq .q a:hover, .faq .q a:active, .faq .q a:focus {
	
}

.faq .a {
	background: #f8f8f8 url("faq1_icon_a.png") no-repeat 40px 10px;
	padding: 10px 75px 10px 75px;
	font-size: 16px;
	color: #444444;
	line-height: 22px;
	border-top: 1px solid #bdbdbd;
	margin: 5px 0 0 0;
}
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
	<jsp:include page="/project5/topNav.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<div class="jumbotron text-center">
		<h2>FAQ</h2>

	</div>
	<div class="">
		<form id="frm01" class="form" method="post">
			<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
				<input class="form-control mr-sm-2" name="bt_question"
					placeholder="질문입력하세요" value="${param.bt_question}" />
				<!-- controller  public String boardList(Board sch)-->
				<button class="btn btn-info" type="submit">Search</button>
			</nav>
		</form>
	</div>
	<table class="table table-hover table-striped">
	</table>
	
	<span id="faq-title">자주 묻는 질문(FAQ)</span>
	<div class="faq">
		<div class="faqHeader">
			<button type="button" class="showAll">답변 모두 여닫기</button>
		</div>
		<ul class="faqBody">
		<c:forEach var="bd" items="${blist}">
			   <li class="article" id="a2">
            <p class="q"><a href="#a2">${bd.bt_question}</a></p>
            <p class="a">${bd.bt_answer}</p>
        </li>
        </c:forEach>
		</ul>
	</div>
	
	
	
	
<script>
jQuery(function($){
    // Frequently Asked Question
    var article = $('.faq>.faqBody>.article');
    article.addClass('hide');
    article.find('.a').hide();
    article.eq(0).removeClass('hide');
    article.eq(0).find('.a').show();
    $('.faq>.faqBody>.article>.q>a').click(function(){
        var myArticle = $(this).parents('.article:first');
        if(myArticle.hasClass('hide')){
            article.addClass('hide').removeClass('show');
            article.find('.a').slideUp(100);
            myArticle.removeClass('hide').addClass('show');
            myArticle.find('.a').slideDown(100);
        } else {
            myArticle.removeClass('show').addClass('hide');
            myArticle.find('.a').slideUp(100);
        }
        return false;
    });
    $('.faq>.faqHeader>.showAll').click(function(){
        var hidden = $('.faq>.faqBody>.article.hide').length;
        if(hidden > 0){
            article.removeClass('hide').addClass('show');
            article.find('.a').slideDown(100);
        } else {
            article.removeClass('show').addClass('hide');
            article.find('.a').slideUp(100);
        }
    });
});
</script>
</body>
</html>