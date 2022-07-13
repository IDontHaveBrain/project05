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
    <title>홀짝게임</title>
    <jsp:include page="/project5/topNav.jsp"></jsp:include>
</head>
<body>
<br>
<br>
<br>
<h1>홀짝게임</h1>
<form action="oegameResult.do">
    <input type="hidden" id="choice" name="choice"/>
    보유 포인트 <input type="text" id="curPoint" value="${curPoint}" readonly/><br>
    *배팅할 포인트 <input type="number" value="0" name="setPoint" onchange="changePoint(this);"
                   oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /><br>
    남은 포인트 <input type="text" id="leftPoint" value="${curPoint}" readonly/><br>
    배당률 <input type="text" value="${odds}" readonly/><br>
    획득 예정 포인트 <input type="text" id="getPoint" value="0" readonly/><br>
    정답시 총 포인트 <input type="text" id="resultPoint" value="${curPoint}" readonly/><br>

    <input type="button" value="홀수!" onclick="document.querySelector('#choice').value='홀'; alert('홀수!');"/>
    <input type="button" value="짝수!" onclick="document.querySelector('#choice').value='짝'; alert('짝수!');"/><br>

    <input type="submit" value="배팅!">
</form>
</body>
<script>
    function changePoint(obj){
        //alert(document.querySelector('#choice').value);
        if(obj.value < 0 || obj.value > ${curPoint}){
            alert("배팅포인트는 0이상, 보유포인트(${curPoint}) 이하만 입력 가능합니다.");
            obj.value = 0;
            return;
        }
        document.querySelector("#leftPoint").value=${curPoint}-obj.value;
        document.querySelector("#getPoint").value=Math.floor(obj.value*${odds});
        document.querySelector("#resultPoint").value=Math.floor((${curPoint}-obj.value)+(obj.value*${odds}));
    }
</script>
</html>