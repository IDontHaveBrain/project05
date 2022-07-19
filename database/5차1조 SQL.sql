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
-- 홀짝게임 포인트충전용
UPDATE Account SET point = 0 WHERE idno=1;
--
drop table Account;
-- 계정
 create table totologin(
    idno number primary key,
    id varchar2(50) not null unique,
    pw varchar2(50) not null,
    point number,
    birthdate DATE
);
SELECT * FROM TOTOLOGIN;
INSERT INTO TOTOLOGIN values(3,'banana','abc123',7000,to_date('20001125','YYYYMMDD')); 

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
insert into Account values ((select NVL(max(idno),1)+1 from Account), 'asdasd111', '123456', 30000, to_date('19970505','YYYYMMDD'), 0);
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
	com varchar2(15),
	player varchar2(15),
	gameresult varchar2(15),
	prevpoint number,
	resultpoint number
);

CREATE SEQUENCE RPSgame_seq
	START WITH 1
	MINVALUE 1
	MAXVALUE 999999
	INCREMENT BY 1;

SELECT * FROM rpsgameresult;

-- notice
--SELECT 
SELECT * FROM BET_NOTICE;
SELECT * FROM BET_FAQ;
SELECT * FROM closing;
SELECT * FROM calendar;

--drop 여기부터 진행 전 테이블 있으면 삭제해야해요
DROP TABLE BET_NOTICE;
DROP TABLE closing;
DROP TABLE calendar;

--create
CREATE TABLE bet_notice(
bt_no NUMBER PRIMARY KEY,
bt_division varchar(100),
bt_title varchar(500),
bt_date varchar(30),
readcnt NUMBER);

CREATE TABLE bet_faq(
bt_question varchar(500),
bt_answer varchar(500));

CREATE TABLE closing(
NO NUMBER,
ctype varchar(20),
ctitle varchar(100),
cdate varchar(100),
readcnt NUMBER);

CREATE TABLE calendar(
NO NUMBER,
ctime varchar(50),
team varchar(100),
place varchar(50),
readcnt NUMBER);

