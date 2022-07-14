/*
cmd창 실행
sqlplus
system/1111
CREATE USER p05 IDENTIFIED BY 1111;
grant dba to p05;
*/
/*
 테이블, 시퀀스 생성문.
 샘플데이터(테이블당 최소 3개 이상씩)
 위에서부터 아래로 순차적으로 실행시 모든 테이블 및 샘플데이터 입력되게 작성
 */

drop table Account;
-- 계정
SELECT * FROM Account;
create table Account (
    idno number primary key,
    id varchar2(50) not null unique,
    pw varchar2(50) not null,
    point number,
    birthdate DATE,
    auth number -- 0 일반사용자, 1 총관리자, 2 ....
);
insert into Account values (1, 'asdasd123', '123123', 50000, to_date('19980101','YYYYMMDD'), 1);
insert into Account values ((select NVL(max(idno),1)+1 from Account), 'asdasd111', '123456', 30000, to_date('19970505','YYYYMMDD'), 1);
select * from Account;

-- 홀짝게임결과
create table OeGameResult (
    oegno number primary key,
    random number,
    choice varchar2(5),
    win number,
    prevpoint number,
    resultpoint number,
    id varchar2(50)
);
select * from OeGameResult;

-- 가위바위보 게임 결과
CREATE TABLE RPSGameResult(
	gameno number PRIMARY KEY,
	id varchar2(50) REFERENCES Account(id),
	com varchar2(5),
	player varchar2(5),
	gameresult number,
	prevpoint number,
	resultpoint number
);

CREATE SEQUENCE RPSgame_seq
	START WITH 1
	MINVALUE 1
	MAXVALUE 999999
	INCREMENT BY 1;

SELECT * FROM rpsgameresult;


CREATE TABLE bet_notice(
bt_no NUMBER,
bt_division varchar(10),
bt_title varchar(500),
bt_date varchar(30));

CREATE TABLE bet_faq(
bt_question varchar(500),
bt_answer varchar(500));

CREATE TABLE bet_inquiry(
bt_type varchar(15),
bt_name varchar(20),
bt_mail varchar(30),
bt_tell varchar(30),
bt_title varchar(50),
bt_content varchar(500));

--notice
INSERT INTO bet_notice values(13588,'토토','[안내] 골프스페셜 21회차 발매개시 안내','2022.07.12');
INSERT INTO bet_notice values(13587,'토토','[적중자 현황 안내] 축구토토 승무패 35회차 2등 적중자 관련','2022.07.10');
INSERT INTO bet_notice values(13586,'토토','[안내] 야구토토 승1패 차회차 이월 규정 적용안내','2022.07.09');
INSERT INTO bet_notice values(13585,'토토','[안내] NPB경기취소 안내_7월9일(토)','2022.07.09');
INSERT INTO bet_notice values(13584,'프로토','[게임일정 안내] 프로토 기록식 29회차 대상경기 등록관련','2022.07.09');
INSERT INTO bet_notice values(13583,'프로토','[게임일정 안내] 프로토 기록식 29회차 대상경기 등록관련','2022.07.09');
INSERT INTO bet_notice values(13582,'프로토','[게임일정 안내] 프로토 승부식 56회차 대상경기 등록관련','2022.07.09');
INSERT INTO bet_notice values(13581,'알림','[게임일정 안내] 7월 게임일정 등록 관련 안내','2022.07.08');
INSERT INTO bet_notice values(13580,'토토','[적중자 현황 안내] 축구토토 승무패 34회차 1등 적중자 관련','2022.07.06');

INSERT INTO bet_notice values(13579,'토토','[적중자 현황 안내] 야구토토 승1패 26회차 2등 적중자 관련','2022.07.06');
INSERT INTO bet_notice values(13578,'프로토','[게임일정 안내] 프로토 승부식 55회차 대상경기 등록관련','2022.07.06');
INSERT INTO bet_notice values(13577,'프로토','프로토_기록식_2022년도_28회차_A게임_환불적중결과','2022.07.05');
INSERT INTO bet_notice values(13576,'토토','[안내]NPB, KBO경기취소 안내_7월5일(화)','2022.07.05');
INSERT INTO bet_notice values(13575,'토토','[안내] 골프스페셜 20회차 발매개시 안내','2022.07.05');
INSERT INTO bet_notice values(13574,'프로토','[안내] 7월 6일 J리그 (가와사키프론탈레:사간도스) 대상경기 연기에 따른 안내','2022.07.05');
INSERT INTO bet_notice values(13573,'프로토','[안내] FIBA남자농구월드컵예선 세르비아_남자 : 벨기에_남자 경기 취소','2022.07.04');
INSERT INTO bet_notice values(13572,'토토','[적중자 현황 안내] 축구토토 승무패 33회차 1등 적중자 관련','2022.07.03');
INSERT INTO bet_notice values(13571,'토토','[적중자 현황 안내] 야구토토 승1패 25회차 3등 적중자 관련','2022.07.02');
INSERT INTO bet_notice values(13570,'프로토','[게임일정 안내] 프로토 기록식 28회차 대상경기 등록관련','2022.07.02');
INSERT INTO bet_notice values(13569,'프로토','[게임일정 안내] 프로토 승부식 54회차 대상경기 등록관련','2022.07.02');

