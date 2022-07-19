package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Closing;

@Repository
public interface CloDao {
	public List<Closing> cloList(Closing sch);
	
	public void insertClo(Closing ins);
	public int checkAdmin(String id);
	public Closing getCloDetail(int no);
	public Closing updateClo(Closing upt);
	public void deleteClo(int no);

	public void readCountup(int no);
}
