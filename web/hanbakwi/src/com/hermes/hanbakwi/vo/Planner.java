package com.hermes.hanbakwi.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class Planner {
	private int pNo, uNo, rgNo, rgNo2, views;
	private String title, budget, person, reward, content, isComplete;
	private Date departureDate, returnDate, deadline; 
	private Timestamp regdate;
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
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
	public int getRgNo2() {
		return rgNo2;
	}
	public void setRgNo2(int rgNo2) {
		this.rgNo2 = rgNo2;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getReward() {
		return reward;
	}
	public void setReward(String reward) {
		this.reward = reward;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIsComplete() {
		return isComplete;
	}
	public void setIsComplete(String isComplete) {
		this.isComplete = isComplete;
	}
	public Date getDepartureDate() {
		return departureDate;
	}
	public void setDepartureDate(Date departureDate) {
		this.departureDate = departureDate;
	}
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
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
	public Planner(int pNo, int uNo, int rgNo, int rgNo2, int views, String title, String budget, String person,
			String reward, String content, String isComplete, Date departureDate, Date returnDate, Date deadline,
			Timestamp regdate) {
		super();
		this.pNo = pNo;
		this.uNo = uNo;
		this.rgNo = rgNo;
		this.rgNo2 = rgNo2;
		this.views = views;
		this.title = title;
		this.budget = budget;
		this.person = person;
		this.reward = reward;
		this.content = content;
		this.isComplete = isComplete;
		this.departureDate = departureDate;
		this.returnDate = returnDate;
		this.deadline = deadline;
		this.regdate = regdate;
	}

	
}
