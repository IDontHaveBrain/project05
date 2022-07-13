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
    <title>홀짝게임 결과</title>
    <jsp:include page="/project5/topNav.jsp"></jsp:include>
</head>
<body>
<br>
<br>
<br>
<c:choose>
    <c:when test="${rst.win >= 1}">
        <h2>정답!</h2>
    </c:when>
    <c:otherwise>
        <h2>오답!</h2>
    </c:otherwise>
</c:choose>
생성된 랜덤 숫자 : ${rst.random}<br>
당신의 선택 : ${rst.choice}수<br>
포인트 변동량<input type="text" id="cpoint" value="${rst.resultpoint-rst.prevpoint}" readonly/><br>
최종 포인트<input type="text" id="rpoint" value="${rst.resultpoint}" readonly/>
</body>
<script>
</script>
</html>