--notice
INSERT INTO bet_notice values(40,'토토','[안내] 골프스페셜 21회차 발매개시 안내','2022.07.12',0);
INSERT INTO bet_notice values(39,'토토','[적중자 현황 안내] 축구토토 승무패 35회차 2등 적중자 관련','2022.07.10',0);
INSERT INTO bet_notice values(38,'토토','[안내] 야구토토 승1패 차회차 이월 규정 적용안내','2022.07.09',0);
INSERT INTO bet_notice values(37,'토토','[안내] NPB경기취소 안내_7월9일(토)','2022.07.09',0);
INSERT INTO bet_notice values(36,'프로토','[게임일정 안내] 프로토 기록식 29회차 대상경기 등록관련','2022.07.09',0);
INSERT INTO bet_notice values(35,'프로토','[게임일정 안내] 프로토 기록식 29회차 대상경기 등록관련','2022.07.09',0);
INSERT INTO bet_notice values(34,'프로토','[게임일정 안내] 프로토 승부식 56회차 대상경기 등록관련','2022.07.09',0);
INSERT INTO bet_notice values(33,'알림','[게임일정 안내] 7월 게임일정 등록 관련 안내','2022.07.08',0);
INSERT INTO bet_notice values(32,'토토','[적중자 현황 안내] 축구토토 승무패 34회차 1등 적중자 관련','2022.07.06',0);
INSERT INTO bet_notice values(31,'토토','[적중자 현황 안내] 야구토토 승1패 26회차 2등 적중자 관련','2022.07.06',0);
INSERT INTO bet_notice values(30,'프로토','[게임일정 안내] 프로토 승부식 55회차 대상경기 등록관련','2022.07.06',0);
INSERT INTO bet_notice values(29,'프로토','프로토_기록식_2022년도_28회차_A게임_환불적중결과','2022.07.05',0);
INSERT INTO bet_notice values(28,'토토','[안내]NPB, KBO경기취소 안내_7월5일(화)','2022.07.05',0);
INSERT INTO bet_notice values(27,'토토','[안내] 골프스페셜 20회차 발매개시 안내','2022.07.05',0);
INSERT INTO bet_notice values(26,'프로토','[안내] 7월 6일 J리그 (가와사키프론탈레:사간도스) 대상경기 연기에 따른 안내','2022.07.05',0);
INSERT INTO bet_notice values(25,'프로토','[안내] FIBA남자농구월드컵예선 세르비아_남자 : 벨기에_남자 경기 취소','2022.07.04',0);
INSERT INTO bet_notice values(24,'토토','[적중자 현황 안내] 축구토토 승무패 33회차 1등 적중자 관련','2022.07.03',0);
INSERT INTO bet_notice values(23,'토토','[적중자 현황 안내] 야구토토 승1패 25회차 3등 적중자 관련','2022.07.02',0);
INSERT INTO bet_notice values(22,'프로토','[게임일정 안내] 프로토 기록식 28회차 대상경기 등록관련','2022.07.02',0);
INSERT INTO bet_notice values(21,'프로토','[게임일정 안내] 프로토 승부식 54회차 대상경기 등록관련','2022.07.02',0);
INSERT INTO bet_notice values(20,'토토','[안내] 골프스페셜 19회차 5, 7명 유형 이월금 관련 안내','2022.07.01',0);
INSERT INTO bet_notice values(19,'토토','[안내]KBO경기취소 안내_7월1일(금)','2022.07.01',0);
INSERT INTO bet_notice values(18,'알림','[게임일정 안내] 7월 게임일정 등록 관련 안내','2022.07.01',0);
INSERT INTO bet_notice values(17,'알림','[안내]KBO경기취소 안내_6월30일(목)','2022.06.30',0);
INSERT INTO bet_notice values(16,'프로토','프로토_기록식_2022년도_27회차_B게임_환불적중결과','2022.03.29',0);
INSERT INTO bet_notice values(15,'알림','[안내]KBO경기 취소 안내_6월29일(수)','2022.06.29',0);
INSERT INTO bet_notice values(14,'토토','[적중자 현황 안내] 야구토토 승1패 24회차 2등 적중자 관련','2022.06.29',0);
INSERT INTO bet_notice values(13,'프로토','[게임일정 안내] 프로토 승부식 53회차 대상경기 등록관련','2022.06.29',0);
INSERT INTO bet_notice values(12,'프로토','프로토_기록식_2022년도_27회차_A게임_환불적중결과','2022.06.28',0);
INSERT INTO bet_notice values(11,'토토','[적중자 현황 안내] 야구토토 승1패 23회차 3등 적중자 관련','2022.06.25',0);
INSERT INTO bet_notice values(10,'프로토','[게임일정 안내] 프로토 기록식 27회차 대상경기 등록관련','2022.06.25',0);
INSERT INTO bet_notice values(9,'프로토','[게임일정 안내] 프로토 승부식 52회차 대상경기 등록관련','2022.06.25',0);
INSERT INTO bet_notice values(8,'알림','[게임일정 안내]6월 게임일정 등록 관련 안내','2022.06.24',0);
INSERT INTO bet_notice values(7,'알림','베트맨 개인정보처리방침 개정에 따른 사전 안내','2022.06.24',0);
INSERT INTO bet_notice values(6,'알림','[안내]KBO경기 취소 안내_6월23일(목)','2022.06.06.23',0);
INSERT INTO bet_notice values(5,'알림','[안내]가상계좌 입금 지연 안내','2022.06.22',0);
INSERT INTO bet_notice values(4,'토토','[적중자 현황 안내] 야구토토 승1패 22회차 2등 적중자 관련','2022.06.22',0);
INSERT INTO bet_notice values(3,'프로토','[게임일정 안내] 프로토 승부식 51회차 대상경기 등록관련','2022.06.22',0);
INSERT INTO bet_notice values(2,'토토','[안내] 골프스페셜 18회차 발매개시 안내','2022.06.21',0);
INSERT INTO bet_notice values(1,'토토','[적중자 현황 안내] 축구토토 승무패 31회차 1등 적중자 관련','2022.06.19',0);

