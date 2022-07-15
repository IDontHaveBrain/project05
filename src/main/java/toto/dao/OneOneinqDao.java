package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.OneOneinq;

@Repository
public interface OneOneinqDao {
	public List<OneOneinq> OneOneinqList(OneOneinq sch);
}