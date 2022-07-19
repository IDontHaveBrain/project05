package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.NoticeDao;
import toto.vo.Notice;


@Service
public class NoticeService {
	@Autowired(required = false)
	private NoticeDao dao;
	
	public List<Notice> noticeList(Notice sch) {
		return dao.noticeList(sch);
	}

	public void insertNotice(Notice ins) {
		dao.insertNotice(ins);
	}
	
	
	public int checkAdmin(String id) {
		return dao.checkAdmin(id);
	}

	public Notice getNoticeDetail(int no) {
		// 조회 카운트업
		dao.readCountup(no);

		return dao.getNoticeDetail(no);
	}

	public Notice updateNotice(Notice upt) {
		dao.updateNotice(upt);
		return dao.getNoticeDetail(upt.getNo());
	}

	public void deleteNotice(int no) {
		dao.deleteNotice(no);
	}


	
	
}