INSERT INTO closing values(19,'축구','축구토토 스페셜 트리플 27회차','22.07.16(토) 18:50',0);
INSERT INTO closing values(18,'축구','축구토토 스페셜 더블 27회차','22.07.16(토) 18:50',0);
INSERT INTO closing values(17,'축구','축구토토 승무패 36회차','22.07.16(토) 17:50',0);
INSERT INTO closing values(16,'야구','야구토토 승1패 29회차','22.07.15(금) 21:50',0);
INSERT INTO closing values(15,'프로토','프로토 승부식 56회차','22.07.15(금) 12:50',0);
INSERT INTO closing values(14,'야구','야구토토 스페셜 트리플 74회차','22.07.14(목) 18:20',0);
INSERT INTO closing values(13,'야구','야구토토 스페셜 더블 74회차','22.07.14(목) 18:20',0);
INSERT INTO closing values(12,'골프','골프토토 스페셜 7명 21회차','22.07.14(목) 13:50',0);
INSERT INTO closing values(11,'골프','골프토토 스페셜 5명 21회차','22.07.13(수) 17:00',0);
INSERT INTO closing values(10,'야구','야구토토 스페셜 트리플 73회차','22.07.13(수) 17:00',0);
INSERT INTO closing values(9,'야구','야구토토 스페셜 더블 73회차','22.07.12(화) 18:20',0);
INSERT INTO closing values(8,'야구','야구토토 스페셜 더블 72회차','22.07.12(화) 18:20',0);
INSERT INTO closing values(7,'야구','야구토토 스페셜 트리플 72회차','22.07.12(화) 18:20',0);
INSERT INTO closing values(6,'프로토','프로토 승부식 55회차','22.07.10(일) 21:50',0);
INSERT INTO closing values(5,'프로토','프로토 기록식 28회차','22.07.10(일) 19:20',0);
INSERT INTO closing values(4,'축구','축구토토 스페셜 더블 26회차','22.07.10(일) 18:50',0);
INSERT INTO closing values(3,'축구','축구토토 스페셜 트리플 26회차','22.07.10(일) 18:50',0);
INSERT INTO closing values(2,'축구','축구토토 승무패 35회차','22.07.09(토) 18:50',0);
INSERT INTO closing values(1,'야구','야구토토 스페셜 더블 71회차','22.07.09(토) 17:50',0);

INSERT INTO calendar values(18,'22.07.23 (토) 18:00','서울이랜 vs 경남FC','목동운동장',0);
INSERT INTO calendar values(17,'22.07.23 (토) 20:00','안산그리 vs 김포FS','안산와스타디움',0);
INSERT INTO calendar values(16,'22.07.23 (토) 20:00','부천FC vs 충남아산','부천종합운동장',0);
INSERT INTO calendar values(15,'22.07.24 (일) 08:00','뉴욕시티 vs 인터마이','양키스타디움',0);
INSERT INTO calendar values(14,'22.07.24 (일) 08:30','FC신시내 vs 내슈빌SC','TQL스타디움',0);
INSERT INTO calendar values(13,'22.07.23 (토) 18:00','한화 vs KT','한화생명이글스파크',0);
INSERT INTO calendar values(12,'22.07.23 (토) 18:00','롯데 vs KIA','부산사직운동장',0);
INSERT INTO calendar values(11,'22.07.23 (토) 18:00','NC vs LG','창원NC파크',0);
INSERT INTO calendar values(10,'22.07.22 (금) 18:30','한화 vs KT','한화생명이글스파크',0);
INSERT INTO calendar values(9,'22.07.22 (금) 18:30','롯데 vs KIA','부산사직운동장',0);
INSERT INTO calendar values(8,'22.07.22 (금) 18:30','NC vs LG','창원NC파크',0);
INSERT INTO calendar values(7,'22.07.14 (목) 18:30','LG vs KIA','서울잠실야구장',0);
INSERT INTO calendar values(6,'22.07.14 (목) 18:30','SSG vs 키움','인천SSG랜더스필드',0);
INSERT INTO calendar values(5,'22.07.14 (목) 18:30','KT vs 삼성','수원케이티위즈파크',0);
INSERT INTO calendar values(4,'22.07.14(목) ~ 22.07.14(목)','PGA 디 오픈 챔피언십 ','파이프(스코틀랜드)',0);
INSERT INTO calendar values(3,'22.07.10 (일) 19:00','수원FC vs FC서울','수원종합운동장',0);
INSERT INTO calendar values(2,'22.07.10 (일) 19:00','충남아산 vs 전남드래','이순신종합운동장',0);
INSERT INTO calendar values(1,'22.07.08(금) ~ 22.07.08(금)','KLPGA 대보 하우스디 오픈','서원밸리CC',0);

		--게시물 추가 번호
		create sequence notice_seq
		start with 41
		minvalue 1
		maxvalue 999
		increment by 1;
	
		create sequence closing_seq
		start with 20
		minvalue 1
		maxvalue 999
		increment by 1;
	
		create sequence calendar_seq
		start with 19
		minvalue 1
		maxvalue 999
		increment by 1;

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
	 name varchar2(100),
	 email varchar2(100),
	 phonenumber varchar2(50),
	 title varchar2(100),
	 content varchar2(2000),
	 nowtime DATE ,
	 readcnt number
);

