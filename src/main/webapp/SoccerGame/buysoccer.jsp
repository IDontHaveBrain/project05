<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>

<head>

<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/ui-game.css">
<link rel="stylesheet" type="text/css" href="css/style_game.css">
<link rel="stylesheet" type="text/css" href="css/ui-customer.css">

</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<div class="docWrap">
	
    <div id="div_popup2"></div>

			<article id="container">
				<div class="articleArea">
					
<div id="content">					
	<div class="contents">
	    <!--// locationArea -->
		<div class="contTitle">
			<h3 id="mypgTitle">구매하기</h3>
		</div>
		<!-- lybox -->
        <div class="lybox contTitle">
            <div class="cell">
            	<h4>게임구매정보</h4>
            </div>
            <div class="cell">
            </div>
        </div>
        <!--// lybox -->
        <!-- tblArea -->
		<div class="tblArea ">
			<table class="tbl">
				<caption>게임구매정보</caption>
				<colgroup><col style="width: 49%"><col style="width: 20%"><col style="width: 20%"><col></colgroup>
				<thead>
					<tr>
						<th scope="col"><span>게임명</span></th>
						<th scope="col"><span>보관일시</span></th>
						<th scope="col"><span>금액(원)</span></th>
						<th scope="col"><span>투표지</span></th>
					</tr>
				</thead>
				<tbody id="gamePurchaseRowData"><tr>	<td class="tal"><span class="icoGame small SC mr10">축구</span>축구토토 승무패 36회차</td>	<td>2022.07.14 11:12</td>	<td class="tar">1,000</td>	<td>		<button type="button" class="btnOff" title="투표지 닫기" onclick="openGamePaper(this, '1482437060' ,'G011', '220036');">닫기</button>	</td></tr><tr class="detailArea active" id="paperTr">	<td colspan="4">		<div class="inBox">			<div id="paperArea">


<!-- contTitle : view 테이블정보-->
<div class="contTitle lybox voteInfo noTab" id="contTitleDiv">
	<div class="cell">
		<span class="fwb fs15" id="contTitleSubject"></span>
	</div>
	<div class="cell">
		<!-- viewTableInfo -->
		<div class="viewTableInfo">
			<ul>
				<li class="viewInfoSelect"><span>선택내역</span></li>	
			</ul>
		</div>
		<!-- // viewTableInfo -->
	</div>
</div>
<!-- // contTitle : view 테이블정보 -->

<div class="tblArea noPadd intab" id="grid_victory_div">
	<table class="tbl tblAuto slip" id="grid_victory" style="width: 100%;">
		<caption>구매투표지 목록은(는) 경기, 경기일시/장소, 홈팀 vs 원정팀 예상결과선택 승, 5, 패, 조합수을(를) 나타낸 표</caption>
		<colgroup id="grid_victory_colgroup"><col style="width:55px"><col style="width:120px"><col style="width:*"><col style="width:100px"><col style="width:100px"><col style="width:100px"><col style="width:55px"></colgroup>
		<thead>
			<tr>
				<th scope="col" rowspan="2">경기</th>
				<th scope="col" rowspan="2">경기일시/장소</th>
				<th scope="col" rowspan="2">
					<div class="vsDIv">
						<div>홈팀</div>
						<div><span class="center">vs</span> 원정팀</div>
					</div>
				</th>
				<th scope="colgroup" colspan="3">예상결과선택</th>
				<th scope="col" rowspan="2">조합수</th>
				<th scope="col" rowspan="2" id="plusBtnTheadTh" style="display: none;">정보</th>
			</tr>
			<tr>
				<th scope="col">승</th>
				<th scope="col" class="bdl0" id="btnVoteTypeMidTxt">무</th>
				<th scope="col" class="bdl0">패</th>
			</tr>
		</thead>		
