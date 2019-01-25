package com.hermes.hanbakwi.vo;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

public class Funding {

	
	//private 
	private int fdNo,uNo,travelDays;
	private String title, thumnail,intro,ammount;
	private BigDecimal content;
	public void setContent(BigDecimal content) {
		this.content = content;
	}
	private Date deadline;
	private Timestamp regdate;
	
	
	//기본 생성자 생성 
	public int getFdNo() {
		return fdNo;
	}
	public void setFdNo(int fdNo) {
		this.fdNo = fdNo;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public int getTravelDays() {
		return travelDays;
	}
	public void setTravelDays(int travelDays) {
		this.travelDays = travelDays;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getThumnail() {
		return thumnail;
	}
	public void setThumnail(String thumnail) {
		this.thumnail = thumnail;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getAmmount() {
		return ammount;
	}
	public void setAmmount(String ammount) {
		this.ammount = ammount;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Funding(int fdNo, int uNo, int travelDays, String title, String thumnail, String intro, String ammount,
			BigDecimal content, Date deadline, Timestamp regdate) {
		super();
		this.fdNo = fdNo;
		this.uNo = uNo;
		this.travelDays = travelDays;
		this.title = title;
		this.thumnail = thumnail;
		this.intro = intro;
		this.ammount = ammount;
		this.content = content;
		this.deadline = deadline;
		this.regdate = regdate;
	}
	
	
}
