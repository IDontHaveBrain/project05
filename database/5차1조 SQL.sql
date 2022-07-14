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
create table Account (
    idno number primary key,
    id varchar2(50) not null unique,
    pw varchar2(50) not null,
    point number,
    birthdate DATE
);
insert into Account values (1, 'asdasd123', '123123', 50000, to_date('19980101','YYYYMMDD'));
insert into Account values ((select NVL(max(idno),1)+1 from Account), 'asdasd111', '123456', 30000, to_date('19970505','YYYYMMDD'));
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
	
);

