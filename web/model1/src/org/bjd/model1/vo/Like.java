package org.bjd.model1.vo;

import java.sql.Timestamp;

public class Like {
	public static final String BOARD = "B";
	public static final String REPLY = "R";
	private int no, memberNo, typeNo;
	private String type;	// board B, reply R
	private Timestamp regDate;
	 
	public Like() {
		 
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getTypeNo() {
		return typeNo;
	}
	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
}
