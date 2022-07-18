package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.LoginDao;
import toto.vo.Totologin2;


@Service
public class LoginService {
	@Autowired(required=false) 
	private LoginDao dao;
	public List<Totologin2> getLoginList(Totologin2 sch){
	
		return dao.getLoginList(sch);
		
	}
	
	public void totoInsert(Totologin2 ins) {
		dao.totoInsert(ins);
		
	}
	
	
	
	
	
	
}
