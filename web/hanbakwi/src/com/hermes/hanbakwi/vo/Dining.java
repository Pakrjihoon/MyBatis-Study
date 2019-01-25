package com.hermes.hanbakwi.vo;

public class Dining {

	private int siteNo;
	private String open, close, off, dType,foodType;
	public int getSiteNo() {
		return siteNo;
	}
	public void setSiteNo(int siteNo) {
		this.siteNo = siteNo;
	}
	public String getOpen() {
		return open;
	}
	public void setOpen(String open) {
		this.open = open;
	}
	public String getClose() {
		return close;
	}
	public void setClose(String close) {
		this.close = close;
	}
	public String getOff() {
		return off;
	}
	public void setOff(String off) {
		this.off = off;
	}
	public String getdType() {
		return dType;
	}
	public void setdType(String dType) {
		this.dType = dType;
	}
	public String getFoodType() {
		return foodType;
	}
	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}
	public Dining(int siteNo, String open, String close, String off, String dType, String foodType) {
		super();
		this.siteNo = siteNo;
		this.open = open;
		this.close = close;
		this.off = off;
		this.dType = dType;
		this.foodType = foodType;
	}
	
}
