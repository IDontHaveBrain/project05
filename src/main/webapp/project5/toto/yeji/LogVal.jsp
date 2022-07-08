<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<fmt:requestEncoding value="UTF-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라예지 화이팅</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>
    
</style>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script>
    /*
    
    */
    $(document).ready(function(){
       //$("h1").text("시작!");
    });
</script>
</head>
<body>

<%
String id = request.getParameter("id");
if(id == null) id = "";

String webPW = request.getParameter("webPW");
if(webPW==null) webPW="";

WoriBANK_DAO wori = WoriBANK_DAO.getInstance();
int ck = wori.getWoripw(id,webPW);
String logPass="";
if(ck==1){
	session.setAttribute("id",id);
	session.setAttribute("webPW",webPW);
	logPass = "Wori_transfer.jsp"; //수정
}else if(ck==0){
	logPass = "Wori_Login.jsp?logPass=0";
}else{
	logPass = "Wori_Login.jsp?logPass = -1";
}
response.sendRedirect(logPass);

%>
</body>
</html>