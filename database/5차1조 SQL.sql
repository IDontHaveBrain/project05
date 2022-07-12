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