<tbody id="grid_victory_tbody"><tr><td class=""><span class="db">1경기</span></td><td><span class="fs11">22.07.16 (토)<br> 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>가시마사커스타디움</span></div></div></td><td><div class="vsDIv fwb">
<div>가시마</div><div><span class="center fwn">vs</span> 비셀고베</div></div></td><td class="tar"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90 viewSelect"><span>승</span><span class="select">선택내역</span></span></span></div></td><td class="bdl0"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>무</span></span></span></div></td><td class="bdl0 tal"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>패</span></span></span></div></td><td id="rowSlipSelectCnt_0">x1</td><td class="detailAreaTd" style="display:none"><button type="button" class="btnOn" title="1경기  가시마 : 비셀고베 상세정보 열기"><span class="hidden">1경기  가시마 : 비셀고베 상세정보 열기</span></button></td></tr><tr><td class=""><span class="db">2경기</span></td><td><span class="fs11">22.07.16 (토)<br> 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>IAI스타디움니혼다이라</span></div></div></td><td><div class="vsDIv fwb">
<div>시미즈</div><div><span class="center fwn">vs</span> 우라와</div></div></td><td class="tar"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>승</span></span></span></div></td><td class="bdl0"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>무</span></span></span></div></td><td class="bdl0 tal"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90 viewSelect"><span>패</span><span class="select">선택내역</span></span></span></div></td><td id="rowSlipSelectCnt_1">x1</td><td class="detailAreaTd" style="display:none"><button type="button" class="btnOn" title="2경기  시미즈 : 우라와 상세정보 열기"><span class="hidden">2경기  시미즈 : 우라와 상세정보 열기</span></button></td></tr><tr><td class=""><span class="db">3경기</span></td><td><span class="fs11">22.07.16 (토)<br> 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>전주월드컵경기장</span></div></div></td><td><div class="vsDIv fwb">
<div>전북현대</div><div><span class="center fwn">vs</span> 성남FC</div></div></td><td class="tar"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90 viewSelect"><span>승</span><span class="select">선택내역</span></span></span></div></td><td class="bdl0"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>무</span></span></span></div></td><td class="bdl0 tal"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>패</span></span></span></div></td><td id="rowSlipSelectCnt_2">x1</td><td class="detailAreaTd" style="display:none"><button type="button" class="btnOn" title="3경기  전북현대 : 성남FC 상세정보 열기"><span class="hidden">3경기  전북현대 : 성남FC 상세정보 열기</span></button></td></tr><tr><td class=""><span class="db">4경기</span></td><td><span class="fs11">22.07.16 (토)<br> 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>울산문수축구경기장</span></div></div></td><td><div class="vsDIv fwb">
<div>울산현대</div><div><span class="center fwn">vs</span> 수원삼성</div></div></td><td class="tar"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90 viewSelect"><span>승</span><span class="select">선택내역</span></span></span></div></td><td class="bdl0"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>무</span></span></span></div></td><td class="bdl0 tal"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>패</span></span></span></div></td><td id="rowSlipSelectCnt_3">x1</td><td class="detailAreaTd" style="display:none"><button type="button" class="btnOn" title="4경기  울산현대 : 수원삼성 상세정보 열기"><span class="hidden">4경기  울산현대 : 수원삼성 상세정보 열기</span></button></td></tr><tr><td class=""><span class="db">5경기</span></td><td><span class="fs11">22.07.16 (토)<br> 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>김천종합운동장</span></div></div></td><td><div class="vsDIv fwb">
<div>김천상무</div><div><span class="center fwn">vs</span> 인천유나</div></div></td><td class="tar"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>승</span></span></span></div></td><td class="bdl0"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90 viewSelect"><span>무</span><span class="select">선택내역</span></span></span></div></td><td class="bdl0 tal"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>패</span></span></span></div></td><td id="rowSlipSelectCnt_4">x1</td><td class="detailAreaTd" style="display:none"><button type="button" class="btnOn" title="5경기  김천상무 : 인천유나 상세정보 열기"><span class="hidden">5경기  김천상무 : 인천유나 상세정보 열기</span></button></td></tr><tr><td class=""><span class="db">6경기</span></td><td><span class="fs11">22.07.16 (토)<br> 19:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>도요타스타디움</span></div></div></td><td><div class="vsDIv fwb">
<div>나고야</div><div><span class="center fwn">vs</span> 가와사키</div></div></td><td class="tar"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>승</span></span></span></div></td><td class="bdl0"><div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90"><span>무</span></span></span></div></td><td class="bdl0 tal">
<div class="formBox viewArea chek2"><span class="btnChkList v7"><span class="btnChk w90 viewSelect"><span>패</span>
<span class="select">선택내역</span></span></span></div></td><td id="rowSlipSelectCnt_5">x1</td>
<td class="detailAreaTd" style="display:none"><button type="button" class="btnOn" title="6경기  나고야 : 가와사키 상세정보 열기">
<span class="hidden">6경기  나고야 : 가와사키 상세정보 열기</span></button></td></tr>

	<tfoot>
			<tr>
				<td colspan="6">전체조합수</td>
				<td id="tdTotalSlipSelectCnt">1</td>
				<td style="display: none;"></td>
			</tr>
		</tfoot>
	</table>
