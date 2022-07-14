package toto.dao;

import java.util.List;

import toto.vo.Notice;

// toto.dao.NoticeDao
public interface NoticeDao {

	public List<Notice> NoticeList(Notice sch);
	public Notice getDetail(int no);
	
	
	

	
	public void readCountup(int no);
	public void insertNotice(Notice ins);
	public void updateNotice(Notice upt);
	public void deleteNotice(int no);
	public Notice getNoticeDetail(int no);
	
}
