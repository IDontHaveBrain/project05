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
<c:set var="path" value="${pageContext.request.contextPath }"/>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${path}/project5/css/Main_css.css">

</head>
<body>
<header> <a href="#home">
</a>
    <div>
        <img src="${path}/project5/img/logo.png"  width="80" height="40"
             style="float:left; margin-top:10px; margin-left:50px;"/>
    </div>
    <nav>
        <ul>
            <li><a href="#home">게임구매</a></li>
            <li><a href="Info.jsp">경기정보</a></li>
            <li><a href="Contact.jsp">게시판</a></li>
            <li><a href="http://www.localhost">로그인/회원가입</a></li>
            <li><a href="http://www.localhost/menu/notice.php">마이페이지</a></li>
        </ul>
    </nav>
</header>

</body>
</html>