INSERT INTO bet_notice values(13568,'토토','[안내] 골프스페셜 19회차 5, 7명 유형 이월금 관련 안내','2022.07.01');
INSERT INTO bet_notice values(13567,'토토','[안내]KBO경기취소 안내_7월1일(금)','2022.07.01');
INSERT INTO bet_notice values(13566,'알림','[게임일정 안내] 7월 게임일정 등록 관련 안내','2022.07.01');
INSERT INTO bet_notice values(13565,'알림','[안내]KBO경기취소 안내_6월30일(목)','2022.06.30');
INSERT INTO bet_notice values(13564,'프로토','프로토_기록식_2022년도_27회차_B게임_환불적중결과','2022.03.29');
INSERT INTO bet_notice values(13563,'알림','[안내]KBO경기 취소 안내_6월29일(수)','2022.06.29');
INSERT INTO bet_notice values(13562,'토토','[적중자 현황 안내] 야구토토 승1패 24회차 2등 적중자 관련','2022.06.29');
INSERT INTO bet_notice values(13561,'프로토','[게임일정 안내] 프로토 승부식 53회차 대상경기 등록관련','2022.06.29');
INSERT INTO bet_notice values(13560,'프로토','프로토_기록식_2022년도_27회차_A게임_환불적중결과','2022.06.28');

INSERT INTO bet_notice values(13555,'토토','[적중자 현황 안내] 야구토토 승1패 23회차 3등 적중자 관련','2022.06.25');
INSERT INTO bet_notice values(13554,'프로토','[게임일정 안내] 프로토 기록식 27회차 대상경기 등록관련','2022.06.25');
INSERT INTO bet_notice values(13553,'프로토','[게임일정 안내] 프로토 승부식 52회차 대상경기 등록관련','2022.06.25');
INSERT INTO bet_notice values(13552,'알림','[게임일정 안내]6월 게임일정 등록 관련 안내','2022.06.24');
INSERT INTO bet_notice values(13551,'알림','베트맨 개인정보처리방침 개정에 따른 사전 안내','2022.06.24');
INSERT INTO bet_notice values(13550,'알림','[안내]KBO경기 취소 안내_6월23일(목)','2022.06.06.23');
INSERT INTO bet_notice values(13549,'알림','[안내]가상계좌 입금 지연 안내','2022.06.22');
INSERT INTO bet_notice values(13548,'토토','[적중자 현황 안내] 야구토토 승1패 22회차 2등 적중자 관련','2022.06.22');
INSERT INTO bet_notice values(13547,'프로토','[게임일정 안내] 프로토 승부식 51회차 대상경기 등록관련','2022.06.22');
INSERT INTO bet_notice values(13546,'토토','[안내] 골프스페셜 18회차 발매개시 안내','2022.06.21');
INSERT INTO bet_notice values(13545,'토토','[적중자 현황 안내] 축구토토 승무패 31회차 1등 적중자 관련','2022.06.19');



--bet_faq
INSERT INTO bet_faq values('프로토 승부식 한경기(싱글)구매 방식을 도입하는 목적은 무엇인가요?','체육진흥투표권(스포츠토토) 사업은 해외시장이나 불법스포츠도박 대비 상품 경쟁력이 낮아 사업의 성장이 정체되고, 불법시장의 지속적 확산에 효과적으로 대응하지 못하는 상황에 직면하고 있습니다.');
INSERT INTO bet_faq values('프로토 승부식 한경기(싱글)구매는 모든 경기를 대상으로 하나요?','에 지정된 경기에 한해 한경기구매가 가능한 방식입니다. (기존 프로토 승부식은 2~10개 경기 조합 구매만 가능)');
INSERT INTO bet_faq values('프로토 승부식 한경기(싱글)구매는 모든 경기를 대상으로 하나요?','국민체육진흥법 시행령 제33조(환급금) 2항에 의거하여 고정배당률식 체육진흥투표권(프로토)의 연간 환급률은 50~70%를 준수해야 합니다.');
INSERT INTO bet_faq values('한경기(싱글)구매 대상 경기도 다른 경기와 조합하여 구매할 수 있나요?',' 경기는 한경기 뿐만 아니라 해당 경기를 포함한 2~10 경기를 조합하여 구매할 수 있습니다.');
INSERT INTO bet_faq values('한경기(싱글)구매의 단위 투표 금액은 왜 1,000원 인가요?','한경기구매의 경우, 배당률이 소수점 둘째자리까지 제시되는 상황에서 100원 단위로 구매가 이루어지면 적중 시 1원 단위의 환급금이 발생하게 됩니다.');
INSERT INTO bet_faq values('한경기(싱글) 구매와 조합 구매의 배당률은 다른가요?','한경기(싱글)구매와 조합 구매는 동일한 배당률로 발매됩니다');
INSERT INTO bet_faq values('로그인이 안 돼요.','인터넷 익스플로러(IE) 9 이하에서는 로그인을 포함한 베트맨 서비스 지원이 원활하지 않습니다.');
INSERT INTO bet_faq values('키보드에 입력한 내용과 다른 값(ababab 또는 121212 또는 ****** 등)이 입력돼요. ','키보드 보안 프로그램을 실행하였을 때 아래의 경우 발생될 수 있습니다.');

