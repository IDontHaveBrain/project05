package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.OneOneinqDao;
import toto.vo.OneOneinq;

@Service
public class OneOneinqService {
	@Autowired(required = false)
	private OneOneinqDao dao;
	
	public List<OneOneinq> OneOneinqList(OneOneinq sch){
		
		return dao.OneOneinqList(sch);
	}
}