DROP SEQUENCE OneOneinq_seq;
CREATE SEQUENCE OneOneinq_seq
	START WITH 1
	MINVALUE 1 
	MAXVALUE 77777
	INCREMENT BY 1;
INSERT INTO OneOneinq VALUES (oneoneinq_seq.nextval,'홍길동','abc@naver.com','010-1234-5678','충전을 했는데 돈이 안들어왔습니다.','내용1',sysdate,0);	 
INSERT INTO OneOneinq VALUES (oneoneinq_seq.nextval,'마길동','def@daum.net','010-9876-5432','회원탈퇴는 어떻게하나요?','내용2',sysdate,0);	 
INSERT INTO OneOneinq VALUES (oneoneinq_seq.nextval,'이길동','ghi@naver.com','010-2314-8444','게임진행 방법을 알고싶습니다.','내용3',sysdate,0);	 
INSERT INTO OneOneinq VALUES (oneoneinq_seq.nextval,'정길동','jkl@naver.com','010-5644-1877','밤에도 게임을 할 수 있나요?.','내용4',sysdate,0);	 
SELECT * FROM OneOneinq;

-- 승부예측 경기정보
CREATE TABLE soccer(
	snum char(5) PRIMARY KEY,
	gamedate date,
	place varchar2(50),
	hteam varchar2(50),
	vteam varchar2(50),
	gresult varchar2(50)
);
INSERT INTO soccer(snum, gamedate, place, hteam, vteam) values('0001','2022-07-16','가시마사커스타디움','가시마','비셀고베');
INSERT INTO soccer(snum, gamedate, place, hteam, vteam) values('0002','2022-07-16','IAI스타디움니혼다이라','시미즈','우라와');
INSERT INTO soccer(snum, gamedate, place, hteam, vteam) values('0003','2022-07-16','전주월드컵경기장','전북현대','성남FC');
INSERT INTO soccer(snum, gamedate, place, hteam, vteam) values('0004','2022-07-16','울산문수축구경기장','울산현대','수원삼성');
INSERT INTO soccer(snum, gamedate, place, hteam, vteam) values('0005','2022-07-16','김천종합운동장','김천상무','인천유나');
INSERT INTO soccer(snum, gamedate, place, hteam, vteam) values('0006','2022-07-16','도요타스타디움','나고야','가와사키');

		
)
-- 승부예측 구매
CREATE TABLE forecast(
	gnum char(5) PRIMARY KEY,
	fsnum01 char(5) REFERENCES soccer(snum),
	fsnum02 char(5) REFERENCES soccer(snum),
	fsnum03 char(5) REFERENCES soccer(snum),
	fsnum04 char(5) REFERENCES soccer(snum),
	fsnum05 char(5) REFERENCES soccer(snum),
	fsnum06 char(5) REFERENCES soccer(snum),
	id varchar2(50) REFERENCES Account(id)
);
INSERT INTO forecast values('1001','0001','0002','0003','0004','0005','0006','asdasd123'); 

SELECT * FROM soccer;
SELECT * FROM forecast;

CREATE TABLE closing(
ctype varchar(20),
ctitle varchar(100),
cdate varchar(100));

