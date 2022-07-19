package toto.vo;

public class Calendar {
	private int no;
	private String ctime;
	private String team;
	private String place;
	private int readcnt;
	public Calendar() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Calendar(int no, String ctime, String team, String place, int readcnt) {
		super();
		this.no = no;
		this.ctime = ctime;
		this.team = team;
		this.place = place;
		this.readcnt = readcnt;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	
	
	
	
	
	
	
	

}


