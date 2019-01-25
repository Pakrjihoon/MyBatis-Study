package com.hermes.hanbakwi.vo;

import java.sql.Date;

public class JournalList {
	private int jlNo,jNo,siteNo;
	private String content;
	private Date date;
	
	public JournalList() {
		// TODO Auto-generated constructor stub
	}

	public int getJlNo() {
		return jlNo;
	}

	public void setJlNo(int jlNo) {
		this.jlNo = jlNo;
	}

	public int getjNo() {
		return jNo;
	}

	public void setjNo(int jNo) {
		this.jNo = jNo;
	}

	public int getSiteNo() {
		return siteNo;
	}

	public void setSiteNo(int siteNo) {
		this.siteNo = siteNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
}
