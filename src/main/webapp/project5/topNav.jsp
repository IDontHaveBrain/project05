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
    <link rel="stylesheet" type="text/css" href="${path}/project5/css/Main_css.css">
    <style>   
        nav {
            width: 100%;
            display: flex;
            justify-content: center;
            position: relative;
        }

        ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        #main-menu > li {
            float: left;
            position: relative;
        }

        #main-menu > li > a {
            font-size: 0.85rem;
            color: rgba(255,255,255,0.85);
            text-align: center;
            text-decoration: none;
            letter-spacing: 0.05em;
            display: block;
            padding: 14px 36px;
            border-right: 1px solid rgba(0,0,0,0.15);
            text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
        }

        #main-menu > li:nth-child(1) > a {
            border-left: 1px solid rgba(0,0,0,0.15);
        }

        #sub-menu {
            position: absolute;
            background: #182952;
            opacity: 0;
            visibility: hidden;
            transition: all 0.15s ease-in;
        }

        #sub-menu > li {
            padding: 16px 28px;
            border-bottom: 1px solid rgba(0,0,0,0.15);
        }

        #sub-menu > li >  a {
            color: rgba(255,255,255,0.6);
            text-decoration: none;
        }
        #main-menu > li:hover #sub-menu {
            opacity: 1;
            visibility: visible;
        }

        #sub-menu > li >  a:hover {
            text-decoration: underline;
        }

        section {
            column-width: 15em;
            background: #dadadf;
            padding: 2em 12em;
        }
    </style>
</head>
<body>
<header> <a href="#home">
</a>
    <div>
        <img src="${path}/project5/img/logo.png"  width="80" height="40"
             style="float:left; margin-top:50px; margin-left:50px;"/>
    </div>
    <nav role="navigation">
        <ul id="main-menu">
            <li><a href="#">게임구매</a>
                <ul id="sub-menu">
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
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
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                </ul></li>

            <li><a href="#">로그인/회원가입</a>
                <ul id="sub-menu">
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                </ul></li>

            <li><a href="#">마이페이지</a>
                <ul id="sub-menu">
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                    <li><a href="#" aria-label="subemnu">submenu</a></li>
                </ul></li>
        </ul>
    </nav>
</header>

</body>
</html>