INSERT INTO bet_faq values('구입한 투표권을 환불 받을 수 있나요?','한번 발매된 투표권은 취소나 환불되지 않습니다. 다만 아래와 같은 경우에는 무효처리 후 환불이 가능합니다.');
INSERT INTO bet_faq values('야구경기의 선발투수가 변경되었는데 환불 받을 수 있나요?','선발투수 변경은 경기무효사유가 되지 않습니다. ');
INSERT INTO bet_faq values('대상경기의 장소가 변경되었는데 환불 받을 수 있나요?','주최단체 사정에 의한 경기장소, 경기장소 특이사항의 변경은 경기무효사유가 되지 않습니다.');
INSERT INTO bet_faq values('구매한 영수증을 수정하거나 취소할 수 있나요?','발매기 또는 인터넷 발매사이트를 통해 발매된 투표권은 시스템 및 발매기 등 전산장비의 오류로 인하여 발생된 오류투표권을 제외하고 어떠한 경우라도 환불되지 않습니다.');
INSERT INTO bet_faq values('본인명의 휴대폰이 없어서 회원가입이 안돼요.','본인명의의 휴대폰이 없어 휴대폰 인증을 받을 수 없는 경우, 아이핀 인증을 통해서 회원 가입을 할 수 있습니다.');
INSERT INTO bet_faq values('회원가입 시 연령제한이 있나요?','[청소년보호법] 제2조 제1호에 따른 청소년을 제외한 대한민국 국민 누구나 가입할 수 있으며, NICE평가정보㈜를 통하여 휴대폰 또는 아이핀 인증 후 베트맨 회원으로 가입하시면 됩니다.');
INSERT INTO bet_faq values('베트맨에서 게임을 구매하려면 꼭 회원가입을 해야 하나요?','청소년의 사행심리 유발을 방지하고, 원활한 적중금 환급을 위해 반드시 회원가입 후 체육진흥투표권(토토/프로토)을 구매할 수 있습니다. 따라서, 휴대폰 또는 아이핀인증을 통한 회원가입이 반드시 필요합니다.');
INSERT INTO bet_faq values('회원가입은 어떻게 하나요?','베트맨 회원 가입은 휴대폰 또는 아이핀인증을 통해 가입이 가능합니다.');
INSERT INTO bet_faq values('적중금 환급 및 예치금 출금 계좌 등록방법을 알고싶어요.','적중금 환급 및 예치금 출금 계좌는 [마이페이지 > 개인정보]에서 언제든지 등록 및 변경이 가능합니다. ');
INSERT INTO bet_faq values('회원정보는 가입 후 변경 할 수 있나요?','아이디를 제외한 회원정보는 [마이페이지 > 개인정보]에서 언제든지 수정하실 수 있습니다. ');

SELECT * FROM bet_notice;
SELECT * FROM bet_faq;
SELECT * FROM bet_inquiry;
SELECT * FROM BOARD ;

-- 포인트 충전
CREATE TABLE Mypoint(
	idno number PRIMARY KEY,
	id varchar2(50),
	point NUMBER
);
INSERT INTO Mypoint values(1,'test123',50000);
SELECT * FROM mypoint;

-- 1:1 문의
DROP TABLE OneOneinq;

CREATE TABLE OneOneinq(
	 boardno NUMBER PRIMARY KEY,
	 name varchar2(20),
	 email varchar2(50),
	 phonenumber number,
	 title varchar2(100),
	 content varchar2(2000),
	 nowtime date
);
CREATE SEQUENCE OneOneinq_seq
	START WITH 1
	MINVALUE 1 
	MAXVALUE 77777
	INCREMENT BY 1;
INSERT INTO OneOneinq VALUES (1,'송우신','abc@naver.com',01012345678,'자바좋아용','너무좋은데 푸헤헿',sysdate);	 
SELECT * FROM OneOneinq;













