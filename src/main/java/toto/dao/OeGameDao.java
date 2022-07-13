package toto.dao;

import org.springframework.stereotype.Repository;
import toto.vo.Account;
import toto.vo.OeGameResult;

import java.util.Map;

@Repository
public interface OeGameDao {
    public int getAccountIdPoint(String id);
    public void updatePoint(Map<String, Object> upd);
    public void insertOeResult(OeGameResult rst);
}
