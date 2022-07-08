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
<title>셀프 진단평가</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>
 <style>
@charset "UTF-8";
* {
  box-sizing: border-box;
}

input[type=text],input[type=password], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
   background-color: #a4ed9b;
}

input[type=button],input[type=submit] {
  
  padding: 12px 20px;
 
  border-radius: 4px;
  cursor: pointer;
  
}

input[type=button]:hover,input[type=submit]:hover {
  background-color: #368AFF;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
   width: 60%;
  margin: auto;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 60%;
  margin: auto;
}
table td, #customers th {
  text-align : center;
  border: 1px solid #ddd;
  padding: 8px;
}
table tr:nth-child(even){background-color: #f2f2f2;}
table tr:hover {background-color:#B2EBF4;}
table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: DodgerBlue;
  color: black;
}
a:link {
  color: white;
  background-color: transparent;
  text-decoration: none;
}
a:visited {
  color: black;
  background-color: transparent;
  text-decoration: none;

}
a:hover {
  color: black;
  background-color: white;
  text-decoration: underline;
}
a:active {
  color: black;
  background-color: white;
  text-decoration: underline;
}
h1{
	color : black;
	font-size : 60px;
	background-image: url("backgroundimage.jpg");
}
h2{
	color : black;   
}
.DodgerBlue-box{
	text-align: center;
	font-size : 20px;
	background : DodgerBlue;
	 height: 40px;  
  	 width: 3%;
 	 left: 1px;
 	 top: 20px;
}
.box {
	text-align: center;
	color : white;
	background : DodgerBlue;
	float: left;
	width: 20%;
 	 padding-top: 50px;
 	 padding-right: 30px;
  padding-bottom: 50px;
 	 padding-left: 30px;
	margin : 100px;

}
.clearfix::after {
  content: "";
  clear: both;
  display: table;
  margin: auto;
}

</style>   
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script>
    
</script>
</head>
<body>
<%-- 

--%>
<h1>셀프 진단 평가</h1>
<H2>스스로 진단하고 평가해요!
자신의 게임성향을 진단하고 게임몰입도를 점검해보세요.
</H2>
<H3>
지난 1년 동안에 대해 생각해 보고, 해당하는 항목을 선택해 주세요.
[도박이란 돈이나 가치있는 소유물을 걸고 결과가 불확실한 사건에 내기를 거는 행위를 뜻합니다.
예를 들면 체육진흥투표권(스포츠토토), 복권, 경마, 카지노 등을 도박이라고 할 수 있습니다.]</H3>

<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="q1">
      1.도박에서 잃어도 크게 상관없는 금액 이상으로 도박을 한 적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q1" value="0">없음 0점</input>
       <input type="radio"  name="q1" value="1">가끔 1점</input>
   		 <input type="radio"  name="q1" value="2">때때로 2점</input>
   		 <input type="radio" name="q1" value="3">거의항상 3점</input>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="q2">
      2. 도박에서 이전과 같은 흥분감을 느끼기 위해 더 많은 돈을 걸어야 했던 적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q2" value="0">없음 0점</input>
       <input type="radio"  name="q2" value="1">가끔 1점</input>
   		 <input type="radio"  name="q2" value="2">때때로 2점</input>
   		 <input type="radio" name="q2" value="3">거의항상 3점</input>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="q3">
      3. 도박으로 잃은 돈을 만회하게 위해 다른 날 다시 도박을 하신 적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q3" value="0">없음 0점</input>
       <input type="radio"  name="q3" value="1">가끔 1점</input>
   		 <input type="radio"  name="q3" value="2">때때로 2점</input>
   		 <input type="radio" name="q3" value="3">거의항상 3점</input>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="q4">
     4. 도박자금을 마련하기 위해 돈을 빌리거나 무엇인가를 판 적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q4" value="0">없음 0점</input>
       <input type="radio"  name="q4" value="1">가끔 1점</input>
   		 <input type="radio"  name="q4" value="2">때때로 2점</input>
   		 <input type="radio" name="q4" value="3">거의항상 3점</input>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="q5">
     5. 자신의 도박행위가 문제가 될 만한 수준이라고 느낀적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q5" value="0">없음 0점</input>
       <input type="radio"  name="q5" value="1">가끔 1점</input>
   		 <input type="radio"  name="q5" value="2">때때로 2점</input>
   		 <input type="radio" name="q5" value="3">거의항상 3점</input>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="q6">
      6. 도박으로 인한 스트레스나 불안 등을 포함한 어떤 건강 상의 문제를 겪은 적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q6" value="0">없음 0점</input>
       <input type="radio"  name="q6" value="1">가끔 1점</input>
   		 <input type="radio"  name="q6" value="2">때때로 2점</input>
   		 <input type="radio" name="q6" value="3">거의항상 3점</input>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="q7">
7. 사실 여부에 상관없이 다른 사람들로부터 도박행위를 비난 받거나 도박 문제가 있다는 얘기를 들은 적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q7" value="0">없음 0점</input>
       <input type="radio"  name="q7" value="1">가끔 1점</input>
   		 <input type="radio"  name="q7" value="2">때때로 2점</input>
   		 <input type="radio" name="q7" value="3">거의항상 3점</input>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="q8">
     8.도박행위로 인해 본인이나 가정에 재정적인 문제가 발생한 적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q8" value="0">없음 0점</input>
       <input type="radio"  name="q8" value="1">가끔 1점</input>
   		 <input type="radio"  name="q8" value="2">때때로 2점</input>
   		 <input type="radio" name="q8" value="3">거의항상 3점</input>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="q9">
      9.자신의 도박하는 방식이나 도박을 해서 발생한 일에 대한 죄책감을 느낀 적이 있습니까?
      </label>
    </div>
    <div class="col-75">
      <input type="radio"  name="q9" value="0">없음 0점</input>
       <input type="radio"  name="q9" value="1">가끔 1점</input>
   		 <input type="radio"  name="q9" value="2">때때로 2점</input>
   		 <input type="radio" name="q9" value="3">거의항상 3점</input>
    </div>
  </div>
  
  <div class="row">
    <input type="button"  name="결과보기" value="결과보기">
  </div>
  </form>



</body>
</html>