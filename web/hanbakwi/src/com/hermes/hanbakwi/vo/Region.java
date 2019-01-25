package com.hermes.hanbakwi.vo;

public class Region {
	private int rgNo, parent;
	private String name;
	private Double lat,lng;
	
	public Region() {
		
	}
	public int getRgNo() {
		return rgNo;
	}
	public void setRgNo(int rgNo) {
		this.rgNo = rgNo;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getLat() {
		return lat;
	}
	public void setLat(Double lat) {
		this.lat = lat;
	}
	public Double getLng() {
		return lng;
	}
	public void setLng(Double lng) {
		this.lng = lng;
	}
	
}
