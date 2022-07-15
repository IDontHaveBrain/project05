package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.LoginDao;
import toto.vo.TOTOLOGIN;


@Service
public class LoginService {
	@Autowired(required=false) 
	private LoginDao dao;
	
	public List<TOTOLOGIN> getLoginList(TOTOLOGIN sch){
	
		return dao.getLoginList(sch);
		
	}
	
}
