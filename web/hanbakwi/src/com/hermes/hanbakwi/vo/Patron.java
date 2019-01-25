package com.hermes.hanbakwi.vo;

import java.sql.Timestamp;

public class Patron {

	private int ptNo, uNo, fd;
	private String price, request;
	private Timestamp regdate;
	public int getPtNo() {
		return ptNo;
	}
	public void setPtNo(int ptNo) {
		this.ptNo = ptNo;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public int getFd() {
		return fd;
	}
	public void setFd(int fd) {
		this.fd = fd;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Patron(int ptNo, int uNo, int fd, String price, String request, Timestamp regdate) {
		super();
		this.ptNo = ptNo;
		this.uNo = uNo;
		this.fd = fd;
		this.price = price;
		this.request = request;
		this.regdate = regdate;
	} 
	
}
