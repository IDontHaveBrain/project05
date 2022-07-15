package toto.vo;

import java.util.Date;

public class Notice {

	private int no;
	private String division;
	private String title;
	private Date regdte;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int no, String division, String title, Date regdte) {
		super();
		this.no = no;
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