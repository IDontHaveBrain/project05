package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.CloDao;
import toto.vo.Closing;

	@Service
	public class ClosingService {
		@Autowired(required=false)
		private CloDao dao;
		
		public List<Closing> cloList(Closing sch){
			return dao.cloList(sch);
		}
		
		public void insertClo(Closing ins) {
			dao.insertClo(ins);
		}
		
		
		public int checkAdmin(String id) {
			return dao.checkAdmin(id);
		}

		public Closing getCloDetail(int no) {
			// 조회 카운트업
			dao.readCountup(no);

			return dao.getCloDetail(no);
		}

		public Closing updateClo(Closing upt) {
			dao.updateClo(upt);
			return dao.getCloDetail(upt.getNo());
		}

		public void deleteClo(int no) {
			dao.deleteClo(no);
		}

}
