package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Totologin2;
//toto.dao.LoginDao
@Repository
public interface LoginDao {
	public List<Totologin2> getLoginList(Totologin2 sch);
	public void totoInsert(Totologin2 ins);



}
