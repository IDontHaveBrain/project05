package toto.vo;

import java.util.Date;

// toto.vo.OneOneinq
public class OneOneinq {
	private int boardno;
	private String name;
	private String email;
	private int phonenumber;
	private String title;
	private String content;
	private Date nowtime;
	public OneOneinq() {
		// TODO Auto-generated constructor stub
	}
	public OneOneinq(int boardno, String name, String email, int phonenumber, String title, String content,
			Date nowtime) {
		this.boardno = boardno;
		this.name = name;
		this.email = email;
		this.phonenumber = phonenumber;
		this.title = title;
		this.content = content;
		this.nowtime = nowtime;
	}
	public int getBoardno() {
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(int phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getNowtime() {
		return nowtime;
	}
	public void setNowtime(Date nowtime) {
		this.nowtime = nowtime;
	}

	
}