</div>
	
<!-- tblArea : view하단 테이블 -->
<div class="tblArea intab mt20 viewTotalTbl" id="winrstViewTotalTblDiv" style="">
	
		<table class="tbl">
			<caption>개별투표금액, 조합수, 적중결과을(를) 나타낸 표</caption>
				<colgroup>
					<col>
					<col>
					
				</colgroup>
				<thead>
					<tr>
						<th scope="col">개별투표금액</th>
						<th scope="col">조합수</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="tar" id="winrstBuyAmt">1,000원</td>
						<td class="tar" id="winrstTotCaseCnt">1</td>
						
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2" id="winrstTotBuyInfo"><strong class="fc222 mr50">총투표금액</strong><strong class="fcRed fs16 mr5">1,000</strong>원 = 1,000 X 1</td>
					</tr>
				</tfoot>
		</table>
	
	
</div>


	</div>
		
		</div>
</div>		
</div>	</td></tr></tbody>
			</table>


		</div>
		<!-- //tblArea -->

		<div class="mt20 payInfo" id="betMoneyUseDiv" style="display:none;">
			
		</div>

		<!-- lybox -->
        <div class="lybox contTitle">
            <div class="cell">
            	<h4>결제방법 선택</h4>
            </div>
            <div class="cell">
            </div>
        </div>

        <!--// lybox -->
        <div class="lineBox bgGray payWay">
        	<ul>
        		<li class="pr pb20 pt5">
	        		<span class="radioBox" onclick="changePayType(this,'예치금');">
						<input type="radio" name="payWay" checked="checked" id="checkDsmn"><label for="checkDsmn">예치금</label>
					</span>
					<div class="dib betBlc pa">
	            		<strong class="fwn">보유 :</strong>
	            		<span class="dib w100 tar" id="dsmnTotal"><em>0</em>원</span>
	            	</div>
	            	<button class="btn btnS blue fr" id="chargeDsmnBtn">충전하기</button>
        		</li>
        	
        	
        	</ul>
        </div>

	</div>


	
					</div>
<div id="asideRight">
						
<div class="asideGame box">
	<div class="asideGameCont">
		<h2>결제정보</h2>
		<div class="totalBox">
			<ul>
				<li>
					<strong>결제방법</strong>
					<span class="text" id="payType">예치금</span>
				</li>
				<li>
					<strong>총투표금액</strong>
					<em class="bold" id="totalPurchaseAmt">1,000</em> <span class="text">원</span>
				</li>

				<li>
					<strong>게임별 벳머니</strong>
					<em class="none" id="totalGameBetMoney">0</em> <span class="text">원</span>
				</li>
				<li class="totals">
					<strong>결제금액</strong>
					<em id="rightPayAmountFld">1,000</em> <span class="text">원</span>
				</li>
			</ul>
		</div>
		
	</div>

	<div class="btnArea">
		<input type="button" class="btn btnBB gray" value="취소" onclick=" location='soccer01.jsp'"/>
		<input type="button" class="btn btnBB red" value="결제"  onclick="location.href='../project5/Main.jsp';"/>
		


		
	</div>
</div>

</div>
</div>
	<footer>
		<div id="footer" class="footer">
			<!-- footer content --> 
			<div class="siteArea">
				<div class="siteBox">
					
					<div class="siteRight">
						<div class="btnSite">
			
							<div class="siteList">
							
							</div>
						</div>
					
					</div>
				</div>
			</div>
		
			<!-- // footer content --> 
		</div>
	</footer>
		</div>


 </body>
 </html>