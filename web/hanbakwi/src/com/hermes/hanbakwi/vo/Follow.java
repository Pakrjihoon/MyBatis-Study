package com.hermes.hanbakwi.vo;

import java.sql.Timestamp;

public class Follow {
	private int fNo,uNo,uNo2;
	private Timestamp regdate;
	
	public Follow() {
		// TODO Auto-generated constructor stub
	}

	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public int getuNo2() {
		return uNo2;
	}

	public void setuNo2(int uNo2) {
		this.uNo2 = uNo2;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}	
}
