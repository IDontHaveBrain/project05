package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.TOTOLOGIN;
//toto.dao.LoginDao
@Repository
public interface LoginDao {
	public List<TOTOLOGIN> getLoginList(TOTOLOGIN sch);
	


}
