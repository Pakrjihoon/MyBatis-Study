package com.hermes.hanbakwi.vo;


public class Activity {
	private int rNo, uNo, rgNo;
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Activity() {
		
	}
	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public int getRgNo() {
		return rgNo;
	}

	public void setRgNo(int rgNo) {
		this.rgNo = rgNo;
	}
	
}
