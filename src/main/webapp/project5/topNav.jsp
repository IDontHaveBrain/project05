<%--
  Created by IntelliJ IDEA.
  User: skawn
  Date: 2022-07-11
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>

    <style>
        header{
            background-color: #646987;
        }
    </style>
 <link rel="stylesheet" type="text/css" href="${path}/project5/css/topup.css">

    <%
        String logout = request.getParameter("logout");
        if(logout != null && logout.equals("Y"))
            session.invalidate();
    %>
</head>
<body>
<header> <a href="#home">
</a>
    <div OnClick="location.href='${path}/project5/Main.jsp'">
        <img src="${path}/project5/img/logo.png"  width="80" height="40"
             style="float:left; margin-top:15px; margin-left:50px;"/>
    </div>
    <nav role="navigation">
        <ul id="main-menu">
            <li><a href="#">게임구매</a>
                <ul id="sub-menu">
                	<li><a href="${path}/SoccerGame/soccer01.jsp" aria-label="subemnu">승부예측</a></li>
                    <li><a href="${path}/rpsgame.do" aria-label="subemnu">가위바위보 게임</a></li>
                    <li><a href="${path}/rpsgamehistory.do" aria-label="subemnu">가위바위보 게임내역</a></li>
                    <li><a href="${path}/oegame.do" aria-label="subemnu">홀짝게임</a></li>
                    <li><a href="${path}/oegameHistory.do" aria-label="subemnu">홀짝게임 내역</a></li>
                </ul></li>

            <li><a href="#">경기정보</a>
                <ul id="sub-menu">
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                </ul></li>

            <li><a href="#">게시판</a>
                <ul id="sub-menu">
                    <li><a href="${path}/noticeList.do" aria-label="subemnu">공지사항</a></li>
                    <li><a href="${path}/faqList.do" aria-label="subemnu">FAQ</a></li>
                    <li><a href="${path}/cloList.do" aria-label="subemnu">마감게임보기</a></li>
                    <li><a href="${path}/calList.do" aria-label="subemnu">게임일정</a></li>
                </ul></li>
                
                <li><a href="#">건전토토</a>
                <ul id="sub-menu">
                    <li><a href="${path}/SelfCk.do" aria-label="subemnu">셀프 진단평가</a></li>
                    
                </ul></li>
            <c:if test="${id == null}">
            <li><a href="#">로그인/회원가입</a>
                <ul id="sub-menu">
                    <li><a href="${path}/Login2.do" aria-label="subemnu">로그인</a></li>
                    <li><a href="${path}/Insert.do" aria-label="subemnu">회원가입</a></li>
                   
                </ul></li>
            </c:if>
            <c:if test="${id != null}">
            <li><a href="#">마이페이지</a>
                <ul id="sub-menu">
                    <li><a href="${path}/MypointList.do" aria-label="subemnu">포인트 충전</a></li>
                    <li><a href="${path}/OneOneinq.do" aria-label="subemnu">1:1 문의</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                </ul>
            </li>
                <li><a href="#">${id}</a>
                    <ul id="sub-menu">
                        <li><a href="#" aria-label="subemnu"
                               onclick="document.querySelector('#logout').value='Y';
                               document.querySelector('form').submit();">로그아웃</a></li>
                    </ul>
                </li>
            </c:if>
        </ul>
        <form>
            <input type="hidden" id="logout" name="logout" value="">
        </form>
    </nav>
</header>

</body>
</html>
