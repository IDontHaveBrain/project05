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
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style>
td {
	text-align: center;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
<%-- 
      
      --%>
	});
</script>
<link rel="stylesheet" type="text/css" href="../css/notice.css">
</head>

<body>



	<div id="content">
		<!-- jquery load envent 를 사용하여  $('#content').load(url[,data][,complete]) 재로딩 -->
		<!-- jQuery.fn.load = function( url, params, callback ) { -->
		<!-- contents -->
		<div class="contents">
			<!-- locationArea -->
			<div class="locationArea">
				<ul class="">
					<li>홈</li>
					<li>고객센터</li>
					<li class="lot" title="현재페이지">FAQ</li>
				</ul>
			</div>
			<!--// locationArea -->
			<!-- contTitle -->
			<div class="contTitle">
				<h3>FAQ</h3>
				<p class="titSub">회원님께서 자주 문의하는 내용들을 모아두었습니다.</p>
			</div>
			<!-- // contTitle -->

			<!-- faqSearchWrap -->
			<div class="faqSearchWrap">
				<div class="inputSch">
					<input type="text" id="txtSearch" title="검색어를 입력해 주세요."
						onkeypress="javascript:searchList(event);"
						placeholder="검색어를 입력해 주세요."> <input id="btnSearch"
						type="button" title="조회" value="조회">
				</div>
				<div class="schWordBox" id="bestSearch">
					<span class="wordTitle">베스트검색어</span> <span class="wordSnap"><a
						href="#">환급시기</a></span> <span class="wordSnap"><a href="#">우천</a></span>
					<span class="wordSnap"><a href="#">경기가 취소</a></span>
				</div>
			</div>
			<!--//  faqSearchWrap -->
			<!-- TAB -->
			<div
				class="tabList base flex mt40 ui-tabs ui-corner-all ui-widget ui-widget-content">
				<ul id="tablist" role="tablist"
					class="ui-tabs-nav ui-corner-all ui-helper-reset ui-helper-clearfix ui-widget-header">
					<li data-cate=""
						class="ui-tabs-tab ui-corner-top ui-state-default ui-tab ui-tabs-active ui-state-active"
						aria-controls="tabs-1" aria-labelledby="ui-id-1"><a
						href="#tabs-1" title="선택됨" class="ui-tabs-anchor" id="ui-id-1"
						tabindex="0">전체<em id="allDisplayCount">(124)</em></a></li>
					<li data-cate="100"
						class="ui-tabs-tab ui-corner-top ui-state-default ui-tab"
						aria-controls="tabs-1" aria-labelledby="ui-id-2"><a
						href="#tabs-1" class="ui-tabs-anchor" id="ui-id-2" tabindex="0">회원<em
							id="memberDisplayCount">(9)</em></a></li>
					<li data-cate="700"
						class="ui-tabs-tab ui-corner-top ui-state-default ui-tab"
						aria-controls="tabs-1" aria-labelledby="ui-id-3"><a
						href="#tabs-1" class="ui-tabs-anchor" id="ui-id-3" tabindex="0">한경기구매<em
							id="singleDisplayCount">(6)</em></a></li>
					<li data-cate="200"
						class="ui-tabs-tab ui-corner-top ui-state-default ui-tab"
						aria-controls="tabs-1" aria-labelledby="ui-id-4"><a
						href="#tabs-1" class="ui-tabs-anchor" id="ui-id-4" tabindex="0">경기/게임<em
							id="gameDisplayCount">(42)</em></a></li>
					<li data-cate="300"
						class="ui-tabs-tab ui-corner-top ui-state-default ui-tab"
						aria-controls="tabs-1" aria-labelledby="ui-id-5"><a
						href="#tabs-1" class="ui-tabs-anchor" id="ui-id-5" tabindex="0">결제/구매<em
							id="payDisplayCount">(29)</em></a></li>
					<li data-cate="400"
						class="ui-tabs-tab ui-corner-top ui-state-default ui-tab"
						aria-controls="tabs-1" aria-labelledby="ui-id-6"><a
						href="#tabs-1" class="ui-tabs-anchor" id="ui-id-6" tabindex="0">적중/환급<em
							id="hitDisplayCount">(8)</em></a></li>
					<li data-cate="500"
						class="ui-tabs-tab ui-corner-top ui-state-default ui-tab"
						aria-controls="tabs-1" aria-labelledby="ui-id-7"><a
						href="#tabs-1" class="ui-tabs-anchor" id="ui-id-7" tabindex="0">서비스<em
							id="seviceDisplayCount">(32)</em></a></li>
					<li data-cate="600"
						class="ui-tabs-tab ui-corner-top ui-state-default ui-tab"
						aria-controls="tabs-1" aria-labelledby="ui-id-8"><a
						href="#tabs-1" class="ui-tabs-anchor" id="ui-id-8" tabindex="0">불법
							도박<em id="clusDisplayCount">(4)</em>
					</a></li>
				</ul>
				<!-- tabs-1 -->
				<div id="tabs-1" aria-labelledby="ui-id-8" role="tabpanel"
					class="ui-tabs-panel ui-corner-bottom ui-widget-content">
					<div class="cell">
						<!-- selectDiv -->
						<div class="selectDiv" style="width: 122px;">
							<button id="selectSort">
								<!-- 웹접근성_button태그 구조로 변경 -->
								<span class="blind">조회 선택 :</span> <span class="seltxt">최신등록일순</span>
							</button>
							<div class="list">
								<ul id="selectSortT">
									<li data-cate="selectDesc"><a href="#none" title="선택됨">최신등록일순</a></li>
									<li data-cate="selectAsc"><a href="#none">과거등록일순</a></li>
									<!-- <li data-cate="selectCntM"><a href="#none" >조회많은순</a></li>
		                    <li data-cate="selectCntL"><a href="#none" >조회적은순</a></li> -->
								</ul>
							</div>
						</div>
						<!-- // selectDiv -->
						<!-- selectDiv -->
						<div class="selectDiv" style="width: 88px;">
							<button id="selectCnt">
								<!-- 웹접근성_button태그 구조로 변경 -->
								<span class="blind">조회 선택 :</span> <span class="seltxt">10개씩</span>
							</button>
							<div class="list">
								<ul id="selectCntT">
									<li data-cate="10"><a href="#none">10개씩</a></li>
									<li data-cate="20"><a href="#none">20개씩</a></li>
									<li data-cate="30"><a href="#none">30개씩</a></li>
									<li data-cate="60"><a href="#none">60개씩</a></li>
								</ul>
							</div>
						</div>
						<!-- // selectDiv -->
					</div>
				</div>
				<!--// setBar -->
				<!-- faqListWrap -->
				<div class="faqListWrap">
					<dl id="lv_faq">
						<dt data-faqsn="2214">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>프로토 승부식 한경기(싱글)구매 방식을 도입하는 목적은 무엇인가요?</a>
						</dt>
						<dd>
							<p>
								<span style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">체육진흥투표권(스포츠토토) 사업은 해외시장이나 불법스포츠도박 대비 상품 경쟁력이
									낮아 사업의 성장이 정체되고, 불법시장의 지속적 확산에 효과적으로 대응하지 못하는 상황에 직면하고 있습니다.</span><br
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"=""> <br style="font-family:" malgun=""
									gothic";="" font-size:="" medium;"=""> <span
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">이를 해결하기 위해서는 불법 상품에 대응할 수 있는 경쟁력을 지닌 상품으로
									개선되어야 하며, 이는 그간 고객들이 지속적으로 요구해 온 사항이기도 합니다.</span><br
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"=""> <br style="font-family:" malgun=""
									gothic";="" font-size:="" medium;"=""> <span
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">이에 한경기구매 방식을 도입함으로써, 고객이 원하는 특정경기만을 구매할 수 있는
									최소한의 선택권을 보장하여 고객 만족도를 향상시키는 한편, 합법사업 이용자가 불법스포츠도박으로 유출되는 것을
									억제하는 등 사업 건전성을 한층 제고할 수 있을 것으로 기대합니다.</span>
							</p>
						</dd>
						<dt data-faqsn="2213">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>프로토 승부식 한경기(싱글)구매 방식이란?</a>
						</dt>
						<dd>
							<p>
								<span style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">대상 경기 중 사전</span><span style="font-family:"
									malgun="" gothic";="" font-size:="" medium;"="">에 지정된
									경기에 한해 한경기구매가 가능한 방식입니다. (기존 프로토 승부식은 2~10개 경기 조합 구매만 가능)</span>
							</p>
						</dd>
						<dt data-faqsn="2212">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>프로토 승부식 한경기(싱글)구매는 모든 경기를 대상으로 하나요?</a>
						</dt>
						<dd>
							<p>
								<span style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">아닙니다.</span><br style="font-family:" malgun=""
									gothic";="" font-size:="" medium;"=""> <br
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"=""> <span style="font-family:" malgun=""
									gothic";="" font-size:="" medium;"="">국민체육진흥법 시행령
									제33조(환급금) 2항에 의거하여 고정배당률식 체육진흥투표권(프로토)의 연간 환급률은 50~70%를 준수해야
									합니다.</span><br style="font-family:" malgun="" gothic";=""
									font-size:="" medium;"=""> <br style="font-family:"
									malgun="" gothic";="" font-size:="" medium;"=""> <span
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">따라서 한경기(싱글)구매 도입 초기에는 일반 승(무)패 유형을 위주로 하여 1일
									1~2개 (국내 경기 우선 선정)를 대상으로 발매되고 이후 점차 확대될 예정이나 한경기(싱글)구매의 발매 비중,
									연간 환급률을 고려하여 한경기(싱글)구매 대상경기 수는 변동될 수 있습니다.</span>
							</p>
						</dd>
						<dt data-faqsn="2211">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>한경기(싱글)구매 대상 경기도 다른 경기와 조합하여 구매할 수 있나요?</a>
						</dt>
						<dd>
							<p>
								<span style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">한경기(싱글)구매</span><span style="font-family:"
									malgun="" gothic";="" font-size:="" medium;"="">가 가능한</span><span
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">&nbsp;경기는 한경기 뿐만 아니라 해당 경기를 포함한 2~10 경기를
									조합하여 구매할 수 있습니다.</span>
							</p>
						</dd>
						<dt data-faqsn="2210">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>한경기(싱글)구매의 단위 투표 금액은 왜 1,000원 인가요?</a>
						</dt>
						<dd>
							<p>
								<span style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">한경기구매의 경우, 배당률이 소수점 둘째자리까지 제시되는 상황에서 100원
									단위로 구매가 이루어지면 적중 시 1원 단위의 환급금이 발생하게 됩니다.</span><br
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"=""> <br style="font-family:" malgun=""
									gothic";="" font-size:="" medium;"=""> <span
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">국민체육진흥법 시행령 제33조(환급금) 4항 '환급금을 지급할 때 그 금액에
									10원 미만의 단수가 있는 경우에는 10원으로 계산한다' 에 의거하여 1원 단위의 환급금 지급이 불가하여
									한경기구매의 경우에는 1,000원 단위의 구매만 가능합니다.</span><br style="font-family:"
									malgun="" gothic";="" font-size:="" medium;"=""> <br
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"=""> <span style="font-family:" malgun=""
									gothic";="" font-size:="" medium;"="">- 예 : 3,000원,
									12,00</span><span style="font-family:" malgun="" gothic";=""
									font-size:="" medium;"="">0원 : 구매 가능 (O) / 10,200원,
									1,500원 : 구매 불가능 (X)</span>
							</p>
						</dd>
						<dt data-faqsn="2209">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>한경기(싱글) 구매와 조합 구매의 배당률은 다른가요?</a>
						</dt>
						<dd>
							<p>
								<span style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">한경기(싱글)구매와 조합 구매는 동일한 배당률로&nbsp;</span><span
									style="font-family:" malgun="" gothic";="" font-size:=""
									medium;"="">발매됩니다.</span>
							</p>
						</dd>
						<dt data-faqsn="2202">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>로그인이 안 돼요.</a>
						</dt>
						<dd>
							<p>■ 익스플로러(IE) 9 이하에서 로그인이 안 되는 경우</p>
							<p>&nbsp;</p>
							<p>인터넷 익스플로러(IE) 9 이하에서는 로그인을 포함한 베트맨 서비스 지원이 원활하지 않습니다.</p>
							<p>최신 웹 브라우저(IE 11, 엣지, 크롬, 사파리 등)로 업그레이드한 뒤 이용해 주시기 바랍니다.</p>
							<p>&nbsp;</p>
							<p>마이크로소프트사가 인터넷 익스플로러(IE) 일부 서비스 지원 중단(2021년 8월 17일부터)을 발표함에
								따라,</p>
							<p>베트맨의 경우 크롬 브라우저에 최적화되어 있습니다.</p>
							<p>&nbsp;</p>
							<p>■ (윈도우 7 또는 8 운영체제) 익스플로러(IE) 10에서 로그인이 안 되는 경우</p>
							<p>1. 익스플로러 [도구] 메뉴의 [인터넷 옵션]을 클릭하세요.</p>
							<p>2. 상단의 메뉴 중 [보안] 탭을 선택하세요.</p>
							<p>3. [사용자 지정 수준]을 클릭하세요.</p>
							<p>
								4. '도메인 간의 데이터 원본 엑세스'를 '사용 안 함'으로 선택합니다.<br>
							</p>
						</dd>
						<dt data-faqsn="2201">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>키보드에 입력한 내용과 다른 값(ababab 또는 121212 또는
								****** 등)이 입력돼요. </a>
						</dt>
						<dd>
							<p>
								키보드 보안 프로그램을 실행하였을 때 아래의 경우 발생될 수 있습니다.<br> <br>1.
								한글과컴퓨터 아래아한글 이용자 PC 경우<br>2. 기계식 키보드 사용 하는 경우<br> <br>아래의
								해별방법을 참고해 주시기 바랍니다.<br> <br>1. MS 기본 IME입력기로 복구<br>
								<strong style="font-size: 12pt;"><a
									style="font-size: 12pt;"
									href="http://w2.kings.co.kr/k/kr/hancom.html" target="new"
									title="새창열림">&gt; <span style="font-size: 12pt;">한컴
											입력기 변경 방법 보기</span></a></strong>
							</p>
							<p>
								<br>2. 기계식 키보드의 N키(무한 동시 입력) 또는 매크로를 비활성화<br> <br>3.
								덱키보드를 사용하는 경우 덱키보드 홈페이지 자료실의 메뉴얼 참조<br> <strong
									style="font-size: 12pt;"><a style="font-size: 12pt;"
									href="http://www.deckkeyboards.co.kr/bbs/view.php?no=8&amp;board_id=bbs0402&amp;category=&amp;pagenum=&amp;search=subject&amp;key_word=&amp;page=20&amp;board_type=board"
									target="new" title="새창열림">&gt; <span
										style="font-size: 12pt;">덱키보드 홈페이지 메뉴얼 보기</span></a></strong>
							</p>
							<p>
								<br>4. 문제 반복 발생 시 원격 지원 필요
							</p>
							<p>&nbsp;</p>
							<p>5. 캐시 초기화</p>
							<p>
								<strong>크롬(chrome) 우측 상단 클릭(점 세개 모양) &gt; 설정 &gt; 개인정보
									및 보안 &gt; 인터넷 사용기록 삭제</strong>
							</p>
							<p>
								<br>□ 기술지원센터 정보 (콜센터)<br> <br>• 연락처 : 1544-1014<br>•
								이메일 : k@kings.co.kr<br>• 웹페이지 : <a
									href="http://www.kings.co.kr/k" title="새창열림" target="new">http://www.kings.co.kr/k</a><br>
							</p>
						</dd>
						<dt data-faqsn="785">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>구입한 투표권을 환불 받을 수 있나요?</a>
						</dt>
						<dd>
							<p>
								한번&nbsp;발매된&nbsp;투표권은&nbsp;취소나&nbsp;환불되지&nbsp;않습니다.<br>다만&nbsp;아래와&nbsp;같은&nbsp;경우에는&nbsp;무효처리&nbsp;후&nbsp;환불이&nbsp;가능합니다.<br>
								<br>1.&nbsp;대상경기가&nbsp;몰수경기,&nbsp;천재지변,&nbsp;기타사유로&nbsp;인해&nbsp;비정상적으로&nbsp;종료된&nbsp;경우&nbsp;해당&nbsp;경기는&nbsp;무효로&nbsp;합니다.<br>
								<br>2.&nbsp;개최된&nbsp;대상경기의&nbsp;최종&nbsp;경기결과가&nbsp;천재지변,&nbsp;기타사유로&nbsp;인해&nbsp;현지시각&nbsp;24시까지&nbsp;확정되지&nbsp;않는&nbsp;경우&nbsp;해당&nbsp;경기를&nbsp;무효로&nbsp;합니다.&nbsp;(단,&nbsp;경기가&nbsp;진행되고&nbsp;있거나&nbsp;현장에서&nbsp;경기재개&nbsp;또는&nbsp;최종결과&nbsp;확정을&nbsp;위한&nbsp;대기&nbsp;시&nbsp;제외)<br>
								<br>3.&nbsp;대상경기&nbsp;관련&nbsp;국가의&nbsp;내정&nbsp;불안,&nbsp;경기규정의&nbsp;변경&nbsp;가능성&nbsp;등을&nbsp;이유로&nbsp;경기의&nbsp;운영&nbsp;안정성이&nbsp;확보되지&nbsp;않는&nbsp;경우&nbsp;해당&nbsp;경기를&nbsp;무효처리&nbsp;할&nbsp;수&nbsp;있습니다.<br>
								<br>4.&nbsp;체육진흥투표권&nbsp;약관&nbsp;제16조(대상경기&nbsp;경기시각&nbsp;변경&nbsp;시&nbsp;유무효&nbsp;규정)에&nbsp;의거&nbsp;하여&nbsp;무효처리&nbsp;할&nbsp;수&nbsp;있습니다.<br>
							</p>
						</dd>
						<dt data-faqsn="784">
							<span class="uiIcon"></span><a href="javascript:;" title="답변펼쳐보기"><span
								class="blind">질문</span>야구경기의 선발투수가 변경되었는데 환불 받을 수 있나요?</a>
						</dt>
						<dd>
							<p>
								선발투수&nbsp;변경은&nbsp;경기무효사유가&nbsp;되지&nbsp;않습니다.&nbsp;<br>
							</p>
						</dd>
					</dl>

					<!-- 데이터 없을때 -->
					<dl style="display: none;" id="noData">
						<div class="nocBox bd">
							<p>조회 결과가 없습니다</p>
						</div>
					</dl>
				</div>
				</div>
				</div>
				</div>
</body>
</html>