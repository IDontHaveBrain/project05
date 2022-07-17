package toto.dao;

import org.springframework.stereotype.Repository;

import toto.vo.Soccer;

@Repository
public interface SoccerDao {
	
	public void updateSoccer(Soccer upt);
	
}
