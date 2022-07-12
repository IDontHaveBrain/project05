package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.MyPageDao;
import toto.vo.MyPage;

@Service
public class MyPageService {
	@Autowired(required=false)
	private MyPageDao dao;
	public List<MyPage> updatePoint(int point){
		return dao.updatePoint(point);	
	}
}
