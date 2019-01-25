package com.hermes.hanbakwi.vo;

public class Character {

	
   private int crNo;
	private String name;
	public int getCrNo() {
		return crNo;
	}
	public void setCrNo(int crNo) {
		this.crNo = crNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Character(int crNo, String name) {
		super();
		this.crNo = crNo;
		this.name = name;
	}
	
	
}
