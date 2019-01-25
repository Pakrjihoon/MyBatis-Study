package com.bjd.ims.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class Idol {
	public Idol() {
		
	}
	public int getIdolId() {
		return idolId;
	}
	public void setIdolId(int idolId) {
		this.idolId = idolId;
	}
	public int getGroupId() {
		return groupId;
	}
	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAgentName() {
		return agentName;
	}
	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	private int idolId, groupId;
	private double height, weight;
	private Date birthDate;
	private String name, agentName, gender, groupName;
	
	
	public String getRealGender() {
		return gender.equals("M") ? "남자" : "여자";
	}
	public String getFormatBirthDate() {
		SimpleDateFormat day = new SimpleDateFormat("YYYY-MM-dd");
		return day.format(birthDate);
	}
	
}
