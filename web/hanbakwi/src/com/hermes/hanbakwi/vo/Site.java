package com.hermes.hanbakwi.vo;

import java.sql.Timestamp;

public class Site {
	
	private int siteNo, uNo,rgNo;
	private String name, address, tel, intro, type, isEnrolled;
	private Timestamp regdate;
	public int getSiteNo() {
		return siteNo;
	}
	public void setSiteNo(int siteNo) {
		this.siteNo = siteNo;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getIsEnrolled() {
		return isEnrolled;
	}
	public void setIsEnrolled(String isEnrolled) {
		this.isEnrolled = isEnrolled;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Site(int siteNo, int uNo, int rgNo, String name, String address, String tel, String intro, String type,
			String isEnrolled, Timestamp regdate) {
		super();
		this.siteNo = siteNo;
		this.uNo = uNo;
		this.rgNo = rgNo;
		this.name = name;
		this.address = address;
		this.tel = tel;
		this.intro = intro;
		this.type = type;
		this.isEnrolled = isEnrolled;
		this.regdate = regdate;
	}
	
	
}
