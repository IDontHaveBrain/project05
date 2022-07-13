package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.MyPage;

@Repository
public interface MyPageDao {
	public List<MyPage> updatePoint(int point);
}
