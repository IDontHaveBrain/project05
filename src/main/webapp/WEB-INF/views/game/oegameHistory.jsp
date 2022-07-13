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
    <title>홀짝게임 내역</title>
    <jsp:include page="/project5/topNav.jsp"></jsp:include>
</head>
<body>
<br>
<br>
<br>
<table>
    <tr>
        <th>번호</th>
        <th>랜덤값</th>
        <th>홀짝</th>
        <th>승리여부</th>
        <th>이전포인트</th>
        <th>결과포인트</th>
    </tr>
    <c:forEach var="rst" items="${result}" varStatus="sts">
        <tr>
            <td>${sts.index+1}</td>
            <td>${rst.random}</td>
            <td>${rst.choice}</td>
            <c:choose>
                <c:when test="${rst.win == 1}">
                    <td>승리</td>
                </c:when>
                <c:when test="${rst.win == 0}">
                    <td>패배</td>
                </c:when>
            </c:choose>
            <td>${rst.prevpoint}</td>
            <td>${rst.resultpoint}</td>
        </tr>
    </c:forEach>
</table>
</body>
<script>
</script>
</html>