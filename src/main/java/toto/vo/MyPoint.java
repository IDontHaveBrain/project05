package toto.vo;

public class MyPoint {
	private int idno;
	private String id;
	private int point;
	public MyPoint() {
		// TODO Auto-generated constructor stub
	}
	public MyPoint(int idno, String id, int point) {
		this.idno = idno;
		this.id = id;
		this.point = point;
	}
	public int getIdno() {
		return idno;
	}
	public void setIdno(int idno) {
		this.idno = idno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}
