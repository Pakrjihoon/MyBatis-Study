package vo;

import java.sql.Timestamp;

public class User {
	private int no;
	private String id, password, nickname;
	private Timestamp regdate;
	
	public User() {
		
	}
	public User(String id, String pwd) {
		this.id = id;
		this.password= pwd;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public Timestamp getregdate() {
		return regdate;
	}
	public void setregdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
}
