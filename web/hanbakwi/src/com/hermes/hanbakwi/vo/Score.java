package com.hermes.hanbakwi.vo;

public class Score {
		
	private int scNo, uNo, uNo2, no;
	private String rating, type;
	public int getScNo() {
		return scNo;
	}
	public void setScNo(int scNo) {
		this.scNo = scNo;
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
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Score(int scNo, int uNo, int uNo2, int no, String rating, String type) {
		super();
		this.scNo = scNo;
		this.uNo = uNo;
		this.uNo2 = uNo2;
		this.no = no;
		this.rating = rating;
		this.type = type;
	} 
	
	
}
