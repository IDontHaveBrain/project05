package toto.vo;

import java.util.Date;

public class Notice {

	private int no;
	private int refno;
	private String division;
	private String title;
	private Date regdte;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int no, int refno, String division, String title, Date regdte) {
		super();
		this.no = no;
		this.refno = refno;
		this.division = division;
		this.title = title;
		this.regdte = regdte;
	}
	
	public Notice(String division, String title, Date regdte) {
		super();
		this.division = division;
		this.title = title;
		this.regdte = regdte;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRefno() {
		return refno;
	}
	public void setRefno(int refno) {
		this.refno = refno;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegdte() {
		return regdte;
	}
	public void setRegdte(Date regdte) {
		this.regdte = regdte;
	}
	
	
	
}
