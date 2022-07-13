package toto.vo;
// toto.vo.MyPage
import java.util.Date;

public class MyPage {
	private int idno;
	private String id;
	private int point;
	private Date birthdate;
	public MyPage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyPage(int idno, String id, int point, Date birthdate) {
		super();
		this.idno = idno;
		this.id = id;
		this.point = point;
		this.birthdate = birthdate;
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
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
}
