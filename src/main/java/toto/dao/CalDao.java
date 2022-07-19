package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Calendar;

	@Repository
	public interface CalDao {
		public List<Calendar> calList(Calendar sch);
		public void insertCal(Calendar ins);
		public int checkAdmin(String id);
		public Calendar getCalDetail(int no);
		public Calendar updateCal(Calendar upt) ;
		public void deleteCal(int no);
		public void readCountup(int no);
		
	}