INSERT INTO closing values('축구','축구토토 스페셜 트리플 27회차','22.07.16(토) 18:50');
INSERT INTO closing values('축구','축구토토 스페셜 더블 27회차','22.07.16(토) 18:50');
INSERT INTO closing values('축구','축구토토 승무패 36회차','22.07.16(토) 17:50');
INSERT INTO closing values('야구','야구토토 승1패 29회차','22.07.15(금) 21:50');
INSERT INTO closing values('프로토','프로토 승부식 56회차','22.07.15(금) 12:50');
INSERT INTO closing values('야구','야구토토 스페셜 트리플 74회차','22.07.14(목) 18:20');
INSERT INTO closing values('야구','야구토토 스페셜 더블 74회차','22.07.14(목) 18:20');
INSERT INTO closing values('골프','골프토토 스페셜 7명 21회차','22.07.14(목) 13:50');
INSERT INTO closing values('골프','골프토토 스페셜 5명 21회차','22.07.13(수) 17:00');
INSERT INTO closing values('야구','야구토토 스페셜 트리플 73회차','22.07.13(수) 17:00');
INSERT INTO closing values('야구','야구토토 스페셜 더블 73회차','22.07.12(화) 18:20');
INSERT INTO closing values('야구','야구토토 스페셜 더블 72회차','22.07.12(화) 18:20');
INSERT INTO closing values('야구','야구토토 스페셜 트리플 72회차','22.07.12(화) 18:20');
INSERT INTO closing values('프로토','프로토 승부식 55회차','22.07.10(일) 21:50');
INSERT INTO closing values('프로토','프로토 기록식 28회차','22.07.10(일) 19:20');
INSERT INTO closing values('축구','축구토토 스페셜 더블 26회차','22.07.10(일) 18:50');
INSERT INTO closing values('축구','축구토토 스페셜 트리플 26회차','22.07.10(일) 18:50');
INSERT INTO closing values('축구','축구토토 승무패 35회차','22.07.09(토) 18:50');
INSERT INTO closing values('야구','야구토토 스페셜 더블 71회차','22.07.09(토) 17:50');

CREATE TABLE calendar(
ctime varchar(50),
team varchar(100),
place varchar(50));

INSERT INTO calendar values('22.07.23 (토) 18:00','서울이랜 vs 경남FC','목동운동장');
INSERT INTO calendar values('22.07.23 (토) 20:00','안산그리 vs 김포FS','안산와스타디움');
INSERT INTO calendar values('22.07.23 (토) 20:00','부천FC vs 충남아산','부천종합운동장');
INSERT INTO calendar values('22.07.24 (일) 08:00','뉴욕시티 vs 인터마이','양키스타디움');
INSERT INTO calendar values('22.07.24 (일) 08:30','FC신시내 vs 내슈빌SC','TQL스타디움');
INSERT INTO calendar values('22.07.23 (토) 18:00','한화 vs KT','한화생명이글스파크');
INSERT INTO calendar values('22.07.23 (토) 18:00','롯데 vs KIA','부산사직운동장');
INSERT INTO calendar values('22.07.23 (토) 18:00','NC vs LG','창원NC파크');
INSERT INTO calendar values('22.07.22 (금) 18:30','한화 vs KT','한화생명이글스파크');
INSERT INTO calendar values('22.07.22 (금) 18:30','롯데 vs KIA','부산사직운동장');
INSERT INTO calendar values('22.07.22 (금) 18:30','NC vs LG','창원NC파크');
INSERT INTO calendar values('22.07.14 (목) 18:30','LG vs KIA','서울잠실야구장');
INSERT INTO calendar values('22.07.14 (목) 18:30','SSG vs 키움','인천SSG랜더스필드');
INSERT INTO calendar values('22.07.14 (목) 18:30','KT vs 삼성','수원케이티위즈파크');
INSERT INTO calendar values('22.07.14(목) ~ 22.07.14(목)','PGA 디 오픈 챔피언십 ','파이프(스코틀랜드)');
INSERT INTO calendar values('22.07.10 (일) 19:00','수원FC vs FC서울','수원종합운동장');
INSERT INTO calendar values('22.07.10 (일) 19:00','충남아산 vs 전남드래','이순신종합운동장');
INSERT INTO calendar values('22.07.08(금) ~ 22.07.08(금)','KLPGA 대보 하우스디 오픈','서원밸리CC');

SELECT * FROM Account;

