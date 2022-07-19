package toto.vo;


public class Closing {
	private int no;
	private String ctype;
	private String ctitle;
	private String cdate;
	private int readcnt;
	public Closing() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Closing(int no, String ctype, String ctitle, String cdate, int readcnt) {
		super();
		this.no = no;
		this.ctype = ctype;
		this.ctitle = ctitle;
		this.cdate = cdate;
		this.readcnt = readcnt;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	
	
}