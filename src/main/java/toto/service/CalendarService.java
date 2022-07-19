package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.CalDao;
import toto.vo.Calendar;


	@Service
	public class CalendarService {
		@Autowired(required=false)
		private CalDao dao;
		
		public List<Calendar> calList(Calendar sch){
			return dao.calList(sch);
		}
		
		public void insertCal(Calendar ins) {
			dao.insertCal(ins);
		}
		
		
		public int checkAdmin(String id) {
			return dao.checkAdmin(id);
		}

		public Calendar getCalDetail(int no) {
			// 조회 카운트업
			dao.readCountup(no);

			return dao.getCalDetail(no);
		}

		public Calendar updateCal(Calendar upt) {
			dao.updateCal(upt);
			return dao.getCalDetail(upt.getNo());
		}

		public void deleteCal(int no) {
			dao.deleteCal(no);
		}

}
